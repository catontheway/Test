
#ifndef __MIGRATION_H
#define __MIGRATION_H


using namespace std; 


typedef struct migration_Online
{
	void Scantidad(int c) { //int c = cantidad total en consulta  
		cantidad_cuentas = c; 
		status_characters = new int[c]; 
		id_cuenta = new int[c];  
		items_characters = new string[c];
		Guid = new int[c]; 
		Name = new string[c];
	}
	int cantidad_cuentas; // 
	int* status_characters; //estado de migracion
	int* id_cuenta; //id_cuenta en migracion
	string* items_characters; //items de migracion
	int* Guid; //guid characters	
	string* Name;
};


typedef struct migration_characters
{
	void Scantidad_c(int c) { //int c = cantidad total en consulta  
		cantidad_cuentas = c;  
		account = new int[c]; 
		guid = new int[c]; 
		estado = new int[c]; 
		fecha = new string[c];
	}
	int cantidad_cuentas; 
	int* account; //id del usuario
	int* guid; //id del characters
	string* fecha;
	int* estado;
	
};





class migration
{
public:
	static migration* instance();
	
	bool Activar_migrador = false;
	bool iniciado_migrador = false;
	
	bool Activar_migrador_estado = false;
	bool iniciado_migrador_estado = false;
	
	
	void Buscar_1();
	void Buscar_2();
	void Ingresar_characters_migrado(int Account, int Guid);
	void Update_characters_migrado(int Account, int Guid);
	bool Migracion_completa(int Guid);
	void validar_items(string items);
	void enviar_items(int item, int cantidad);
	void items(string i);
	bool val_migraction();
	int obtener_guid(Player *player);
	void gm_info_m(int Account, int Guid);
	void insert_command(int obtener_guid, int targetAccountId);
	
	migration_Online characters_migraction; 
	migration_characters estado_migratorio;
	
	vector<string> explode( const string &delimiter, const string &str){
		vector<string> arr;
	
		int strleng = str.length();
		int delleng = delimiter.length();
		if (delleng==0)
			return arr;//no change
	 
		int i=0;
		int k=0;
		while( i<strleng )
		{
			int j=0;
			while (i+j<strleng && j<delleng && str[i+j]==delimiter[j])
				j++;
			if (j==delleng)//found delimiter
			{
				arr.push_back(  str.substr(k, i-k) );
				i+=delleng;
				k=i;
			}
			else
			{
				i++;
			}
		}
		arr.push_back(  str.substr(k, i-k) );
		return arr;
	}
	int count(const char* arr){
	   int c = sizeof(arr)/sizeof(arr[0]); //what would be count? 10?
	   return c;
	}
};

#define smigration migration::instance()

#endif
