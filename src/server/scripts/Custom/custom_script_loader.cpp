/*
 * Copyright (C) 2008-2016 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

// This is where scripts' loading functions should be declared:


// The name of this function should match:
// void Add${NameOfDirectory}Scripts()

void AddSC_arena_spectator_script();
void AddSC_System_Censure();
void AddSC_World_Chat();
void AddSC_accontmounts();
void AddSC_npc_blood_money();
void AddSC_Boss_Announcer();
void AddSC_item_enchant_visuals();
void AddSC_guildmaster();
void AddSC_npc_arena_setup();
void AddSC_npc_tic_tac_toe();
void AddSC_Creature_Script();
void AddSC_npc_promo();
void AddSC_REFORGER_NPC();
void AddSC_Transmogrification();
void AddSC_cs_promo();
void AddCustomScripts()
{
	AddSC_arena_spectator_script();
	AddSC_System_Censure();
	AddSC_World_Chat();
	AddSC_accontmounts();
	AddSC_npc_blood_money();
	AddSC_Boss_Announcer();
    AddSC_item_enchant_visuals();
	AddSC_guildmaster();
	AddSC_npc_arena_setup();
	AddSC_npc_tic_tac_toe();
	AddSC_Creature_Script();
	AddSC_npc_promo();
	AddSC_REFORGER_NPC();
    AddSC_Transmogrification();
    AddSC_cs_promo();
}
