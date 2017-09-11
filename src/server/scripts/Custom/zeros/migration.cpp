#include "migration.h"
#include "Language.h"
#include "ScriptMgr.h"
#include "ObjectMgr.h"

using namespace std;


int row_i = 0;



migration* migration::instance()
{
	static migration instance;
	return &instance;
}

