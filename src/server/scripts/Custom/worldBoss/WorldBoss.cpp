#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "Spell.h"
#include "SpellAuraEffects.h"
#include "PassiveAI.h"
#include <boost/date_time/posix_time/posix_time.hpp>
#include <boost/thread/thread.hpp> 
#include "Group.h"
#include "Language.h"
#include "ObjectMgr.h"
#include "GroupMgr.h"


using namespace std;


enum Events
{
	// Lord Jaraxxus
	EVENT_FEL_FIREBALL = 1,
	EVENT_FEL_LIGHTNING = 2,
	EVENT_INCINERATE_FLESH = 3,
	EVENT_NETHER_POWER = 4,
	EVENT_LEGION_FLAME = 5,
	EVENT_SUMMONO_NETHER_PORTAL = 6,
	EVENT_SUMMON_INFERNAL_ERUPTION = 7,

	// Mistress of Pain
	EVENT_SHIVAN_SLASH = 8,
	EVENT_SPINNING_STRIKE = 9,
	EVENT_MISTRESS_KISS = 10,
	EVENT_SUMMON_SHAMBLING_HORROR = 11,
	EVENT_PANIC = 12,
	EVENT_FRENZY = 13,
	EVENT_VENT = 14,
	EVENT_WARN_BONE_STORM = 15,
	EVENT_BONE_STORM_BEGIN = 14,
	EVENT_GROUP_SPECIAL = 1,
	EVENT_CLONE_PLAYER = 16,
	EVENT_DEDO_MUERTE = 17
};

enum Summons
{
	NPC_LEGION_FLAME = 34784,
	NPC_INFERNAL_VOLCANO = 34813,
	NPC_FEL_INFERNAL = 34815, // immune to all CC on Heroic (stuns, banish, interrupt, etc)
	NPC_NETHER_PORTAL = 34825,
	NPC_MISTRESS_OF_PAIN = 34826
};

enum npc {
	NPC_TWISTED_VISAGE = 30625
};

enum BossSpells
{
	SPELL_SHROUD_OF_SORROW = 70986,
	SPELL_LEGION_FLAME = 66197, // player should run away from raid because he triggers Legion Flame
	SPELL_LEGION_FLAME_EFFECT = 66201, // used by trigger npc
	SPELL_NETHER_POWER = 66228, // +20% of spell damage per stack, stackable up to 5/10 times, must be dispelled/stealed
	SPELL_FEL_LIGHTING = 66528, // jumps to nearby targets
	SPELL_FEL_FIREBALL = 66532, // does heavy damage to the tank, interruptable
	SPELL_INCINERATE_FLESH = 66237, // target must be healed or will trigger Burning Inferno
	SPELL_BURNING_INFERNO = 66242, // triggered by Incinerate Flesh
	SPELL_INFERNAL_ERUPTION = 66258, // summons Infernal Volcano
	SPELL_INFERNAL_ERUPTION_EFFECT = 66252, // summons Felflame Infernal (3 at Normal and inifinity at Heroic)
	SPELL_BERSERK = 64238, // unused															   // Mistress of Pain spells
	SPELL_SHIVAN_SLASH = 67098,
	SPELL_SPINNING_STRIKE = 66283,
	SPELL_MISTRESS_KISS = 66336,
	SPELL_FEL_INFERNO = 67047,
	SPELL_FEL_STREAK = 66494,
	SPELL_LORD_HITTIN = 66326,   // special effect preventing more specific spells be cast on the same player within 10 seconds
	SPELL_MISTRESS_KISS_DAMAGE_SILENCE = 66359,
	SPELL_INSANITY = 57496, //Dummy
	INSANITY_VISUAL = 57561,
	SPELL_INSANITY_TARGET = 57508,
	SPELL_MIND_FLAY = 57941,
	SPELL_SHADOW_BOLT_VOLLEY = 57942,
	SPELL_SHIVER = 57949,
	SPELL_CLONE_PLAYER = 57507, //cast on player during insanity
	SPELL_INSANITY_PHASING_1 = 57508,
	SPELL_INSANITY_PHASING_2 = 57509,
	SPELL_INSANITY_PHASING_3 = 57510,
	SPELL_INSANITY_PHASING_4 = 57511,
	SPELL_INSANITY_PHASING_5 = 57512,
	SPELL_DEDO_MUERTE = 31984
};


