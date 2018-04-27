#include "Includes.h"


Actor::Actor()
{
	m_X = 0;
	m_Y = 0;
	m_State = STATE_PAUSE;
	m_Dir = DIR_DOWN;
	m_ID = 0;
	m_Color = 0xff0000;
	m_FovAngle = FOV_ANGLE;
	m_FovLength = FOV_LENGTH;
}

Actor::Actor(int x, int y, int idx, int color):m_X(x),m_Y(y),m_ID(idx), m_Color(color)
{
	m_State = STATE_PAUSE;
	m_Dir = DIR_DOWN;m_Dir = DIR_LEFT;
	m_FovAngle = FOV_ANGLE;
	m_FovLength = FOV_LENGTH;
}

void Actor::SetMap(Map * map)
{
 	 m_Map = map;
}

void Actor::SetInput(Input * input)
{
 	m_Input = input; 
}

void Actor::SetPosition(int x, int y)
{
 	 m_X = x;
 	 m_Y = y;
}

void Actor::SetDirection(int dir)
{
 	 m_Dir = dir;
}


void Actor::EnableFov(bool b)
{
 	 m_bFov = b;
}



int Actor::GetState()
{
 	return m_State; 	
}

int Actor::GetColor()
{
 	return m_Color;
}

void Actor::Render(Gfx * g)
{
 	// RenderFov(g);
 
	g->SetColor(m_Color);

 	g->FillCircle(m_X,m_Y,CELL_W,CELL_H);
 	
 	g->SetColor(0x000000);
 	switch(m_Dir)
	{
	   	case DIR_LEFT: 	g->DrawLine(m_X + CELL_W/2, m_Y + CELL_H/2,m_X , m_Y + CELL_H/2); break;
	   	case DIR_RIGHT: g->DrawLine(m_X + CELL_W/2, m_Y + CELL_H/2,m_X + CELL_W - 1, m_Y + CELL_H/2); break;
	   	case DIR_UP: 	g->DrawLine(m_X + CELL_W/2, m_Y + CELL_H/2,m_X + CELL_W/2, m_Y ); break;
	   	case DIR_DOWN: 	g->DrawLine(m_X + CELL_W/2, m_Y + CELL_H/2,m_X + CELL_W/2, m_Y + CELL_H-1); break;
	}
}	


void Actor::RenderFov(Gfx * g)
{
 	int centerX;
 	int centerY;
 	int r;
 	int angle;
 	
 	centerX = m_X + CELL_W / 2;
 	centerY = m_Y + CELL_H / 2;
 	r = m_FovLength;
 	 	 
	switch (m_Dir)
	{
	   	case DIR_LEFT: 	angle = 180;break;
	   	case DIR_RIGHT: angle = 0;	break;
	   	case DIR_UP: 	angle = 270;break;
	   	case DIR_DOWN: 	angle = 90;	break;
	   	default: 		angle = 0;break;
	}

#ifdef DEBUG	
	g->SetColor(0x000000);
	
	g->DrawLine(centerX, centerY,
				centerX + (int) (r * cos((angle - m_FovAngle/2) * 2 * M_PI / 360)),
				centerY + (int) (r * sin((angle - m_FovAngle/2) * 2 * M_PI / 360)));
				
	g->DrawLine(centerX, centerY,
				centerX + (int) (r * cos((angle + m_FovAngle/2) * 2 * M_PI / 360)),
				centerY + (int) (r * sin((angle + m_FovAngle/2) * 2 * M_PI / 360)));
#endif
				
	if (m_Input)
	{
	 	static int points[NB_LINES_MAX];
	 	int nPoints = 0;
		
		points[0] = centerX;
		points[1] = centerY;
		nPoints ++;

		nPoints = GetFovPoints(points + 2 * nPoints);
		


		
		
		points[2 * nPoints + 0] = centerX;
		points[2 * nPoints + 1] = centerY;
		nPoints ++;

		for (int i = 0; i < nPoints-1; i++)
		{
		 	g->SetColor(0xffffff);
		 	g->DrawLine(points[2*i+0], points[2*i+1], points[2*i+2] ,points[2*i+3] );
 		}
 		g->SetAlpha(128);
 		g->SetColor(0xffffff);
 		g->FillPolygon(points, nPoints);
 		g->SetAlpha(255);
	 }
}

int Actor::GetFovPoints(int * points)
{
 	int nPoints = 0;
 	int angle;
 	int x = -1;
 	int y = -1;
	
	switch (m_Dir)
	{
	   	case DIR_LEFT: 	angle = 180;break;
	   	case DIR_RIGHT: angle = 0;	break;
	   	case DIR_UP: 	angle = 270;break;
	   	case DIR_DOWN: 	angle = 90;	break;
	   	default: 		angle = 0;break;
	}
	
	int fovStartAngle = angle - m_FovAngle / 2;
	for (int a = fovStartAngle; a <= fovStartAngle + m_FovAngle; a += 1)
	{
	 	int n;
					 
	  	n = GetRayIntersection(points + 2 * nPoints, a);
	  	SortPoints(points + 2 * nPoints, n);
	  	
	  	if (n && !(x == points[2 * nPoints + 0] && y == points[2 * nPoints + 1]))
		{
		  x = points[2 * nPoints + 0];
		  y = points[2 * nPoints + 1];
  		  nPoints ++;
  	  	}
	}

	return nPoints; 	 
}

void Actor::Update(int ms)
{
 	 int t;
 	 int x;
 	 int y;
 	 
 	 // save pos
 	 x = m_X;
 	 y = m_Y;
 	 
 	 ///m_Time += ms;
 	 
 	 
 	 
 	 t = (ms + 49)/ 50;
 	 m_Time += t * 50;
 	 t = 8;//(m_Time * 32)/80000;
 	 //t = 0;
 	 
 	 if (m_Input)
 	 {
		 t= m_Input->GetPressure() / 64;t=8;
	  	 m_Input->Update(ms);
	  	 if (m_Input->IsPressed(KEY_LEFT)) 	Move(DIR_LEFT);
		 if (m_Input->IsPressed(KEY_RIGHT)) Move(DIR_RIGHT);
		 if (m_Input->IsPressed(KEY_UP)) 	Move(DIR_UP);
  	 	 if (m_Input->IsPressed(KEY_DOWN)) 	Move(DIR_DOWN);
	 }
 	 
 	 
 	 switch(m_State)
 	 {
		case STATE_PAUSE:
			 break;	 
			  				
		case STATE_MOVE:
			 switch(m_Dir)
			 {
			   	case DIR_LEFT: 	m_X -= t; break;
			   	case DIR_RIGHT: m_X += t; break;
			   	case DIR_UP: 	m_Y -= t; break;
			   	case DIR_DOWN: 	m_Y += t; break;
			}
			
			// restore pos if collision
			if (m_Map->HasCol(this))
			{
			   m_X = x;
			   m_Y = y;
			}
			
			 /*if (m_Time > 800)
				 Pause();*/
			 if (m_X%32 ==0 && m_Y%32 ==0) Pause();
			 break;	 
	 }
}

void Actor::Move(int dir)
{
 	 if (m_Dir != dir)
 	 {
	  	m_Dir = dir;
	 }
	 else
	 {
	   	 m_State = STATE_MOVE;
	 }

 	 m_Time = 0;
 	 if (m_Input)
 	 {
 	 	m_MoveTime = (800 * m_Input->GetPressure()) >> 8;
 	 	m_MoveTime = 800 - m_MoveTime + 200;
	}
}

void Actor::Pause()
{
  	 m_State = STATE_PAUSE;
  	 m_Time = 0;
}

int Actor::GetIndexI()
{
 	return m_I;
}

int Actor::GetIndexJ()
{
 	return m_J;
}

int Actor::GetX()
{
 	return m_X;
}

int Actor::GetY()
{
 	return m_Y;
}

int Actor::GetRayIntersection(int * points,double angle)
{
  	 int ray[4];
  	 int line1[4];
 	 int n;
 	 int nPoints;
 	 
 	 ray[0] = m_X + CELL_W / 2;
 	 ray[1] = m_Y + CELL_H / 2;
  	 ray[2] = m_X + (int)(m_FovLength * Math::Cos(angle));
 	 ray[3] = m_Y + (int)(m_FovLength * Math::Sin(angle));
 	 
 	 n = m_Map->GetNbLines();
 	 nPoints = 0;
 	 for (int i = 0; i <  n; i ++)
 	 {
	  	 int wall[4];
	  	 int point[2];
	  	 m_Map->GetLine(wall, i);
	  	 
	  	 if (GetIntersectionBetween2Lines(point, ray, wall))
	  	 {
		  	points[2 * nPoints + 0] = point[0];
		  	points[2 * nPoints + 1] = point[1];
		  	nPoints ++; 			 
		 }
		 else
		 {
		  	 
 	 	 }
	 }
  	points[2 * nPoints + 0] = ray[2];
  	points[2 * nPoints + 1] = ray[3];
  	nPoints ++; 			 
	 return nPoints;
}

