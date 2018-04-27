#ifndef MATH_H
#define MATH_H

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


struct Plane
{
	  		 double a;
	  		 double b;
	  		 double c;
};

inline double min(double a, double b)
{
 	   return a < b ? a : b;
}

inline double max(double a, double b)
{
 	   return a > b ? a : b;
}

inline bool IsEqual(double a, double b)
{
 	 return (b - a) * (b - a) < REAL_PRECISION * REAL_PRECISION;
}

#endif
