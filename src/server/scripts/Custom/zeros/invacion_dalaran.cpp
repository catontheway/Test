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
#include "invacion_dalaran.h"



using namespace std;

invacion_dalaran* invacion_dalaran::instance()
{
	static invacion_dalaran instance;
	return &instance;
}

void invacion_dalaran::cargar_evento_dalaran_npc() {

	if (sinvacion_dalaran->iniciar_buscar_npc)
		return;

	TC_LOG_INFO("server.loading", "Cargando configuraciones de Evento dalaran npcs");
	QueryResult npc_total_db = WorldDatabase.PQuery("select count(*) as total from evento_dalaran_npc;");
	Field *total_npc = npc_total_db->Fetch();
	Invacion_dalaran_npc npc;
	npc.Scantidad(total_npc[0].GetInt8());

	if (npc.cantidad == 0) {
		sinvacion_dalaran->active_buscar_npc = false;
		return;
	}

	QueryResult npcs_evento = WorldDatabase.PQuery("select *from evento_dalaran_npc;");
	int i = 0;
	while (Field *npc_evento_dalaran = npcs_evento->Fetch()) {
		npc.entry[i] = npc_evento_dalaran[0].GetInt8();
		npc.tipo[i] = npc_evento_dalaran[1].GetInt8();
		npc.detalle[i] = npc_evento_dalaran[2].GetString();
		i++;
		npcs_evento->NextRow();
	}
	sinvacion_dalaran->active_buscar_npc = true;
	sinvacion_dalaran->event_dalaran_npc = npc;
	sinvacion_dalaran->iniciar_buscar_npc = true;
}


void invacion_dalaran::cargar_evento_dalaran_tele() {

	if (sinvacion_dalaran->iniciar_buscar_tele)
		return;

	TC_LOG_INFO("server.loading", "Cargando configuraciones de Evento xyzo npcs");
	QueryResult tele_total_db = WorldDatabase.PQuery("select count(*) as total FROM evento_dalaran_tele;");
	Field *total_tele = tele_total_db->Fetch();
	Invacion_dalaran_tele tele;
	tele.Scantidad(total_tele[0].GetInt8());

	if (tele.cantidad == 0) {
		sinvacion_dalaran->active_buscar_tele = false;
		return;
	}
	TC_LOG_INFO("server.loading", "Cargando configuraciones de Evento xyz");
	QueryResult teles_evento = WorldDatabase.PQuery("Select entry,x,y,z,o From evento_dalaran_tele;");
	int i = 0;
	while (Field *tele_evento_dalaran = teles_evento->Fetch()) {
		tele.entry[i] = tele_evento_dalaran[0].GetInt8();
		tele.x[i] = tele_evento_dalaran[1].GetFloat();
		tele.y[i] = tele_evento_dalaran[2].GetFloat();
		tele.z[i] = tele_evento_dalaran[3].GetFloat();
		tele.o[i] = tele_evento_dalaran[4].GetFloat();
		i++;
		teles_evento->NextRow();
	}
	sinvacion_dalaran->active_buscar_tele = true;
	sinvacion_dalaran->event_dalaran_tele = tele;
	sinvacion_dalaran->iniciar_buscar_tele = true;
}



void invacion_dalaran::registro_evento_dalaran() {

	if (sinvacion_dalaran->iniciar_buscar_registro)
		return;

	TC_LOG_INFO("server.loading", "Cargando configuraciones de Evento Registro player");
	QueryResult registro_total = WorldDatabase.PQuery("select count(*) as total from registro_evento_dalaran;");
	Field *registro_total_ = registro_total->Fetch();
	Invacion_dalaran_registro registro;
	registro.Scantidad(registro_total_[0].GetInt8());

	if (registro.cantidad == 0) {
		sinvacion_dalaran->active_buscar_registro = false;
		return;
	}

	QueryResult registro_evento = WorldDatabase.PQuery("select guid from registro_evento_dalaran;");
	int i = 0;
	while (Field *registro_evento_dalaran = registro_evento->Fetch()) {
		registro.Guid[i] = registro_evento_dalaran[0].GetInt8();
		i++;
		registro_evento->NextRow();
	}
	sinvacion_dalaran->active_buscar_registro = true;
	sinvacion_dalaran->event_dalaran_registro = registro;
	sinvacion_dalaran->iniciar_buscar_registro = true;
}