int Actor::GetRayIntersection2(int * points,double angle, Node * nodes, int nNodes)
{
  	 int ray[4];

 
 	 int nPoints;
 	 
 	 ray[0] = m_X + CELL_W / 2;
 	 ray[1] = m_Y + CELL_H / 2;
  	 ray[2] = m_X + (int)(m_FovLength * Math::Cos(angle));
 	 ray[3] = m_Y + (int)(m_FovLength * Math::Sin(angle));
 	 
 
 	 nPoints = 0;
 	 for (int i = 0; i <  nNodes; i ++)
 	 {
	  	 int wall[4];
	  	 int point[2];
	  	 m_Map->GetLine(wall, nodes[i].lineIdx);
	  	 
	  	 if (GetIntersectionBetween2Lines(point, ray, wall))
	  	 {
		  	points[2 * nPoints + 0] = point[0];
		  	points[2 * nPoints + 1] = point[1];
		  	nPoints ++; 			 
		 }
		 else
		 {
		  	 
 	 	 }
	 }
  	points[2 * nPoints + 0] = ray[2];
  	points[2 * nPoints + 1] = ray[3];
  	nPoints ++; 			 
	 return nPoints;
}


bool Actor::GetIntersectionBetween2Lines(int point[2], int line0[4], int line1[4])
{
 	 double p[2];
 	 double l0[4];
 	 double l1[4];
 	 bool ret;
 	 
 	 l0[0] = line0[0];
  	 l0[1] = line0[1];
  	 l0[2] = line0[2];
  	 l0[3] = line0[3];
  	 
  	 l1[0] = line1[0];
  	 l1[1] = line1[1];
  	 l1[2] = line1[2];
  	 l1[3] = line1[3];

  	 ret = GetIntersectionBetween2Lines(p, l0, l1);
 	 
 	 point[0] = (int) (p[0] + 0.5);
  	 point[1] = (int) (p[1] + 0.5);
 	 return ret;
}


bool Actor::GetIntersectionBetween2Lines(double point[2], double line0[4], double line1[4])
{
  	 double a0;
	 double b0;
	 double a1;
	 double b1;
 	 double x;
	 double y;
	 
	 // y = ax + b
	 // a = (y2 - y1) / (x2 - x1)
	 // b = y - ax
	 
	 if (IsEqual(line0[0],line0[2]) && IsEqual(line1[0],line1[2]))
	 {
	  	return false;		  	 
	 }
	 
 	 a0 = (double)(line0[3] - line0[1]) / (double)(line0[2] - line0[0]);
 	 b0 = line0[1] - a0 * line0[0];

  	 a1 = (double)(line1[3] - line1[1]) / (double)(line1[2] - line1[0]);
 	 b1 = line1[1] - a1 * line1[0];
 
	 x = - (b1 - b0) / (a1 - a0);
	 y = a0 * x + b0; 
	  
   	 if (IsEqual(line0[0],line0[2]))
   	 {
	  x = line0[0];
	  y = a1 * x + b1;
	 }
		
	if (IsEqual(line1[0],line1[2]))
	{
	   x = line1[0];	  	
	   y = a0 * x + b0; 
  	 }
	  
  	  point[0] = x;
  	  point[1] = y;
	  
	  
	  bool IsOnLine0 = false;
	  bool IsOnLine1 = false;
	/*  {*/
	   	 double minx;
		 double maxx;
		 double miny;
		 double maxy;
		 
		 
		 if (line0[0] < line0[2])
		 {
		  	minx = line0[0];
		  	maxx = line0[2];
		 }
		 else
 		 {
		  	minx = line0[2];
		  	maxx = line0[0];
		 }
		 
		 if (line0[1] < line0[3])
		 {
		  	miny = line0[1];
		  	maxy = line0[3];
		 }
		 else
 		 {
		  	miny = line0[3];
		  	maxy = line0[1];
		 }
		 
		 //if (x >= minx && x <= maxx && y >=miny && y <= maxy)
		 if (x >= minx && x <= maxx && y >=miny && y <= maxy)
		 	IsOnLine0 = true;
		 	
		 if (!IsOnLine0) return false;
		 	
	 	
	 	
		 if (line1[0] < line1[2])
		 {
		  	minx = line1[0];
		  	maxx = line1[2];
		 }
		 else
 		 {
		  	minx = line1[2];
		  	maxx = line1[0];
		 }
		 
		 if (line1[1] < line1[3])
		 {
		  	miny = line1[1];
		  	maxy = line1[3];
		 }
		 else
 		 {
		  	miny = line1[3];
		  	maxy = line1[1];
		 }	 	
	 	
		 if (x >= minx && x <= maxx && y >=miny && y <= maxy)
		 	IsOnLine1 = true;
	  /*}*/
	  

  	  
  	  

	  return IsOnLine0 && IsOnLine1;
}

void Actor::SortPoints(int * points, int n)
{
	int centerX = m_X + CELL_W / 2;
	int centerY = m_Y + CELL_H / 2;
	int nbSwaps;

	// SORT
	do
	{
	  nbSwaps = 0;
	  for (int i = 0; i < n - 1; i ++)
	  {
	   	  int x0;
	   	  int y0;
	   	  int x1;
	   	  int y1;
	   	  int d0;
	   	  int d1;
	   
	   	  x0 = points[2 * i + 0];
   	   	  y0 = points[2 * i + 1];
   	   	  x1 = points[2 * i + 2];
   	   	  y1 = points[2 * i + 3];
   	   
   	   	  d0 = (centerX - x0)*(centerX - x0)+ (centerY - y0) * (centerY - y0);
   	   	  d1 = (centerX - x1)*(centerX - x1)+ (centerY - y1) * (centerY - y1);
   	   	  
   	   	  if (d1 < d0)
   	   	  {
  	   	   points[2 * i + 0] = x1;
		   points[2 * i + 1] = y1;
   		   points[2 * i + 2] = x0;
   		   points[2 * i + 3] = y0;
   		   nbSwaps ++;
		  }
	  }
	} while (nbSwaps>0);
}

bool Actor::IsOnFov(int point[2])
{
 	 static int points[NB_LINES_MAX];
 	 int nPoints = GetFovPoints(points);
 	 int center[2];
 	 
 	 center[0] = m_X + CELL_W / 2;
 	 center[1] = m_Y + CELL_H / 2;
 	 
 	 for (int i = 0; i < nPoints - 1; i ++)
 	 {
	  	 if (IsOnTriangle(&point[0], &points[2 * i], &points[2 * (i + 1)],center))
	  	 	return true;
	 }
	 return false;
}


inline int Actor::Det(int a[2], int b[2], int c[2])
{
 	return (b[1] - a[1]) * (a[0] - c[0]) + (b[0] - a[0]) * (c[1] - a[1]);
}

inline bool Actor::IsOnTriangle(int p[2], int a[2], int b[2], int c[2])
{
	return Det(a, b, p) >= 0 && Det(b, c, p) >= 0 && Det(c, a, p) >= 0;
}

void Actor::UpdateLayer(Layer * layer)
{
#define MIN3(a,b,c)	 a < b? (a<c?a:c) : (b<c?b:c)
#define MAX3(a,b,c)	 a > b? (a>c?a:c) : (b>c?b:c)
 	 static int points[NB_LINES_MAX];
 	 int nPoints = GetFovPoints(points);
 	 int center[2];
 	 center[0] = m_X + CELL_W / 2;
 	 center[1] = m_Y + CELL_H / 2;
 	 
	 for (int i = 0; i < nPoints; i ++)
 	 {
	 	for (int y = 0; y < NB_CELLS_H; y ++)
		{
			for (int x = 0; x < NB_CELLS_W; x ++)
			{
			 	int p[10 * 2];
			 	int x0 = x * CELL_W + CELL_W / 2;
			 	int y0 = y * CELL_H + CELL_H / 2;
			 	
			 	p[2 * 0 + 0] = x * CELL_W + 1;
			 	p[2 * 0 + 1] = y * CELL_H + 1;
			 	
			 	p[2 * 1 + 0] = x * CELL_W + CELL_W - 2;
			 	p[2 * 1 + 1] = y * CELL_H + 1;
			 	
			 	p[2 * 2 + 0] = x * CELL_W + CELL_W - 2;
			 	p[2 * 2 + 1] = y * CELL_H + CELL_H - 2;  
			 	
			 	p[2 * 3 + 0] = x * CELL_W + 1;
			 	p[2 * 3 + 1] = y * CELL_H + CELL_H - 2;

				int pt[2];
				int ray[4];
				
				ray[0] = center[0];
				ray[1] = center[1];
				ray[2] = points[2 * i + 0];
				ray[3] = points[2 * i + 1];


			 	int count = 0;
			 	for (int n = 0; n < 4; n ++)
			 	{
					//if (IsOnTriangle(p + 2 * n, points+2*i,points+2*(i+1), center))
					int line[4];
					
					line[0] = p[2 * n + 0];
					line[1] = p[2 * n + 1];
					line[2] = p[2 * ((n+1)&3) + 0];
					line[3] = p[2 * ((n+1)&3) + 1];
					
					if (GetIntersectionBetween2Lines(pt,ray, line))
					{
					   count ++;   						 
				    
					}
				}
				if (count >=1)
				layer->m_Cells[y][x] = false;
				
	 		}
		}

	 }
	 
}

