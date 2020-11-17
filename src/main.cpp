#include <iostream>
#include "./MakeFileLogs.c"

int main(int argc, char const *argv[])
{

	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	std::cout<<logs.AddLogInQueue("Fecha de hoy linea 34", "Ocurrió un fallo en el sistem ->->->->")<<std::endl;
	return 0;
}