void invacion_dalaran::Agregar_registro(int Guid) {
	WorldDatabase.PExecute(std::string("INSERT into registro_evento_dalaran(guid) VALUES('%d');",Guid));
}

void invacion_dalaran::del_npc(int entry, Player *player) {
	ObjectGuid::LowType lowguid = entry;
	Creature* unit = nullptr;

	if (CreatureData const* cr_data = sObjectMgr->GetCreatureData(lowguid))
		unit = player->GetMap()->GetCreature(ObjectGuid(HighGuid::Unit, cr_data->id, lowguid));

	unit->CombatStop();
	unit->DeleteFromDB();
	unit->AddObjectToRemoveList();
}

void invacion_dalaran::questadd(Player* player) {

	bool verificar = false;

	
	
	for (int i = 0; i < sinvacion_dalaran->event_dalaran_registro.cantidad; i++) {
		if (sinvacion_dalaran->event_dalaran_registro.Guid[i] == player->GetGUID()) {
			verificar = true;
		}
	}

	if (!verificar) {
		if (Quest const* quest = sObjectMgr->GetQuestTemplate(25501))
		{
			if (!quest->HasFlag(QUEST_FLAGS_PARTY_ACCEPT))
				return;

			Player* originalPlayer = ObjectAccessor::FindPlayer(player->GetDivider());
			if (!originalPlayer)
				return;

			if (!player->IsInSameRaidWith(originalPlayer))
				return;

			if (!originalPlayer->IsActiveQuest(25501))
				return;

			if (!player->CanTakeQuest(quest, true))
				return;

			if (player->CanAddQuest(quest, true))
			{
				player->AddQuestAndCheckCompletion(quest, NULL); // NULL, this prevent DB script from duplicate running

				if (quest->GetSrcSpell() > 0)
					player->CastSpell(player, quest->GetSrcSpell(), true);
			}

			if (player->CanCompleteQuest(25501)) {
				player->CompleteQuest(25501);
				sinvacion_dalaran->Agregar_registro(player->GetGUID());
			}
		}
		player->SetDivider(ObjectGuid::Empty);
	}	
}

class item_invacion_dalaran : public ItemScript
{
public:
	item_invacion_dalaran() : ItemScript("item_invacion_dalaran") { }

	bool OnUse(Player* player, Item* item /*item*/, SpellCastTargets const& targets) override{
		if (player->GetGroup()->GetLeaderGUID() == item->ToPlayer()->GetGUID() && player->GetMapId() == 571 || player->GetSession()->GetSecurity()>2) {
			if (player->GetPositionX() == x && player->GetPositionY() == y && player->GetPositionZ() == z && player->GetOrientation() == o || player->GetPositionX() == xx && player->GetPositionY() == yy && player->GetPositionZ() == zz && player->GetOrientation() == oo || player->GetSession()->GetSecurity()>2) {
				player->CastSpell(player, 72523, false);
				for (int i = 0; i < sinvacion_dalaran->event_dalaran_tele.cantidad; i++) {
					for (int j = 0; j < sinvacion_dalaran->event_dalaran_npc.cantidad; j++) {
						if (sinvacion_dalaran->event_dalaran_npc.entry[j] == sinvacion_dalaran->event_dalaran_tele.entry[i]) {
							const Position tele = { sinvacion_dalaran->event_dalaran_tele.x[j], sinvacion_dalaran->event_dalaran_tele.y[j], sinvacion_dalaran->event_dalaran_tele.z[j], sinvacion_dalaran->event_dalaran_tele.o[j] };
							player->SummonCreature(sinvacion_dalaran->event_dalaran_npc.entry[j], tele, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 1000);
						}
					}
				}
				for (int i = 0; i < 60; i++) {
					player->CastSpell(player, 27249, false);
					player->CastSpell(player, 27249, false);
					player->CastSpell(player, 27249, false);
					boost::this_thread::sleep(boost::posix_time::seconds(1));
				}
				player->CastSpell(player, 72523, false);
			}
		}
		return true;
	}
};

class Invacion_dalaran  : public CreatureScript
{
public:
	Invacion_dalaran() : CreatureScript("Invacion_dalaran") { }