void Actor::RenderCells(Gfx *g)
{
	 static int points[NB_LINES_MAX];
 	 int nPoints = GetFovPoints(points);
 	 int center[2];
 	 center[0] = m_X + CELL_W / 2;
 	 center[1] = m_Y + CELL_H / 2;
 	 
	 for (int i =0 ; i < nPoints -1; i++)
	 {
	 	for (int y = 0; y < NB_CELLS_H; y ++)
		{
			for (int x = 0; x < NB_CELLS_W; x ++)
			{
			 	int p[10 * 2];
			 	int x0 = x * CELL_W + CELL_W / 2;
			 	int y0 = y * CELL_H + CELL_H / 2;
			 	
			 	p[2 * 0 + 0] = x0;
			 	p[2 * 0 + 1] = y0;
			 	
			 	p[2 * 1 + 0] = x * CELL_W+1;
			 	p[2 * 1 + 1] = y * CELL_H+1;
			 	
			 	p[2 * 2 + 0] = x * CELL_W + CELL_W / 2;
			 	p[2 * 2 + 1] = y * CELL_H+1;  
			 	
			 	p[2 * 3 + 0] = x * CELL_W + CELL_W - 2;
			 	p[2 * 3 + 1] = y * CELL_H+1;

			 	p[2 * 4 + 0] = x * CELL_W+1;
			 	p[2 * 4 + 1] = y * CELL_H + CELL_H/2;
			 	
			 	p[2 * 5 + 0] = x * CELL_W + CELL_W / 2;
			 	p[2 * 5 + 1] = y * CELL_H + CELL_H/2;  
			 	
			 	p[2 * 6 + 0] = x * CELL_W + CELL_W - 2;
			 	p[2 * 6 + 1] = y * CELL_H + CELL_H/2;

			 	p[2 * 7 + 0] = x * CELL_W+1;
			 	p[2 * 7 + 1] = y * CELL_H + CELL_H - 2;
			 	
			 	p[2 * 8 + 0] = x * CELL_W + CELL_W / 2;
			 	p[2 * 8 + 1] = y * CELL_H + CELL_H - 2;  
			 	
			 	p[2 * 9 + 0] = x * CELL_W + CELL_W - 2;
			 	p[2 * 9 + 1] = y * CELL_H + CELL_H - 2;

			 	
			 	for (int n = 0; n < 10; n ++)
			 	{
					if (IsOnTriangle(p + 2 * n, points+2*i,points+2*(i+1), center))
		 	 		{
	/*			   	 g->SetColor(0xff7ff7);
				   	 g->DrawLine(points[2 * i + 0], points[2 * i + 1], points[2 * (i+1) + 0], points[2 * (i+1) + 1]);
 				   	 g->DrawLine(points[2 * i + 0], points[2 * i + 1], center[0], center[1]);
 				   	 g->DrawLine(points[2 * (i+1) + 0], points[2 * (i+1) + 1],  center[0], center[1]);
 				   	 
				 	 g->SetColor(0xff0000);
				     g->FillRect(p[2 * n + 0] - 2, p[2 * n + 1] - 2, 5, 5);*/
					}

				}
	 		}
		}

	 } 	 
 	 
}

bool Actor::IsCullable(int x1, int y1, int x2, int y2)
{
 	 double near_a,near_b,near_c;
  	 double right_a,right_b,right_c;
  	 double left_a,left_b,left_c;
    double dist1, dist2, dist3, dist4;
    const double nearclipdistance = 4.0;// 4 pixels
    int angle;
     
	switch (m_Dir)
	{
	   	case DIR_LEFT: 	angle = 180;break;
	   	case DIR_RIGHT: angle = 0;	break;
	   	case DIR_UP: 	angle = 270;break;
	   	case DIR_DOWN: 	angle = 90;	break;
	   	default: 		angle = 0;	break;
	}	 
	 
	double rhoview = angle * 2 * M_PI / 360.0;
	double fov = FOV_ANGLE / 2.0;
	 
	 // init planes
	double cosrho = cos(rhoview);
    double sinrho = sin(rhoview);

    near_a = cos(rhoview);
    near_b = sin(rhoview);
    near_c = - nearclipdistance * (near_a * near_a + near_b * near_b);

    right_a = -sin(rhoview - fov);
    right_b =  cos(rhoview - fov);
    right_c = 0;

    left_a =  sin(rhoview + fov);
    left_b = -cos(rhoview + fov);
    left_c = 0;
	 
	/////////////////////////////////////////////////////////////// 
	 
	dist1 = near_a * x1 + near_b * y1 + near_c;
    dist2 = near_a * x2 + near_b * y1 + near_c;
    dist3 = near_a * x2 + near_b * y2 + near_c;
    dist4 = near_a * x1 + near_b * y2 + near_c;

    if (dist1 <= 0 && dist2 <= 0 && dist3 <= 0 && dist4 <= 0)
    {
        // behind near plane
        return true;
    }

    dist1 = right_a * x1 + right_b * y1 + right_c;
    dist2 = right_a * x2 + right_b * y1 + right_c;
    dist3 = right_a * x2 + right_b * y2 + right_c;
    dist4 = right_a * x1 + right_b * y2 + right_c;

    if (dist1 <= 0 && dist2 <= 0 && dist3 <= 0 && dist4 <= 0)
    {
        // behind right plane
        return true;
    }

    dist1 = left_a * x1 + left_b * y1 + left_c;
    dist2 = left_a * x2 + left_b * y1 + left_c;
    dist3 = left_a * x2 + left_b * y2 + left_c;
    dist4 = left_a * x1 + left_b * y2 + left_c;

    if (dist1 <= 0 && dist2 <= 0 && dist3 <= 0 && dist4 <= 0)
    {
        // behind left plane
        return true;
    }
    
    return false;	 
}
bool AngleIsBetween(int a, int aMin, int aMax)
{
 	 a %= 360; if (a < 0) a += 360;
  	 aMin %= 360; if (aMin < 0) aMin += 360;
  	 aMax %= 360; if (aMax < 0) aMax += 360;
  	 
  	 if (aMin > aMax)
  	 	return a <= aMax || a >= aMin;
  	 	
 	 return a >= aMin && a <= aMax;
}

void SwapPoints(int a[2], int b[2])
{
 	 int tmp[2];
 	 
 	 tmp[0] = a[0];
 	 tmp[1] = a[1];
 	 a[0] = b[0];
 	 a[1] = b[1];
 	 b[0] = tmp[0];
 	 b[1] = tmp[1];
}
bool Actor::PointIsBetween(int p[2], int aMin, int aMax)
{
 	 int centerX = m_X + CELL_W / 2; 
 	 int centerY = m_Y + CELL_H / 2;
 	 
 	 int a[2];
 	 int b[2];
 	 int c[2];
 	 
 	 a[0] = centerX;
 	 a[1] = centerY;
 	 b[0] = (int) (0.5 + centerX + 0x3fff * cos (aMin * (2.0 * M_PI) / 360.0));
  	 b[1] = (int) (0.5 + centerY + 0x3fff * sin (aMin * (2.0 * M_PI) / 360.0));
  	 c[0] = (int) (0.5 + centerX + 0x3fff * cos (aMax * (2.0 * M_PI) / 360.0));
  	 c[1] = (int) (0.5 + centerY + 0x3fff * sin (aMax * (2.0 * M_PI) / 360.0));
  	 
  	 
  	 if (a[0] == b[0] && a[1] == b[1])
  	 	return false;
  	 	
 	 if (a[0] == c[0] && a[1] == c[1])
  	 	return false;
  	 	
 	 if (b[0] == c[0] && b[1] == c[1])
  	 	return false;
  	 	
  	 return IsOnTriangle(p,a,b,c);
}

