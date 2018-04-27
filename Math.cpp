#include "Includes.h"


float Math::cosTable[360];		  
float Math::sinTable[360];


void Math::Init()
{
 	for (int a = 0; a < 360; a ++)
 	{
	  	 Math::cosTable[a] = cos(a * 2.0 * M_PI / 360.0);
	 	 Math::sinTable[a] = sin(a * 2.0 * M_PI / 360.0);
	}
}

float Math::Cos(int a)
{
 	a %= 360; 
	if (a < 0) a += 360;
	return Math::cosTable[a];
}

float Math::Sin(int a)
{
 	a %= 360; 
	if (a < 0) a += 360;
	return Math::sinTable[a];

   
}


float Math::Cos(double a)
{
	return cos(a * 2.0 * M_PI / 360.0);
}

float Math::Sin(double a)
{
	return sin(a * 2.0 * M_PI / 360.0);

   
}