	bool OnGossipHello(Player* player, Creature* creature)
	{
		if (player->GetGroup() == NULL)
			return false;

		if (!player->GetGroup())
			return false;

		//sinvacion_dalaran->questadd(player);
		if (!sinvacion_dalaran->active_buscar_tele)
			sinvacion_dalaran->cargar_evento_dalaran_tele();
			TC_LOG_INFO("server.loading", "Estoy aca...");
		
		if (!sinvacion_dalaran->active_buscar_npc)
			sinvacion_dalaran->cargar_evento_dalaran_npc();
			TC_LOG_INFO("server.loading", "Estoy aca...");
		
		if (!sinvacion_dalaran->active_buscar_registro)
			sinvacion_dalaran->registro_evento_dalaran();
			TC_LOG_INFO("server.loading", "Estoy aca...");

		TC_LOG_INFO("server.loading", "Estoy aca12");
			player->PlayerTalkClass->ClearMenus();
			//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Evento Fin de semana", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
			if (player->GetSession()->GetSecurity() >= 2 || player->GetGroup()->GetMembersCount() >= 10 && player->GetGroup()->GetLeaderGUID() == player->GetGUID())
			{
				TC_LOG_INFO("server.loading", "Estoy aca123");
				if (player->GetSession()->GetSecurity() >= 2 || player->GetGroup()->GetLeaderGUID() == player->GetGUID()) {
					player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Iniciar Evento", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
					//player->ADD_GOSSIP_ITEM(GOSSIP_ICON_BATTLE, "Cancelar Evento", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
				}
				else {
					ChatHandler(player->GetSession()).PSendSysMessage("Solo el lider puede activar el evento");
				}
			}
			else {
				ChatHandler(player->GetSession()).PSendSysMessage("Deben de habe en tu grupo minimo 10 jugadores");
			}
			player->PlayerTalkClass->SendGossipMenu(1, creature->GetGUID());
		return true;
	}

	bool OnGossipSelect(Player* player, Creature* creature, uint32 /*uiSender*/, uint32 uiAction)
	{
		player->PlayerTalkClass->ClearMenus();

		ChatHandler* handler = NULL;
		int minutos = 10, ii;
		int n = rand() % 10 + 1;
		

		switch (uiAction)
		{
		case GOSSIP_ACTION_INFO_DEF + 1:
			
			break;

		case GOSSIP_ACTION_INFO_DEF + 2:
			if (player->GetGroup()->GetLeaderGUID() == player->GetGUID() || player->GetSession()->GetSecurity()>2) {
				
					ChatHandler(player->GetSession()).PSendSysMessage("Tienen 10 minutos para encontrar a Señor Minerito, matarlo y traerme su tesoro");

					std::string args = player->GetName() + " y su Grupo ha comenzado el evento invacion a dalaran";
					std::string str = handler->GetTrinityString(LANG_GLOBAL_NOTIFY);
					str += args;
					WorldPacket data(SMSG_NOTIFICATION, (str.size() + 1));
					data << str;
					sWorld->SendGlobalMessage(&data);


					if (n == 1)
						creature->SummonCreature(npc_dala1, Spawn_C1_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 2)
						creature->SummonCreature(npc_dala1, Spawn_C2_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 3)
						creature->SummonCreature(npc_dala1, Spawn_C3_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 4)
						creature->SummonCreature(npc_dala1, Spawn_C4_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 5)
						creature->SummonCreature(npc_dala1, Spawn_C5_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 6)
						creature->SummonCreature(npc_dala1, Spawn_C6_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 7)
						creature->SummonCreature(npc_dala1, Spawn_C7_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 8)
						creature->SummonCreature(npc_dala1, Spawn_C8_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else if (n == 9)
						creature->SummonCreature(npc_dala1, Spawn_C9_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);
					else
						creature->SummonCreature(npc_dala1, Spawn_C10_Evento, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 500);

					ChatHandler(player->GetSession()).PSendSysMessage("NPC evento Invacion dalaran fue invocado, buscalo y matalo.");
					for (int j = minutos - 1; j >= 0; j--) {
						ii = 59;
						for (int i = ii; i >= 0; i--) {
							if (j == 0 && i == 10) {
								// Delete the creature
								ChatHandler(player->GetSession()).PSendSysMessage("O.o tu tiempo se acabo....");
								sinvacion_dalaran->del_npc(npc_dala1, player);
								break;
							}

							if (player->GetGroup()->GetLeaderGUID() == player->GetGroup()->GetGUID() && player->isDead()) {
								ChatHandler(player->GetSession()).PSendSysMessage("Tu lider ha muerto el juego acabo");
								sinvacion_dalaran->del_npc(npc_dala1, player);
								break;
							}
							boost::this_thread::sleep(boost::posix_time::seconds(1));
						}
					}
				}
				else {
					ChatHandler(player->GetSession()).PSendSysMessage("Bolso lleno");
				}
			
			break;
		}
		return true;
	}

	

};

class kill_boss_evento_dalaran : public PlayerScript
{
public:
	kill_boss_evento_dalaran() : PlayerScript("kill_boss_evento_dalaran") {}

