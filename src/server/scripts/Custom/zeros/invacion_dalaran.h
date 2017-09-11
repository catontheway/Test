
#ifndef __INVACION_DALARAN_H
#define __INVACION_DALARAN_H


using namespace std;

typedef struct Invacion_dalaran_npc
{
	void Scantidad(int c) { //int c = cantidad total en consulta  
		cantidad = c;
		entry = new int[c];
		tipo = new int[c];
		detalle = new string[c];
	}
	int cantidad; // 
	int* entry;
	int* tipo;
	string* detalle;
};



typedef struct Invacion_dalaran_tele
{
	void Scantidad(int c) { //int c = cantidad total en consulta  
		cantidad = c;
		entry = new int[c];
		x = new float[c];
		y = new float[c];
		z = new float[c];
		o = new float[c];
	}
	int cantidad; // 
	int* entry;
	float* x;
	float* y;
	float* z;
	float* o;
};


int total_mineritos = 0;

enum item_mision {
	item1 = 19700,
};

enum npc_mision {
	npc_dala1 = 190002,
	npc_dala2 = 190034,
	npc_dala3 = 190035,
	npc_dala4 = 190036,
	npc_dala5 = 190037
};

//x				//y		//z			//o
const Position Spawn_C1_Evento = { 5907.37f, 738.335f, 640.124f, 3.97587f };
const Position Spawn_C2_Evento = { 5961.33f, 688.533f, 640.698f, 4.46439f };
const Position Spawn_C3_Evento = { 5718.01f, 534.101f, 653.255f, 0.839776f };
const Position Spawn_C4_Evento = { 5641.82f, 649.609f, 646.742f, 0.457292f };
const Position Spawn_C5_Evento = { 5837.93f, 755.275f, 640.985f, 4.09761f };
const Position Spawn_C6_Evento = { 5827.43f, 640.193f, 647.199f, 2.7318f };
const Position Spawn_C7_Evento = { 5730.61f, 824.049f, 661.279f, 5.20267f };
const Position Spawn_C8_Evento = { 5768.92f, 917.331f, 661.279f, 0.754173f };
const Position Spawn_C9_Evento = { 5858.74f, 796.3287f,661.278f, 3.84472f };
const Position Spawn_C10_Evento = { 5808.3f, 422.757f, 658.782f, 1.41391f };


const float x = 5807.902832f;
const float y = 588.661865f;
const float z = 660.939209f;
const float o = 1.708845f;

const float xx = 5807.88f;
const float yy = 588.351f;
const float zz = 660.939f;
const float oo = 1.6668f;


class invacion_dalaran {
public:
	static invacion_dalaran* instance();
	
	bool active_buscar_npc = false;
	bool active_buscar_tele = false;

	bool iniciar_buscar_npc = false;
	bool iniciar_buscar_tele = false;

	void cargar_evento_dalaran_npc();
	void cargar_evento_dalaran_tele();

	Invacion_dalaran_tele event_dalaran_tele;
	Invacion_dalaran_npc event_dalaran_npc;

};


#define sinvacion_dalaran invacion_dalaran::instance()
#endif