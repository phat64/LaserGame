#ifndef ACTOR_H
#define ACTOR_H

class Map;
class Input;
class Layer;

struct Node
{
 	double from[2];
	double to[2];
	double distFrom;
	double distTo;
	double min;
	double max;
	int lineIdx;
	int lineIdx2;
};



class Actor
{
 	  public:
	  		 Actor();
			 Actor(int x, int y, int idx, int color);
      		 void Init();
      		 void Render(Gfx * g);
      		 void Update(int ms);
      		 void Move(int dir);
      		 void Pause();
      		 int GetIndexI();
      		 int GetIndexJ();
      		 int GetX();
      		 int GetY();
      		 int GetState();
      		 int GetColor();
      		 void SetMap(Map * map);
      		 void SetInput(Input * input);
      	   	 void EnableFov(bool b);
      	   	 void SetPosition(int x, int y);
			 void SetDirection(int dir);
			 bool IsOnFov(int point[2]); 
			 void UpdateLayer(Layer * layer);
			 void RenderCells(Gfx *g);
			 int GetFovPoints(int * points);  
 			 int GetAngle(int point[2]);
 			 int GetFovPoints2(Gfx*g,int * points);  
 			 
 			 void UpdateNodes(Node * nodes, int nNodes);
 			 void UpdateNode(Node * node);
			 bool IsCullable(int x1, int y1, int x2, int y2);
      private:
	  		  // FOV
	  		 void RenderFov(Gfx * g);
 	  		     	   	 


	  		 int GetRayIntersection(int * points,double angle);
	  		 bool GetIntersectionBetween2Lines(int point[2], int line0[4], int line1[4]);
	  		 bool GetIntersectionBetween2Lines(double point[2], double line0[4], double line1[4]);
	  		 void SortPoints(int * points, int n);
	  		 
	  		 // MATHS
       	   	 static inline int Det(int a[2], int b[2], int c[2]);
  			 static inline bool IsOnTriangle(int point[2], int a[2], int b[2], int c[2]);
			 bool PointIsBetween(int p[2], int aMin, int aMax);

			 int GetRayIntersection2(int * points,double angle, Node * nodes, int nNodes);


	  		  
	  		 int m_State;
	  		 int m_Dir;
	  		 int m_I;
	  		 int m_J;
	  		 int m_X;
	  		 int m_Y;
	  		 int m_Time;
	  		 int m_MoveTime;
	  		 int m_ID;
	  		 int m_Dx;
	  		 int m_Dy;
	  		 int m_Color;
	  		 Map * m_Map;
	  		 Input * m_Input;
	  		  
	  		 // Field Of View
	  		 bool m_bFov;
	  		 int m_FovAngle;
	  		 int m_FovLength;
	  		 
	  		 


};

#endif
