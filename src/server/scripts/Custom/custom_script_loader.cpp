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


//npc Apuesta

//NPC reforjador

//GuildHouse NPC

 //trangmo

//Visual enchat

 //Monturas por cuenta
void AddSC_accontmounts();
 //Boss announcer
void AddSC_Boss_Announcer();
//juego

//reset instance

//top arena

//PVP Syetm
//chat Censor
void AddSC_System_Censure();
// world CHat
void AddSC_World_Chat();
// Promo
void AddSC_npc_promo();
void AddSC_cs_promo();
//Arena Espectador


void AddCustomScripts()
{
	//npc Apuesta
	
	 //NPC reforjador
	
	 //GuildHouse NPC
	
	  //trangmo
     
	 //Visual enchat
    
	  //Monturas por cuenta
     AddSC_accontmounts();
	  //Boss announcer
     AddSC_Boss_Announcer();
	 //juego
   
	//reset instance

	 //top arena
  
	 //PVP Syetm
	 //chat Censor
 	 AddSC_System_Censure();
	 // world CHat
     AddSC_World_Chat();
	 // Promo
	 AddSC_npc_promo();
	 AddSC_cs_promo();
	//Arena Espectador
     
	 
}
