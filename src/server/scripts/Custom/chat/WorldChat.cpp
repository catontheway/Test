#include "WorldChat.h"
#include "Chat.h"
#include "Common.h"

using namespace std;

worldchat* worldchat::instance()
{
	static worldchat instance;
	return &instance;
}
void worldchat::iniciar()
{
	if (sworldchat->iniciado)
		return;
	TC_LOG_INFO("server.loading", "Cargando configuraciones de WorldChat");
	QueryResult rr = CharacterDatabase.PQuery("SELECT rango, rango_nombre, rango_color, chat_color FROM `worldchat_rango`");
	while (Field *fr = rr->Fetch())
	{
		rRango[fr[0].GetInt8()] = fr[1].GetString();
		rRangoColor[fr[0].GetInt8()] = fr[2].GetString();
		rRangoColorChat[fr[0].GetInt8()] = fr[3].GetString();
		rr->NextRow();
	}
	QueryResult rc = CharacterDatabase.PQuery("SELECT clase, color FROM `worldchat_clase`");
	while (Field *fc = rc->Fetch())
	{
		rClaseColor[fc[0].GetInt8()] = fc[1].GetString();
		rc->NextRow();
	}
	sworldchat->iniciado = true;
}

class World_Chat : public CommandScript
{
    public:
    World_Chat() : CommandScript("World_Chat") { }
    
    static string fac(uint8 race)
    {
		string r = "";
		switch(race)
		{
			case 1: case 3: case 4: case 7: case 11: r = Alianza; break;
			case 2: case 5: case 6: case 8: case 10: r = Horda; break;
		}
		return r;
	}
    
    static bool HandleWorldChatCommand(ChatHandler * pChat, const char * msg)
    {
		if (!sworldchat->iniciado)
			sworldchat->iniciar();
		if(!*msg)
            return false;

        Player * player = pChat->GetSession()->GetPlayer();
		string name = player->GetName();
		uint8 sec = player->GetSession()->GetSecurity();
		uint8 c = player->getClass();
		uint8 race = player->getRace();
		string Rango = sworldchat->GRango(sec);
		string RangoColor = sworldchat->GRangoColor(sec);
		string RangoColorChat = sworldchat->GRangoColorChat(sec);
		string ClaseColor = sworldchat->GClaseColor(c);
	
		string tt = "|cff"+ColorBase+"["+Canal+"][|cff"+RangoColor+ (sec>1?GM_ICON:"") + Rango + "|ccf"+ColorBase+"]"+fac(race)+"[|r|cff"+ClaseColor+"|Hplayer:"+name+"|h"+name+"|h|r|cff"+ColorBase+"]: |cff"+RangoColorChat+msg;
		sWorld->SendGlobalText(tt.c_str(),NULL);
        return true;
    }

	static bool HandleWorldChatReload(ChatHandler * pChat, const char * msg)
	{
		sworldchat->iniciado = false;
		sworldchat->iniciar();
		pChat->SendGlobalGMSysMessage("DB tables `WorldChat*` reloaded.");
		return true;
	}

    std::vector<ChatCommand> GetCommands() const override
    {
		static std::vector<ChatCommand> HandleWorldChatCT =
		{
			{ "reload", rbac::RBAC_PERM_COMMAND_WORLDCHAT_RELOAD,	true, &HandleWorldChatReload, "" },
			{ "",		rbac::RBAC_PERM_COMMAND_WORLDCHAT,			true, &HandleWorldChatCommand, ""},
		};
		static std::vector<ChatCommand> HandleWorldChatCommandTable =
		{
			{ "world",	rbac::RBAC_PERM_COMMAND_WORLDCHAT, false, NULL, "", HandleWorldChatCT},
			{ "w",		rbac::RBAC_PERM_COMMAND_WORLDCHAT, false, NULL, "", HandleWorldChatCT},
			{ "chat",	rbac::RBAC_PERM_COMMAND_WORLDCHAT, false, NULL, "", HandleWorldChatCT},
		};
		return HandleWorldChatCommandTable;
	}
};

void AddSC_World_Chat()
{
        new World_Chat;
}