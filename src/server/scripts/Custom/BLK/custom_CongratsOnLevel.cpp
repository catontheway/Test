class custom_CongratsOnLevel : public PlayerScript
{
public:
	custom_CongratsOnLevel() : PlayerScript("custom_CongratsOnLevel") { }

	void OnLevelChanged(Player* player, uint8 newLevel)
	{
		switch (++newLevel) {

		case 10: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Demuestras que puedes dar tus primeros pasos avanzando satisfactoriamente al Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			break;
		}
		case 20: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Nuevas aventuras te esperan asi como nuevos retos en el Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			player->LearnSpell(33388, false);
			break;
		}
		case 30: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Conoces nuevos caminos y es hora de tener nuevas metas en el Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			break;
		}
		case 40: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Acabas de llegar a la mitad de tu aventura, demuestra que superaras todos los obstaculos en el Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			player->LearnSpell(33391, false);
			break;
		}
		case 50: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Haz demostrado ser autosuficiente y capaz, acaba con todos en el Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			break;
		}
		case 60: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Defiende tu faccion! Lucha contra la Legión Ardiente en el Nivel:  " << (uint32)newLevel;
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			player->LearnSpell(34090, false);
			break;
		}
		case 70: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Haz alcanzado el Nivel: " << (uint32)newLevel << ", Los frios vientos de Rasganorte te esperan! ";
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			player->LearnSpell(34091, false);
			break;
		}
		case 80: {
			std::ostringstream ss;
			ss << "|cffFF0000[Level Gaming]|r WoW-Legendary el player:  " << player->GetName() << " Haz alcanzado el Nivel:  " << (uint32)newLevel << "y con ello nuevas y emocionantes aventuras, conquista a tus enemigos y sobretodo supera tu propio ser!";
			sWorld->SendServerMessage(SERVER_MSG_STRING, ss.str().c_str());
			player->LearnSpell(54197, false);

			if (player->getRace() == 1 || player->getRace() == 3 || player->getRace() == 4 || player->getRace() == 7 || player->getRace() == 11) {
				//ALIZ
				//player->AddItem(12353,1);
				player->LearnSpell(16083, false);
			}
			else {
				//Horda
				//player->AddItem(12330,1);
				player->LearnSpell(16080, false);
			}

			player->AddItem(33223, 1);
			player->AddItem(50250, 1);
			player->AddItem(44794, 1);
			break;
		}
		default:
			return;
		}

	}
};

void AddSC_custom_CongratsOnLevel()
{
	new custom_CongratsOnLevel();
}