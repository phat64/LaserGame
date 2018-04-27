#ifndef MATH_H
#define MATH_H


#ifndef M_PI
#define M_PI 3.1415
#endif

class Math
{
 	  public:
	  		 static void Init();
	  		 static float Sin(int a);
	  		 static float Cos(int a);
 	  
  	  		 static float Sin(double a);
	  		 static float Cos(double a);

 	  private:
	  static float cosTable[360];		  
 	  static float sinTable[360];
};


class Plane
{
public:
	  		 double a;
	  		 double b;
	  		 double c;
};

/*
extern double min(double a, double b);

extern double max(double a, double b);
*/

bool IsEqual(double a, double b);

#endif