double Distance(int a[2], int b[2])
{
 return sqrt((float)( ( b[0] - a[0]) * (b[0] - a[0]) + (b[1] - a[1]) * (b[1] - a[1])));
}


int Actor::GetAngle(int p[2])
{
 	int centerX = m_X + CELL_W / 2;
 	int centerY = m_Y + CELL_H / 2;
 	int angle;
 	
	double dist = sqrt( ((p[0] - centerX) * (p[0] - centerX)) + ((p[1] - centerY) * (p[1] - centerY)));
	double rad = acos ( -1.0*(double) (p[0] - centerX) / (double)(dist));
	if (rad < 0) rad+= 2 * M_PI;
	if (rad > 2 * M_PI) rad-= 2 * M_PI;
	
	 angle = (int) ((rad * 360.0) / (2 * M_PI));

	
	double _acos = acos ((double) (p[0] - centerX) / (double)(dist));
	double _asin = asin ((double) (p[1] - centerY) / (double)(dist));
	double dcos = cos(_acos) * cos(_acos) + sin(_acos) * sin(_acos);
	double dsin = cos(_asin) * cos(_asin) + sin(_asin) * sin(_asin);
	int dc[2];
	dc[0] = (int)((dist * cos(_acos)) + 0.5);
	dc[1] = (int)((dist * sin(_acos)) + 0.5);
	int ds[2];
	ds[0] = (int)((dist * cos(_asin)) + 0.5);
	ds[1] = (int)((dist * sin(_asin)) + 0.5);

	


	return angle;
}


int surfaceQuad(int x0, int y0, int x1, int y1, int x2, int y2,int x3, int y3)
{
/* return (x0 * y1 - x1 * y0 + x1 * y2 - x2 * y1 + x2 * y3 - x3 * y2 + x3 * y0 - x0 * y3)/2;*/
		return (x0 * (y1 - y2) + x1 * (y2 - y0) + x2 * (y3 - y1) + x3 * (y0 - y2))/2;
}

static int surfaceTriangle(int x0, int y0, int x1, int y1, int x2, int y2)
{
 //return (x0 * y1 - x1 * y0 + x1 * y2 - x2 * y1 + x2 * y0 - x0 * y2)/2;
 return (x0 * (y1 - y2) + x1 * (y2 - y0) + x2 * (y0 - y1))/2;
}

bool isCCW(int x0, int y0, int x1, int y1, int x2, int y2)
{
	return surfaceTriangle(x0, y0, x1, y1, x2, y2) > 0;
}

	
int Dot(int a[2], int b[2])
{
 return a[0] * b[0] + a[1] * b[1]; 	
}

void SwapNode(Node *n)
{
  	double t[2];
	double tmp;
  	t[0] = n->from[0]; n->from[0] = n->to[0]; n->to[0] = t[0];
  	t[1] = n->from[1]; n->from[1] = n->to[1]; n->to[1] = t[1];

	tmp = n->distFrom;	n->distFrom = n->distTo; n->distTo = tmp; 
	tmp= n->min; n->min = n->max; n->max = tmp;
}



int SortNodesByDistance(Node * nodes, int n)
{
#define BUF_SIZE 4*1024
 	 std::vector<Node*> v(BUF_SIZE);
 	 v.push_back(&nodes[0]);
 	 double distance[BUF_SIZE];
 	 int lineIdx [BUF_SIZE];
 	 double _min;
 	 double _max;
 	 
 	 for (int i = 0; i < BUF_SIZE; i ++)
 	 {
	  	 distance[i] = 999999999999999999999999999999999999.99;// - INFINITE
	  	 lineIdx[i] = -1;
	 }
 	 
 	 _min = nodes[0].min;
 	 _max = nodes[0].max;
 	 for (int i = 0; i < n; i ++)
 	 {
  	  	 _min = min(_min, nodes[i].min);
 	 	 _max = max(_max, nodes[i].max);
	 }
	 
  	 for (int idx = 0; idx < n; idx ++)
 	 {
	  	 Node * node = &nodes[idx];
	  	 int i,j;
	  	 i = (int)((node->min - _min) / (_max - _min) * BUF_SIZE);
	  	 j = (int)((node->max - _min) / (_max - _min) * BUF_SIZE);
	  	 
	  	 
	  	 
	  	 for(int s = i, len = j - i; i < j; i++)
	  	 {
  		       double a = (double)(i-s) / (double)len;
  		       double b = 1.0 - a;
		  	   double dist = a*node->distFrom + b*node->distTo;
		  	   if (dist < distance[i])
		  	   {
   	  		   	  distance[i]	= dist;
   	  		   	  lineIdx[i] = node->lineIdx;
  	  	  	   }
 	   	 }
	 }

	int UsedLines[BUF_SIZE];
	
	for (int i = 0; i < BUF_SIZE ; i ++)
	{
 	   UsedLines[i] = 0;
	   
	}

	for (int i = 0; i < BUF_SIZE ; i ++)
	{
 	 	if (lineIdx[i] >= 0)
 	 	   UsedLines[lineIdx[i]] ++;
	   
	}
 	
 	for (int i = 0; i < n; i ++)
 	{
	 	Node * next = &nodes[i];
	 	Node * last = &nodes[n - 1];
	 	
	 	if (UsedLines[next->lineIdx] < 7*0+1 )
	 	{
		 	// efface le next
			next->from[0] = last->from[0];
			next->from[1] = last->from[1];
			next->to[0] = last->to[0];
			next->to[1] = last->to[1];
			next->distFrom = last->distFrom;
			next->distTo = last->distTo;
			next->min = last->min;
			next->max = last->max;
			next->lineIdx = last->lineIdx;
			i --;
			n --;
		}
	 	
	 	
 	}
 	

    FILE * f = fopen("lineIdx.txt","w+");
    for (int i = 0; i < BUF_SIZE; i++)
    	fprintf(f, "%d:\t%d\t%f\n",i, lineIdx[i],distance[i]);
    
    fclose (f);


	return n;
}

inline bool IsOn(double x, Node *n)
{
 	 return x > n->min && x < n->max; 	 
}

inline bool HasCol(Node *a, Node *b)
{
 	 return IsOn(a->min, b) || IsOn(a->max, b);
}

