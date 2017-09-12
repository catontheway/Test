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

#include "ScriptMgr.h"
#include "Chat.h"
#include "Language.h"
#include "LFGMgr.h"
#include "ObjectMgr.h"
#include "Group.h"
#include "GroupMgr.h"
#include "Player.h"


class reload_commandscript_items_npcs : public CommandScript
{
public:
	reload_commandscript_items_npcs() : CommandScript("reload_commandscript_items_npcs") { }

	std::vector<ChatCommand> GetCommands() const override
	{

		static std::vector<ChatCommand> reload =
		{
			{ "item_templante reload",                   rbac::RBAC_PERM_COMMAND_GM,                  true,  &Handlereloaditems,              "" },
			{ "creature_templante reload",               rbac::RBAC_PERM_COMMAND_GM,                         true,  &Handlereloadnpcs,                     "" },

		};
		return reload;
	}

	static bool Handlereloaditems(ChatHandler* handler, const char* /*args*/) {
		TC_LOG_INFO("misc", "Re-Loading Item_template...");
		sObjectMgr->LoadItemTemplates();
		handler->SendGlobalGMSysMessage("Item_template has been reloaded!");
		return true;
	}


	static bool Handlereloadnpcs(ChatHandler* handler, const char* /*args*/) {
		TC_LOG_INFO("misc", "Re-Loading Creature_template...");
		sObjectMgr->LoadCreatureTemplates();
		handler->SendGlobalGMSysMessage("Creature_template has been reloaded!");
		return true;
	}
};




void AddSC_reload_item_npc()
{
    new reload_commandscript_items_npcs();
}