enum Yells
{

	SAY_INTRO = 0,
	SAY_AGGRO = 1,
	EMOTE_LEGION_FLAME = 2,
	EMOTE_NETHER_PORTAL = 3,
	SAY_MISTRESS_OF_PAIN = 4,
	EMOTE_INCINERATE = 5,
	SAY_INCINERATE = 6,
	EMOTE_INFERNAL_ERUPTION = 7,
	SAY_INFERNAL_ERUPTION = 8,
	SAY_KILL_PLAYER = 9,
	SAY_DEATH = 10,
	SAY_BERSERK = 11
};


enum Spells
{
	SPELL_WILFRED_PORTAL = 68424,
	SPELL_JARAXXUS_CHAINS = 67924,
	SPELL_CORPSE_TELEPORT = 69016,
	SPELL_DESTROY_FLOOR_KNOCKUP = 68193,
	SPELL_NECROTIC_PLAGUE = 70337,
	//SPELL_SUMMON_SHAMBLING_HORROR = 70372,
	SPELL_PANIC = 19408,
	SPELL_FRENZY = 19451,
	SPELL_FLAME_VENTS = 62396,

	// Lord Marrowgar
	SPELL_BONE_SLICE = 69055,
	SPELL_BONE_STORM = 69076,


};

bool _enraged;


enum DataTypes
{
	BOOS_ZEROS = 1
};

enum Texts { EMOTE_FRENZY = 0 };




class boss_zeros : public CreatureScript
{
public:
	boss_zeros() : CreatureScript("boss_zeros") { }

	struct boss_zerosAI : public WorldBossAI
	{

		boss_zerosAI(Creature* creature) : WorldBossAI(creature), Summons(me)
		{
			_enraged = false;

		}


		void Reset() override
		{
			me->SetPhaseMask((1 | 16 | 32 | 64 | 128 | 256), true);

			ResetPlayersPhaseMask();

			// Cleanup
			Summons.DespawnAll();
			me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
			me->SetControlled(false, UNIT_STATE_STUNNED);
			_Reset();
		}

		void EnterCombat(Unit* /*who*/) override
		{
			if (me->GetMapId() == 571 && me->GetAreaId() == 4613) {
				DoCast(me, SPELL_SHROUD_OF_SORROW, true);
				DoCast(me,27249, true);
			}
			
			events.ScheduleEvent(EVENT_SUMMON_SHAMBLING_HORROR, 10 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_FEL_FIREBALL, 5 * IN_MILLISECONDS); //5 segundo
			events.ScheduleEvent(EVENT_FEL_LIGHTNING, urand(10 * IN_MILLISECONDS, 15 * IN_MILLISECONDS));
			events.ScheduleEvent(EVENT_INCINERATE_FLESH, urand(20 * IN_MILLISECONDS, 35 * IN_MILLISECONDS));
			events.ScheduleEvent(EVENT_NETHER_POWER, 40 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_LEGION_FLAME, 50 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_SUMMONO_NETHER_PORTAL, 20 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_SUMMON_INFERNAL_ERUPTION, 80 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_PANIC, 50 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_FRENZY, 70 * IN_MILLISECONDS);
			events.ScheduleEvent(EVENT_VENT, 25 * IN_MILLISECONDS);
			me->RemoveAurasDueToSpell(SPELL_BONE_STORM);
			events.ScheduleEvent(EVENT_WARN_BONE_STORM, urand(45000, 50000));
			events.ScheduleEvent(EVENT_CLONE_PLAYER, urand(85000, 150000));
			events.ScheduleEvent(EVENT_DEDO_MUERTE, urand(10000, 30000));
		}


		uint32 insanityHandled;
		SummonList Summons;