int Actor::GetFovPoints2(Gfx*g,int *points)
{
 	int plane[4];
 	static int pointsProj[2 * NB_LINES_MAX];
 	static double pointsValue[2 * NB_LINES_MAX];
 	static int pointsLineIdx[2 * NB_LINES_MAX];
 	struct Node nodes[4*1024];
 	int nNodes = 0;

 	int centerPlane[2];
 	int angle;
 	int nPoints;
 	
 	int centerX = m_X + CELL_W / 2;
 	int centerY = m_Y + CELL_H / 2;
 	int r = SCREEN_W/8;
 	
	
    FILE * f = fopen("stdout.txt","w+");
 	 	 
	switch (m_Dir)
	{
	   	case DIR_LEFT: 	angle = 180;break;
	   	case DIR_RIGHT: angle = 0;	break;
	   	case DIR_UP: 	angle = 270;break;
	   	case DIR_DOWN: 	angle = 90;	break;
	   	default: 		angle = 0;	break;
	}
	
	
	int fovStartAngle = angle - m_FovAngle / 2;
	int fovEndAngle = fovStartAngle + m_FovAngle;
	
	int fovRayStart[4];
	int fovRayEnd[4];
	
	fovRayStart[0] = centerX;
	fovRayStart[1] = centerY;
	fovRayStart[2] = centerX + (int) (r * cos(fovStartAngle * 2 * M_PI / 360.0));
	fovRayStart[3] = centerY + (int) (r * sin(fovStartAngle * 2 * M_PI / 360.0));
	
	fovRayEnd[0] = centerX;
	fovRayEnd[1] = centerY;
	fovRayEnd[2] = centerX + (int) (r * cos(fovEndAngle * 2 * M_PI / 360.0));
	fovRayEnd[3] = centerY + (int) (r * sin(fovEndAngle * 2 * M_PI / 360.0));



	centerPlane[0] = centerX + (int) (r * cos(angle * 2 * M_PI / 360.0));
	centerPlane[1] = centerY + (int) (r * sin(angle * 2 * M_PI / 360.0));
	
	plane[0] = centerPlane[0] + (int) (r * cos((angle+90) * 2 * M_PI / 360.0));
	plane[1] = centerPlane[1] + (int) (r * sin((angle+90) * 2 * M_PI / 360.0));
	plane[2] = centerPlane[0] + (int) (r * cos((angle-90) * 2 * M_PI / 360.0));
	plane[3] = centerPlane[1] + (int) (r * sin((angle-90) * 2 * M_PI / 360.0));
	
#ifdef DEBUG_FILE 		
	fprintf(f,"plane = %d %d %d %d\n", plane[0],plane[1],plane[2],plane[3]);
	fprintf(f,"centerPlane = %d %d\n", centerPlane[0], centerPlane[1]);
#endif
	
	nPoints = 0;
	int n = m_Map->GetNbLines();
	
	
	// COMPUTE MIN - MAX
	double _min;
	double _max;
	int pointStart[2];
	int pointEnd[2];
	
	GetIntersectionBetween2Lines(pointStart, fovRayStart, plane);
	GetIntersectionBetween2Lines(pointEnd, fovRayEnd, plane);
	_min = _max = min(Distance(pointStart, centerPlane),Distance(pointEnd, centerPlane))-1.01 ;

	
	int _v0[2];
	int _v1[2];
	int _v2[2];
	_v0[0] = plane[0] - centerPlane[0];
	_v0[1] = plane[1] - centerPlane[1];
	_v1[0] = pointStart[0] - centerPlane[0];
	_v1[1] = pointStart[1] - centerPlane[1];
	_v2[0] = pointEnd[0] - centerPlane[0];
	_v2[1] = pointEnd[1] - centerPlane[1];
	
	if (Dot(_v0, _v1) < 0)
	{
		_min *= -1;
	}
	if (Dot(_v0, _v2) < 0)
	{
		_max *= -1;
	}

	if (_min > _max)
	{
	   double tmp;
	   tmp = _min;
	   _min = _max;
	   _max = tmp;
 	}
	

	for (int i = 0; i < n; i++)
	{
 	 	int wall[4];
		m_Map->GetLine(wall, i);

		if (i != 30 && i != 41 && i!=56)
		{
		   	  		   continue;
  		}

		/*if (AngleIsBetween(a0, fovStartAngle, fovEndAngle)
		 || AngleIsBetween(a1, fovStartAngle, fovEndAngle))*/
		 if (PointIsBetween(wall+2*0,fovStartAngle, fovEndAngle)
		 || PointIsBetween(wall+2*1,fovStartAngle, fovEndAngle))
		 {
   		  	int p0[2];
   		  	int p1[2];
   		  	int proj0[4];
   		  	int proj1[4];
   		  	
   		  	int ans = 0;
   		  	
  		  	
   		  	fprintf(f,"------ i=%d -----\n", i);
		  	
   		  	
   		  	proj0[0] = centerX;
   		  	proj0[1] = centerY;
   		  	proj0[2] = wall[2 * 0 + 0];
   		  	proj0[3] = wall[2 * 0 + 1];
   		  	
   		  	//if (!PointIsBetween(wall+2*0,angle-89+ 0*fovStartAngle, angle+89+0*fovEndAngle))// bug quand on est loin
   		  	if (!PointIsBetween(wall+2*0,fovStartAngle, fovEndAngle))// bug quand on est loin
   		  	{
			   if (PointIsBetween(wall+2*0,fovEndAngle, angle + 180))
			   {	
#ifdef DEBUG_FILE 		   		  				   		
			   		fprintf(f,"ans = 1\n");									
#endif			   		
		  	   		GetIntersectionBetween2Lines(proj0 + 2 * 1, fovRayEnd, wall);ans = 1;
				}
				else
				{
#ifdef DEBUG_FILE 		   		  					 	
			   		fprintf(f,"ans = 2\n");
#endif			   		
		  	   		GetIntersectionBetween2Lines(proj0 + 2 * 1, fovRayStart, wall);ans = 2;
		 		} 	   
   		  	}
			else
			{
#ifdef DEBUG_FILE			 	
			 	fprintf(f,"ans = 3\n");
#endif			 	
				ans = 3;	
			}
   		  	
   		  	FILE * fff = fopen("ans0.txt", "w+");
   		  	fprintf(fff,"ans0 = %d\n", ans);
   		  	fclose(fff);
   		  	
  		  	proj1[0] = centerX;
   		  	proj1[1] = centerY;
   		  	proj1[2] = wall[2*1 + 0];
   		  	proj1[3] = wall[2*1 + 1];
  		  	//if (!PointIsBetween(wall+2*1,angle-85+ 0*fovStartAngle, angle+85+0*fovEndAngle))
   		  	
   		  	if (!PointIsBetween(wall+2*1,fovStartAngle, fovEndAngle))// bug quand on est loin
  		  	{
			   if (PointIsBetween(wall+2*1,fovEndAngle, angle + 180))
			   {	
#ifdef DEBUG_FILE 		   		  				   		
		   			fprintf(f,"xcvsdegvdvwxc\n");		
#endif		   			
		  	   		GetIntersectionBetween2Lines(proj1 + 2 * 1, fovRayEnd, wall);
					ans = 4;	
				}
				else
				{
#ifdef DEBUG_FILE 		   		  					 	
				 	fprintf(f,"wxcvwcxvwxvc\n");
#endif				 	

		  	   		GetIntersectionBetween2Lines(proj1 + 2 * 1, fovRayStart, wall);
					ans = 5;	
		 		} 	   
			}
			else
			{
#ifdef DEBUG_FILE 		   		  				 	
			 	fprintf(f,"xcvxcvxcvx\n");
#endif			 	
					ans = 6;	
			}

   		  	fff = fopen("ans1.txt", "w+");
   		  	fprintf(fff,"ans1 = %d\n", ans);
   		  	fclose(fff);

   		  	

   		  	GetIntersectionBetween2Lines(p0, plane, proj0);
   		  	GetIntersectionBetween2Lines(p1, plane, proj1);
   		  	
   		  	p0[0] -= centerPlane[0];
   		  	p0[1] -= centerPlane[1];
   		  	
   		  	p1[0] -= centerPlane[0];
   		  	p1[1] -= centerPlane[1];
   		  	

   		  	
   		  	/////////////////// AUTRES METHODES ////////////////
   		  	Node * node = &nodes[nNodes];
   		  	
   		  	p0[0] += centerPlane[0];
   		  	p0[1] += centerPlane[1];
   		  	p1[0] += centerPlane[0];
   		  	p1[1] += centerPlane[1];

   		  	
   		  	node->from[0] = p0[0];
   		  	node->from[1] = p0[1];
   		  	node->to[0] = p1[0];
   		  	node->to[1] = p1[1];
   		  	node->distFrom = Distance(proj0 + 2 * 0, proj0 + 2 * 1);
   		  	node->distTo = Distance(proj1 + 2 * 0, proj1 + 2 * 1);
   		  	node->min = Distance(p0, centerPlane);//sqrt( (p0[0] * p0[0]) + (p0[1] * p0[1]));//faire une rotation ici
   		  	node->max = Distance(p1, centerPlane);//sqrt( (p1[0] * p1[0]) + (p1[1] * p1[1]));//faire une rotation ici
   		  	node->lineIdx = i;

			// ça foire ici :(
			/// y a des problème avec le signe de min et max.....
			
			// si entre p0 et centerPlane => negatif
			int v0[2];
			int v1[2];
			int v2[2];
			v0[0] = plane[0] - centerPlane[0];
			v0[1] = plane[1] - centerPlane[1];
			v1[0] = p0[0] - centerPlane[0];
			v1[1] = p0[1] - centerPlane[1];
			v2[0] = p1[0] - centerPlane[0];
			v2[1] = p1[1] - centerPlane[1];


			if (Dot(v0, v1) < 0)
			{
				node->min *= -1;
 	 		}
			if (Dot(v0, v2) < 0)
			{
				node->max *= -1;
 	 		}

 	 					   		  	


			 if (node->min > node->max)
			 {
			   SwapNode(node);
			 }
			 
			 if (node->min < _min)
			 {
			  	node->min = _min;
			 }
			 
 			 if (node->max > _max)
			 {
			  	node->max = _max;
			 }




//if (i == 166 || i == 133)
if (false)
{
g->SetColor(0xff0000);
g->FillRect(centerPlane[0] - 2,centerPlane[1] - 2, 5,5);

g->SetColor(0x0000ff);
g->DrawLine(plane[0],plane[1],plane[2],plane[3]);

g->SetColor(0x00ff00);
g->DrawLine(p0[0],p0[1],proj0[2],proj0[3]);
g->SetColor(0xff7ff7);
g->DrawLine(p1[0],p1[1],proj1[2],proj1[3]);

g->SetColor(0x000000);

	  FILE * f0;
	  if (i == 57)
	  f0 = fopen("line57.txt", "w+");	
	  else if (i == 32)
	  f0 = fopen("line32.txt", "w+");
	  else
	  {f0 = fopen("line000000.txt", "w+");}	
	   fprintf(f0,"line = %d\n", node->lineIdx);
	   fprintf(f0,"_min=%f _max=%f\n", _min, _max);
	   fprintf(f0,"min=%f max=%f\n", node->min, node->max);
	   fprintf(f0,"from %f %f\n", node->from[0], node->from[1]);
	   fprintf(f0,"to %f %f\n", node->to[0], node->to[1]);
			   
	   fprintf(f0,"distFrom=%f distTo=%f\n\n", node->distFrom, node->distTo);

	fclose(f0);	 



}			   


//#ifdef DEBUG_FILE 		   		  			   
			   fprintf(f,"line = %d\n", node->lineIdx);
   	   		   fprintf(f,"_min=%f _max=%f\n", _min, _max);
			   fprintf(f,"min=%f max=%f\n", node->min, node->max);
			   fprintf(f,"from %f %f\n", node->from[0], node->from[1]);
  			   fprintf(f,"to %f %f\n", node->to[0], node->to[1]);
			   fprintf(f,"distFrom=%f distTo=%f\n\n", node->distFrom, node->distTo);
//#endif			   
   		  	nNodes ++;
   		  	
   		 }

	 }	

#ifdef DEBUG_FILE 		   		  		 
	 fprintf(f,"nNodes = %d\n", nNodes);
#endif	 

/*		g->SetColor(0xffff00);
		g->DrawLine(plane[0],plane[1],plane[2],plane[3]);*/

	for (int i = 0; i < nNodes; i++)
	{
		int idx = nodes[i].lineIdx;
		int wall[4];
		m_Map->GetLine(wall, idx);
	
	/*	g->SetColor(0x00ff00);
		g->DrawLine(nodes[i].from[0],nodes[i].from[1],nodes[i].to[0],nodes[i].to[1]);
		g->SetColor(0x0000ff);
		g->FillRect(nodes[i].from[0]-2,nodes[i].from[1]-2, 5, 5);
		g->SetColor(0x000000);
		g->FillRect(nodes[i].to[0]-2,nodes[i].to[1]-2,5,5);*/
	}


#ifdef DEBUG_FILE 		   		  	
            fprintf(f,"nPoints = %d\n", nPoints);
#endif
            
if (false)
{				 
bool change;
do
{	
	change = false;
	
	// Optimize Occlusion
	for (int i = 0; i < nPoints; i+= 2)
	{
	  	int p0[2];
	  	int p1[2];
	  	double v0[2];
	  	double v1[2];

	  	p0[0] = pointsProj[2 * i + 0];
	  	p0[1] = pointsProj[2 * i + 1];
	  	p1[0] = pointsProj[2 * i + 2];
	  	p1[1] = pointsProj[2 * i + 3];
	  	
	  	v0[0] = pointsValue[2 * i + 0];// distance entre l'oeil et le mur
	  	v0[1] = pointsValue[2 * i + 1];// point projeté sur une dimension
	  	v1[0] = pointsValue[2 * i + 2];// distance entre l'oeil et le mur
	  	v1[1] = pointsValue[2 * i + 3];// point projeté sur une dimension
	  	
	  	for (int j = 0; j < nPoints; j += 2)
	  	{
 		  	int _p0[2];
	  		int _p1[2];
	  		double _v0[2];
	  		double _v1[2];

			_p0[0] = pointsProj[2 * j + 0];
			_p0[1] = pointsProj[2 * j + 1];
			_p1[0] = pointsProj[2 * j + 2];
			_p1[1] = pointsProj[2 * j + 3];
	  	
		  	_v0[0] = pointsValue[2 * j + 0];// distance entre l'oeil et le mur
	  		_v0[1] = pointsValue[2 * j + 1];// point projeté sur une dimension
			_v1[0] = pointsValue[2 * j + 2];// distance entre l'oeil et le mur
			_v1[1] = pointsValue[2 * j + 3];// point projeté sur une dimension
		 	
		 	if (i != j)
		 	{
		 	
			   	if (v0[0] < _v0[0] && v1[0] < _v1[0] // on regarde si i est plus près de j
					  && min(v0[1], v1[1])< min(_v0[1], _v1[1])	&&	max(v0[1], v1[1])> max(_v0[1], _v1[1]))// on regarde si i cache j
				{
				 	  // on efface j
					pointsProj[2 * j + 0] = pointsProj[2 * (nPoints-2) + 0];
					pointsProj[2 * j + 1] = pointsProj[2 * (nPoints-2) + 1];
					pointsProj[2 * j + 2] = pointsProj[2 * (nPoints-2) + 2];
					pointsProj[2 * j + 3] = pointsProj[2 * (nPoints-2) + 3];
	  	
		  			pointsValue[2 * j + 0] = pointsValue[2 * (nPoints-2) + 0];
	  				pointsValue[2 * j + 1] = pointsValue[2 * (nPoints-2) + 1];
					pointsValue[2 * j + 2] = pointsValue[2 * (nPoints-2) + 2];
			  		pointsValue[2 * j + 3] = pointsValue[2 * (nPoints-2) + 3];
			  		
			  		pointsLineIdx[2 * j + 0] = pointsLineIdx[2 * (nPoints-2) + 0];

					   change = true;
					j -= 2;
					nPoints -=2;
					   	   	 			
				}

			}
	   	}
 	}
} while (change);
	
}

//#ifdef DEBUG_FILE 		   		  	
			fprintf(f,"nNodes = %d\n", nNodes);
			for (int i = 0; i < nNodes; i++)
			{
				int idx = nodes[i].lineIdx;
				int wall[4];
				m_Map->GetLine(wall, idx);
				fprintf(f,"%d lineIdx = %d min=%f max=%f  distForm=%f distTo=%f\n", i,idx, nodes[i].min,  nodes[i].max, nodes[i].distFrom, nodes[i].distTo);

				//g->DrawLine(wall[0],wall[1],wall[2],wall[3]);
			}

 	fprintf(f,"/////////////////////////////////////\n");
//#endif

//bool changed;
for (int z = 0; z <10; z ++)
 {
//   	changed = false;
for (int i = 0; i < nNodes; i ++ )
{
  	Node * cur = &nodes[i];

	for (int j = 0; j < nNodes; j ++ )
	{
  	 	Node * next = &nodes[j];
  	 	
  	 	if (cur != next)
  	 	{
		   	// si "cur" plus près et qu il cache "next"	
		   	if (max(cur->distFrom, cur->distTo) < min(next->distFrom, next->distTo)
			   && cur->min < next->min 
			   && cur->max > next->max)
		   	{
			   Node * last = &nodes[nNodes - 1];
#ifdef DEBUG_FILE 		   		  				   
			   fprintf(f,"------------------------------------\n");
			   fprintf(f,"cur->distFrom 	%f\n",cur->distFrom);
			   fprintf(f,"next->distFrom 	%f\n",next->distFrom);
			   fprintf(f,"cur->distTo 		%f\n",cur->distTo);
			   fprintf(f,"next->distTo		%f\n",next->distTo);
   			   fprintf(f,"cur->min 		%f\n",cur->min);
			   fprintf(f,"next->min		%f\n",next->min);
   			   fprintf(f,"cur->max 		%f\n",cur->max);
			   fprintf(f,"next->max		%f\n",next->max);


   			   fprintf(f,"------------------------------------\n");
#endif
			   
			   // efface le next
			   next->from[0] = last->from[0];
   			   next->from[1] = last->from[1];
			   next->to[0] = last->to[0];
   			   next->to[1] = last->to[1];
			   next->distFrom = last->distFrom;
			   next->distTo = last->distTo;
			   next->min = last->min;
			   next->max = last->max;
			   next->lineIdx = last->lineIdx;
			   //changed = true;
			   nNodes --;
			   j =0;
			}	   		 
		   		 
  		}
  	 	
	}
}

}/* while (changed)*/;






#ifdef DEBUG_FILE 		   		  	

	  		fprintf(f,"nPoints = %d\n", nPoints);

			
			/*for (int i = 0; i < nPoints; i++)
			{
				int idx = pointsLineIdx[4 * i + 0];
				int wall[4];
				m_Map->GetLine(wall, idx);
				g->SetColor(0xff0000);
				g->DrawLine(wall[0],wall[1],wall[2],wall[3]);
			}
			*/
			fprintf(f,"nNodes = %d\n", nNodes);
#endif
			
			int nb = nNodes;
			nNodes =  SortNodesByDistance(nodes, nb);
#ifdef DEBUG_FILE			
			fprintf(f,"nNodes = %d\n", nNodes);
#endif
			

		

	//int fovStartAngle = angle - m_FovAngle / 2;
	nPoints = 0;
 	int x = -1;
 	int y = -1;
 	
 	 points[2 * nPoints + 0] = centerX;
  	 points[2 * nPoints + 1] = centerY;
  	 nPoints ++;

	for (double a = fovStartAngle; a <= fovStartAngle + m_FovAngle; a += 0.075)
	{
	 	int n;
					 
	  	//n = GetRayIntersection(points + 2 * nPoints, a);
		n = GetRayIntersection2(points + 2 * nPoints, a, nodes, nNodes);
	  	SortPoints(points + 2 * nPoints, n);
	  	
	  	if (n && !(x == points[2 * nPoints + 0] && y == points[2 * nPoints + 1]))
		{
		  x = points[2 * nPoints + 0];
		  y = points[2 * nPoints + 1];
  		  nPoints ++;
  	  	}
	}
	
 	 points[2 * nPoints + 0] = centerX;
  	 points[2 * nPoints + 1] = centerY;
  	 nPoints ++;

if (false && true)
{
	//g->FillPolygon(points, nPoints);
	for (int i = 0; i < nPoints-1; i++)
	{
	 	g->SetColor(0xffffff);
	 	g->DrawLine(points[2*i+0], points[2*i+1], points[2*i+2] ,points[2*i+3] );
 	}
 	g->SetAlpha(128);
 	g->SetColor(0xffffff);
 	g->FillPolygon(points, nPoints);
 	g->SetAlpha(255);
}	
	
	
		
		
	for (int i = 0; i < nNodes; i++)
	{
		int idx = nodes[i].lineIdx;
		int wall[4];
		m_Map->GetLine(wall, idx);
#ifdef DEBUG_FILE				
		fprintf(f,"%d lineIdx = %d min=%f max=%f  distForm=%f distTo=%f\n", i,idx, nodes[i].min,  nodes[i].max, nodes[i].distFrom, nodes[i].distTo);
#endif										
		g->SetColor(0xff7ff7);
		g->SetColor(0x000000);
		g->DrawLine(wall[0],wall[1],wall[2],wall[3]);
		m_Map->EnableLine(idx);
	}

		fclose(f);			

	
	
	FILE * ff = fopen("sorted.txt", "w+");
	bool changed = true;
while (changed)
{	
	changed = false;
for (int z = 0; z < 2; z ++)
{	
	
	for (int i = 0; i < nNodes; i ++ )
	{
  	 	Node * cur = &nodes[i];

		for (int j = 0; j < nNodes; j ++ )
		{
		 	Node * next = &nodes[j];
  	 	
		  	if (cur != next)
  	 		{
				// si "cur" plus près et qu il cache "next"	
		   		//if (max(cur->distFrom, cur->distTo) < min(next->distFrom, next->distTo)
		   		//-if (cur->min > next->min && cur->min < next->max)
		   		if (IsOn(cur->min,  next))
		   		{
			   	   	// cas 0:		 
	 				if (next->max < cur->max)
	 				{
					   if (min (cur->distFrom, cur->distTo)< min(next->distFrom, next->distTo))
					   {
			   		   	   next->max = cur->min;
			   		   	   next->to[0] = cur->from[0];
			   		   	   next->to[1] = cur->from[1];
			   		   	   //next->distTo = cur->distFrom;
			   		   	  // UpdateNode(next);
						 }
						 else
						 {
			   		   	   cur->min = next->max;
			   		   	   cur->from[0] = next->to[0];
			   		   	   cur->from[1] = next->to[1];
				  		 }
						 changed = true;	   	
					}
					// cas 1 : (next->max > cur->max) on a 3 traits
					else
					{
					   if (min (cur->distFrom, cur->distTo)< min(next->distFrom, next->distTo))
					   {
					   	  // 3 traits
   			   		   	   Node  * add = &nodes[nNodes];
   			   		   	   add->min = cur->max;
			   		   	   add->from[0] = cur->to[0];
			   		   	   add->from[1] = cur->to[1];
			   		   	   add->max = next->max;
   			   		   	   add->to[0] = next->to[0];
			   		   	   add->to[1] = next->to[1];
			   		   	   add->lineIdx = next->lineIdx;
					   	  	   

			   		   	   next->max = cur->min;
			   		   	   next->to[0] = cur->from[0];
			   		   	   next->to[1] = cur->from[1];
			   		   	   

			   		   	   nNodes ++;
							changed = true;
			   		   	   //next->distTo = ???;
						 }
						 else
						 {
						  	// 1 seul traits : garde next, efface cur
						  	Node  * last= &nodes[nNodes - 1];
						  	cur->min = last->min;
			   		   	   	cur->max = last->max;
			   		   	   	cur->from[0] = last->from[0];
			   		   	   	cur->from[1] = last->from[1];
		   		   	   		cur->to[0] = last->to[0];
			   		   	   	cur->to[1] = last->to[1];
			   		   	   	cur->lineIdx = last->lineIdx;
			   		   	   			   	   
			   		   	   	nNodes --;
			   		   	   	changed = true;
				  		 }	   	
				 	}

				   			 
				}
				
		   /*	if (max(cur->distFrom, cur->distTo) < min(next->distFrom, next->distTo)
			   && cur->min < next->min 
			   && cur->max > next->max)
		   	{
			   Node * last = &nodes[nNodes - 1];
			   // efface le next
			   next->from[0] = last->from[0];
   			   next->from[1] = last->from[1];
			   next->to[0] = last->to[0];
   			   next->to[1] = last->to[1];
			   next->distFrom = last->distFrom;
			   next->distTo = last->distTo;
			   next->min = last->min;
			   next->max = last->max;
			   next->lineIdx = last->lineIdx;
			   changed = true;
			   nNodes --;
			   j =0;
			}*/	   		 

				
				
				
				
				
				if (cur->min < next->min && cur->min < next->max)
		   		{
				   	// cas 0:		 
	 				if (next->max < cur->max)
	 				{					   			 
					}
					// cas 1
					else
					{					 	
				 	}	  			
					//changed = true; 
				}
			}
		}

	}
}
	
}
	

	nb = nNodes;
	nNodes =  SortNodesByDistance(nodes, nb);
	
	int respoints[1024];
	int nbrespoints = 0;
	
	/*respoints[2 * nbrespoints + 0] = centerX;
	respoints[2 * nbrespoints + 1] = centerY;
	nbrespoints++;*/
	
	fprintf(ff,"min=%f max=%f\n", _min,  _max);	
	
	for (int i = 0; i < nNodes; i ++)
	{
	 int idx = nodes[i].lineIdx;
	 fprintf(ff,"%d lineIdx = %d min=%f max=%f  distForm=%f distTo=%f\n", i,idx, nodes[i].min,  nodes[i].max, nodes[i].distFrom, nodes[i].distTo);	
	 double ray0[4];
 	 double ray1[4];
 	 int wall_[4];
 	 double wall[4];
 	 double p0[2];
 	 double p1[2];
 	 
	 ray0[0] = centerX;
	 ray0[1] = centerY;
	 ray0[2] = nodes[i].from[0];
 	 ray0[3] = nodes[i].from[1];
 	 
	 ray1[0] = centerX;
	 ray1[1] = centerY;
	 ray1[2] = nodes[i].to[0];
 	 ray1[3] = nodes[i].to[1];

	 m_Map->GetLine(wall_, idx);
	 wall[0] = (double) wall_[0];
	 wall[1] = (double) wall_[1];
	 wall[2] = (double) wall_[2];	 	 
	 wall[3] = (double) wall_[3];	 
	 
	 GetIntersectionBetween2Lines(p0, ray0, wall);
 	 GetIntersectionBetween2Lines(p1, ray1, wall);
 	 
 	 g->SetColor(0xff0000);
 	 g->FillRect((int) (0.5 + p0[0] - 2), (int) (0.5 + p0[1] - 2), 5, 5);
  	 g->FillRect((int) (0.5 + p1[0] - 2), (int) (0.5 + p1[1] - 2), 5, 5);
	 
 	respoints[2 * nbrespoints + 0] = (int)(0.5 + p0[0]);
	respoints[2 * nbrespoints + 1] = (int)(0.5 + p0[1]);
 	respoints[2 * nbrespoints + 2] = (int)(0.5 + p1[0]);
	respoints[2 * nbrespoints + 3] = (int)(0.5 + p1[1]);
	nbrespoints+=2;

	 
	 
	}
/*	respoints[2 * nbrespoints + 0] = centerX;
	respoints[2 * nbrespoints + 1] = centerY;
	nbrespoints++;*/

if (true)
{	
	g->SetColor(0xff7ff7);
	g->SetAlpha(200);
	for (int i = 0; i < nbrespoints; i+=2)
	{
	 	int x0;
	 	int y0;
	 	int x1;
	 	int y1;
	 	
	 	x1 = respoints[2 * i + 0];
		y1 = respoints[2 * i + 1];
 		x0 = respoints[2 * i + 2];
		y0 = respoints[2 * i + 3];

	 	g->FillTriangle(centerX, centerY,  x0,y0, x1,y1);	
 	}
}
	
	
	g->SetAlpha(255);
	fclose(ff);
			
	return nPoints;
}