	void OnCreatureKill(Player* player, Creature* boss) {
		Group* group = NULL;
		Creature *creature = NULL;
		
		if (boss->isWorldBoss() && boss->GetEntry() == npc_dala1) {
			//ChatHandler(player->GetSession()).PSendSysMessage("En hora buena haz matado al señor Señor Minerito");
			player->AddItem(item1, 1);
			sinvacion_dalaran->del_npc(npc_dala1, player);
			int minutos = 2, ii = 0;
			
			for (int j = minutos - 1; j >= 0; j--) {
				ii = 59;
				for (int i = ii; i >= 0; i--) {
					player->CastSpell(player, 27249, false);
					player->CastSpell(player, 27249, false);
					player->CastSpell(player, 27249, false);
					boost::this_thread::sleep(boost::posix_time::seconds(1));
				}
			}
					
			for (int i =0; i < 3; i++) {
				player->CastSpell(player, 66258, false);
				boost::this_thread::sleep(boost::posix_time::seconds(30));
			}
	
			for (int i = 0; i < 3; i++) {
				player->CastSpell(player, 66258, false);
				boost::this_thread::sleep(boost::posix_time::seconds(20));
			}

			for (int i = 0; i < 6; i++) {
				player->CastSpell(player, 66258, false);
				boost::this_thread::sleep(boost::posix_time::seconds(10));
			}
				
		}


		for (GroupReference* itr = group->GetFirstMember(); itr != NULL; itr = itr->next()) {

			if (Player* member = itr->GetSource())
			{
				if (member && member->GetSession() && member->IsInWorld())
				{
					if (member->GetGroup()->GetLeaderGUID() == member->GetGUID()) {
						if (member->GetMapId() == 571  && member->GetAreaId() == 4613) {
							if (boss->isWorldBoss() && boss->GetEntry() == npc_dala2) {
								sinvacion_dalaran->del_npc(npc_dala2, player);
								total_mineritos += 1;
							}
							if (boss->isWorldBoss() && boss->GetEntry() == npc_dala3) {
								sinvacion_dalaran->del_npc(npc_dala3, player);
								total_mineritos += 1;
							}
							if (boss->isWorldBoss() && boss->GetEntry() == npc_dala4) {
								sinvacion_dalaran->del_npc(npc_dala4, player);
								total_mineritos += 1;
							}
							if (boss->isWorldBoss() && boss->GetEntry() == npc_dala5) {
								sinvacion_dalaran->del_npc(npc_dala5, player);
								total_mineritos += 1;
							}
						}
					}
					std::string str = "|cFFFFFC00 mini minero muerto " + total_mineritos;
					WorldPacket data(SMSG_NOTIFICATION, (str.size() + 1));
					data << str;
					member->GetSession()->SendPacket(&data);
				}
			}
		}

		if (total_mineritos == 4) {
			
			for (GroupReference* itr = group->GetFirstMember(); itr != NULL; itr = itr->next()) {

				if (Player* member = itr->GetSource())
				{
					if (member && member->GetSession() && member->IsInWorld())
					{
						std::string str = "|cFFFFFC00 por fin hiciste algo bueno en tu vida ves y entrega la mision :P";
						WorldPacket data(SMSG_NOTIFICATION, (str.size() + 1));
						data << str;
						member->GetSession()->SendPacket(&data);
					}
				}
			}
		}
	}
};


void AddSC_World_Invacion_dalaran()
{
	new Invacion_dalaran();
	new item_invacion_dalaran();
	new kill_boss_evento_dalaran();
}