		uint32 GetHealthPct(uint32 damage)
		{
			if (damage > me->GetHealth())
				return 0;
			return 100 * (me->GetHealth() - damage) / me->GetMaxHealth();
		}

		void KilledUnit(Unit* who) override
		{
			if (who->GetTypeId() == TYPEID_PLAYER)
				Talk(SAY_KILL_PLAYER);
		}

		void JustDied(Unit* /*killer*/) override
		{
			_JustDied();
			Talk(SAY_DEATH);
			Summons.DespawnAll();
			ResetPlayersPhaseMask();
		}

		void UpdateAI(uint32 diff) override
		{
			if (!UpdateVictim())
				return;

			events.Update(diff);

			if (me->HasUnitState(UNIT_STATE_CASTING))
				return;

			while (uint32 eventId = events.ExecuteEvent())
			{
				switch (eventId)
				{
				case EVENT_FEL_FIREBALL:
					me->Say("Siente el fuego del mismisimo infierno sabandija!", LANG_UNIVERSAL);
					DoCastVictim(SPELL_FEL_FIREBALL);
					events.ScheduleEvent(EVENT_FEL_FIREBALL, urand(10 * IN_MILLISECONDS, 15 * IN_MILLISECONDS));
					return;
				case EVENT_FEL_LIGHTNING:
					me->Say("Se te detiene el corazon? toma unas cuantas descargas insecto", LANG_UNIVERSAL);
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 0.0f, true, -SPELL_LORD_HITTIN))
						DoCast(target, SPELL_FEL_LIGHTING);
					events.ScheduleEvent(EVENT_FEL_LIGHTNING, urand(10 * IN_MILLISECONDS, 15 * IN_MILLISECONDS));
					return;
				case EVENT_INCINERATE_FLESH:
					me->Say("Arrodillense ante la furia de mil soles!", LANG_UNIVERSAL);
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true, -SPELL_LORD_HITTIN))
					{
						Talk(EMOTE_INCINERATE, target);
						Talk(SAY_INCINERATE);
						DoCast(target, SPELL_INCINERATE_FLESH);
					}
					events.ScheduleEvent(EVENT_INCINERATE_FLESH, urand(20 * IN_MILLISECONDS, 25 * IN_MILLISECONDS));
					return;
				case EVENT_NETHER_POWER:
					me->Say("Sufran! Sufran! Hahahaha!", LANG_UNIVERSAL);
					me->CastCustomSpell(SPELL_NETHER_POWER, SPELLVALUE_AURA_STACK, RAID_MODE<uint32>(5, 10, 5, 10), me, true);
					events.ScheduleEvent(EVENT_NETHER_POWER, 40 * IN_MILLISECONDS);
					return;
				case EVENT_LEGION_FLAME:
					me->Say("Fuego para todos, incinerence insectos!", LANG_UNIVERSAL);
					if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0.0f, true, -SPELL_LORD_HITTIN))
					{
						Talk(EMOTE_LEGION_FLAME, target);
						DoCast(target, SPELL_LEGION_FLAME);
					}
					events.ScheduleEvent(EVENT_LEGION_FLAME, 30 * IN_MILLISECONDS);
					return;
				case EVENT_SUMMON_INFERNAL_ERUPTION:
					me->Say("Quemense todos insensatos!", LANG_UNIVERSAL);
					Talk(EMOTE_INFERNAL_ERUPTION);
					Talk(SAY_INFERNAL_ERUPTION);
					DoCast(SPELL_INFERNAL_ERUPTION);
					events.ScheduleEvent(EVENT_SUMMON_INFERNAL_ERUPTION, 2 * MINUTE*IN_MILLISECONDS);
					return;
				case EVENT_PANIC:
					me->Say("Por que huyes sabandija? ven aqui!", LANG_UNIVERSAL);
					DoCastVictim(SPELL_PANIC);
					events.ScheduleEvent(EVENT_PANIC, 35000);
					return;
				case EVENT_FRENZY:
					me->Say("Ahora veran de lo que soy capaz! WRAAAAAAAAAAAAAA", LANG_UNIVERSAL);
					Talk(EMOTE_FRENZY);
					DoCast(me, SPELL_FRENZY);
					events.ScheduleEvent(EVENT_FRENZY, 15000);
					return;
				case EVENT_VENT:
					me->Say("Aliento Infernal!!", LANG_UNIVERSAL);
					DoCastAOE(SPELL_FLAME_VENTS);
					events.ScheduleEvent(EVENT_VENT, 20 * IN_MILLISECONDS);
					return;
				case EVENT_WARN_BONE_STORM:
					me->Say("Sean parte de esta lluvia de huesos, sabandijas!", LANG_UNIVERSAL);
					me->FinishSpell(CURRENT_MELEE_SPELL, false);
					DoCast(me, SPELL_BONE_STORM);
					DoCastVictim(31984);
					events.DelayEvents(3000, EVENT_GROUP_SPECIAL);
					events.ScheduleEvent(EVENT_BONE_STORM_BEGIN, 3050);
					events.ScheduleEvent(EVENT_WARN_BONE_STORM, urand(90000, 95000));
					return;
				case EVENT_CLONE_PLAYER:
					me->Say("Por que se desesperan sabandijas? vengan por mi!", LANG_UNIVERSAL);
					DoCast(SPELL_INSANITY); //
					events.ScheduleEvent(EVENT_CLONE_PLAYER, urand(85000, 150000));
					return;
				case EVENT_DEDO_MUERTE:
					me->Say("Muerte Sabandija....", LANG_UNIVERSAL);
					DoCast(SPELL_DEDO_MUERTE); //
					events.ScheduleEvent(EVENT_DEDO_MUERTE, urand(10000, 30000));
					return;
				}
			}


			DoMeleeAttackIfReady();
		}


		uint32 GetSpellForPhaseMask(uint32 phase)
		{
			uint32 spell = 0;
			switch (phase)
			{
			case 16:
				spell = SPELL_INSANITY_PHASING_1;
				break;
			case 32:
				spell = SPELL_INSANITY_PHASING_2;
				break;
			case 64:
				spell = SPELL_INSANITY_PHASING_3;
				break;
			case 128:
				spell = SPELL_INSANITY_PHASING_4;
				break;
			case 256:
				spell = SPELL_INSANITY_PHASING_5;
				break;
			}
			return spell;
		}



		void ResetPlayersPhaseMask()
		{
			Map::PlayerList const &players = me->GetMap()->GetPlayers();
			for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
			{
				Player* player = i->GetSource();
				player->RemoveAurasDueToSpell(GetSpellForPhaseMask(player->GetPhaseMask()));
			}
		}

		void SpellHitTarget(Unit* target, const SpellInfo* spell) override
		{
			if (spell->Id == SPELL_INSANITY)
			{
				// Not good target or too many players
				if (target->GetTypeId() != TYPEID_PLAYER || insanityHandled > 4)
					return;
				// First target - start channel visual and set self as unnattackable
				if (!insanityHandled)
				{
					// Channel visual
					DoCast(me, INSANITY_VISUAL, true);
					// Unattackable
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
					me->SetControlled(true, UNIT_STATE_STUNNED);
				}
				// phase mask
				target->CastSpell(target, SPELL_INSANITY_TARGET + insanityHandled, true);
				// summon twisted party members for this target
				Map::PlayerList const &players = me->GetMap()->GetPlayers();
				for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
				{
					Player* player = i->GetSource();
					if (!player || !player->IsAlive())
						continue;
					// Summon clone
					if (Unit* summon = me->SummonCreature(NPC_TWISTED_VISAGE, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation(), TEMPSUMMON_CORPSE_DESPAWN, 0))
					{
						// clone
						player->CastSpell(summon, SPELL_CLONE_PLAYER, true);
						// set phase
						summon->SetPhaseMask((1 << (4 + insanityHandled)), true);
					}
				}
				++insanityHandled;
			}
		}


	};


	CreatureAI* GetAI(Creature* creature) const override
	{
		return new boss_zerosAI(creature);
	}
};



void AddSC_World_Boss()
{

	new boss_zeros();
}