void Actor::UpdateNodes(Node * nodes, int nNodes)
{
 	 for (int i = 0; i < nNodes; i ++)
 	 {
		 	  UpdateNode(nodes + i);
	 }
}


void Actor::UpdateNode(Node * node)
{
 	int plane[4];
 	int centerPlane[2];
 	int angle;

 	
 	int centerX = m_X + CELL_W / 2;
 	int centerY = m_Y + CELL_H / 2;
 	int r = SCREEN_W;
 	
 	 	 
	switch (m_Dir)
	{
	   	case DIR_LEFT: 	angle = 180;break;
	   	case DIR_RIGHT: angle = 0;	break;
	   	case DIR_UP: 	angle = 270;break;
	   	case DIR_DOWN: 	angle = 90;	break;
	   	default: 		angle = 0;	break;
	}
	
	
	int fovStartAngle = angle - m_FovAngle / 2;
	int fovEndAngle = fovStartAngle + m_FovAngle;
	
	int fovRayStart[4];
	int fovRayEnd[4];
	
	fovRayStart[0] = centerX;
	fovRayStart[1] = centerY;
	fovRayStart[2] = centerX + (int) (r * cos(fovStartAngle * 2 * M_PI / 360.0));
	fovRayStart[3] = centerY + (int) (r * sin(fovStartAngle * 2 * M_PI / 360.0));
	
	fovRayEnd[0] = centerX;
	fovRayEnd[1] = centerY;
	fovRayEnd[2] = centerX + (int) (r * cos(fovEndAngle * 2 * M_PI / 360.0));
	fovRayEnd[3] = centerY + (int) (r * sin(fovEndAngle * 2 * M_PI / 360.0));



	centerPlane[0] = centerX + (int) (r * cos(angle * 2 * M_PI / 360.0));
	centerPlane[1] = centerY + (int) (r * sin(angle * 2 * M_PI / 360.0));
	
	plane[0] = centerPlane[0] + (int) (r * cos((angle+90) * 2 * M_PI / 360.0));
	plane[1] = centerPlane[1] + (int) (r * sin((angle+90) * 2 * M_PI / 360.0));
	plane[2] = centerPlane[0] + (int) (r * cos((angle-90) * 2 * M_PI / 360.0));
	plane[3] = centerPlane[1] + (int) (r * sin((angle-90) * 2 * M_PI / 360.0));
	


	
	
	// COMPUTE MIN - MAX
	double _min;
	double _max;
	int pointStart[2];
	int pointEnd[2];
	
	GetIntersectionBetween2Lines(pointStart, fovRayStart, plane);
	GetIntersectionBetween2Lines(pointEnd, fovRayEnd, plane);
	_min = _max = min (Distance(pointStart, centerPlane),Distance(pointEnd, centerPlane))- 1.01 ;
	
	int _v0[2];
	int _v1[2];
	int _v2[2];
	_v0[0] = plane[0] - centerPlane[0];
	_v0[1] = plane[1] - centerPlane[1];
	_v1[0] = pointStart[0] - centerPlane[0];
	_v1[1] = pointStart[1] - centerPlane[1];
	_v2[0] = pointEnd[0] - centerPlane[0];
	_v2[1] = pointEnd[1] - centerPlane[1];
	
	if (Dot(_v0, _v1) < 0)
	{
		_min *= -1;
	}
	if (Dot(_v0, _v2) < 0)
	{
		_max *= -1;
	}

	if (_min > _max)
	{
	   double tmp;
	   tmp = _min;
	   _min = _max;
	   _max = tmp;
 	}
	
	   	int wall[4];// pb ici
		m_Map->GetLine(wall, node->lineIdx);
		
		wall[2 * 0 + 0] = (int)(0.5 + node->from[0]);
		wall[2 * 0 + 1] = (int)(0.5 + node->from[1]);
		wall[2 * 1 + 0] = (int)(0.5 + node->to[0]);
		wall[2 * 1 + 1] = (int)(0.5 + node->to[1]);
		
		

   		  	int p0[2];
   		  	int p1[2];
   		  	int proj0[4];
   		  	int proj1[4];
   		  	
   		  	proj0[0] = centerX;
   		  	proj0[1] = centerY;
   		  	proj0[2] = wall[2 * 0 + 0];
   		  	proj0[3] = wall[2 * 0 + 1];
   		  	//if (!PointIsBetween(wall+2*0,angle-85+ 0*fovStartAngle, angle+85+0*fovEndAngle))
   		  	if (!PointIsBetween(wall+2*0,fovStartAngle, fovEndAngle))// bug quand on est loin
   		  	{
			   if (PointIsBetween(wall+2*0,fovEndAngle, angle + 180))
			   {	
		  	   		GetIntersectionBetween2Lines(proj0 + 2 * 1, fovRayEnd, wall);
				}
				else
				{
		  	   		GetIntersectionBetween2Lines(proj0 + 2 * 1, fovRayStart, wall);
		 		} 	   
   		  	}

			
   		  	
  		  	proj1[0] = centerX;
   		  	proj1[1] = centerY;
   		  	proj1[2] = wall[2*1 + 0];
   		  	proj1[3] = wall[2*1 + 1];
   		  	//if (!PointIsBetween(wall+2*1,angle-85+ 0*fovStartAngle, angle+85+0*fovEndAngle))
   		  	if (!PointIsBetween(wall+2*1,fovStartAngle, fovEndAngle))// bug quand on est loin
  		  	{
			   if (PointIsBetween(wall+2*1,fovEndAngle, angle + 180))
			   {	
		  	   		GetIntersectionBetween2Lines(proj1 + 2 * 1, fovRayEnd, wall);
				}
				else
				{
		  	   		GetIntersectionBetween2Lines(proj1 + 2 * 1, fovRayStart, wall);
		 		} 	   
			}


   		  	

   		  	GetIntersectionBetween2Lines(p0, plane, proj0);
   		  	GetIntersectionBetween2Lines(p1, plane, proj1);
   		  	
   		  	p0[0] -= centerPlane[0];
   		  	p0[1] -= centerPlane[1];
   		  	
   		  	p1[0] -= centerPlane[0];
   		  	p1[1] -= centerPlane[1];
   		  	

   		  	
   		  	/////////////////// AUTRES METHODES ////////////////

   		  	
   		  	p0[0] += centerPlane[0];
   		  	p0[1] += centerPlane[1];
   		  	p1[0] += centerPlane[0];
   		  	p1[1] += centerPlane[1];

   		  	
   		  	node->from[0] = p0[0];
   		  	node->from[1] = p0[1];
   		  	node->to[0] = p1[0];
   		  	node->to[1] = p1[1];
   		  	
   		  	node->distFrom = Distance(proj0 + 2 * 0, proj0 + 2 * 1);
   		  	node->distTo = Distance(proj1 + 2 * 0, proj1 + 2 * 1);
   		  	node->min = Distance(p0, centerPlane);//sqrt( (p0[0] * p0[0]) + (p0[1] * p0[1]));//faire une rotation ici
   		  	node->max = Distance(p1, centerPlane);//sqrt( (p1[0] * p1[0]) + (p1[1] * p1[1]));//faire une rotation ici


			// ça foire ici :(
			/// y a des problème avec le signe de min et max.....
			
			// si entre p0 et centerPlane => negatif
			int v0[2];
			int v1[2];
			int v2[2];
			v0[0] = plane[0] - centerPlane[0];
			v0[1] = plane[1] - centerPlane[1];
			v1[0] = p0[0] - centerPlane[0];
			v1[1] = p0[1] - centerPlane[1];
			v2[0] = p1[0] - centerPlane[0];
			v2[1] = p1[1] - centerPlane[1];


			if (Dot(v0, v1) < 0)
			{
				node->min *= -1;
 	 		}
			if (Dot(v0, v2) < 0)
			{
				node->max *= -1;
 	 		}

 	 					   		  	
			   
			 if (node->min > node->max)
			 {
			   SwapNode(node);
			 }
			 
			 if (node->min < _min)
			 {
			  	node->min = _min;
			 }
			 
 			 if (node->max > _max)
			 {
			  	node->max = _max;
			 }

}

