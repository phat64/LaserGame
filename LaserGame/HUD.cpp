#include "Includes.h"

void HUD::Render(Gfx * g, Actor ** actors, int nActors)
{
   g->SetColor(0x000000);
   g->DrawLine(HUD_X, HUD_Y, HUD_X + HUD_W - 1, HUD_Y);
   g->DrawLine(HUD_X + HUD_W - 1, HUD_Y,  HUD_X + HUD_W - 1, HUD_Y + HUD_H - 1);
   g->DrawLine(HUD_X + HUD_W - 1, HUD_Y + HUD_H - 1, HUD_X, HUD_Y + HUD_H - 1);
   g->DrawLine(HUD_X, HUD_Y + HUD_H - 1, HUD_X, HUD_Y);
   
   g->DrawLine(HUD_X + HUD_W, HUD_Y,  HUD_X + HUD_W, HUD_Y + HUD_H);
   g->DrawLine(HUD_X + HUD_W, HUD_Y + HUD_H, HUD_X, HUD_Y + HUD_H);
   
   g->SetColor(0x000000);
   g->DrawLine(AREA_X, AREA_Y, AREA_X + AREA_W - 1, AREA_Y);
   g->DrawLine(AREA_X + AREA_W - 1, AREA_Y,  AREA_X + AREA_W - 1, AREA_Y + AREA_H - 1);
   g->DrawLine(AREA_X + AREA_W - 1, AREA_Y + AREA_H - 1, AREA_X, AREA_Y + AREA_H - 1);
   g->DrawLine(AREA_X, AREA_Y + AREA_H - 1, AREA_X, AREA_Y);
      
   int x = 0;
   int w = (5 * FONT_W + 3 * CELL_W) * nActors;
   
   x = (HUD_W - w)/2;
   for (int i = 0; i < nActors; i ++)
   {
   	  g->SetColor(actors[i]->GetColor());
   	  g->FillCircle(HUD_X + CELL_W + x, HUD_Y + CELL_H, CELL_W, CELL_H);
		   
	  g->SetColor(0x000000);
      Render2Digits(g, HUD_X+ CELL_W + CELL_W + x, HUD_Y + CELL_H, 99);
	  RenderDigit(g, HUD_X + CELL_W+ CELL_W + x + 2 * FONT_W, 	HUD_Y + CELL_H, 10);
	  Render2Digits(g, HUD_X + CELL_W+ CELL_W + x + 3 * FONT_W, HUD_Y + CELL_H, 99);
	  x += 5 * FONT_W + 3 * CELL_W;
   }
}

void HUD::RenderDigit(Gfx * g, int x, int y, int d)
{
 	 int w = FONT_W - 1;
	 int h = FONT_H - 1;

	 if (d >= 10)
	 {
	  	g->DrawLine(x, y + h - 1, x + w - 1, y);
	  	return;
 	 }
 	 
 	 static const bool data[10][7] = 
  	 {
	  	  {true, true, true, true, true, true, false},		//0
	  	  {false, true, true, false, false, false, false},	//1
	  	  {true, true, false, true, true, false, true},		//2
	  	  {true, true, true, true, false, false, true},		//3
	  	  {false, true, true, false, false, true, true},	//4
	  	  {true, false, true, true, false, true, true},		//5
	  	  {true, false, true, true, true, true, true},		//6
	  	  {true, true, true, false, false, false, false},	//7
	  	  {true, true, true, true, true, true, true},		//8
	  	  {true, true, true, true, false, true, true},		//9
  	 };
 	 
 	 if (data[d][0])	g->DrawLine(x, y, x + w - 1, y);
 	 if (data[d][1])	g->DrawLine(x + w - 1, y, x + w - 1, y + h / 2);
  	 if (data[d][2])	g->DrawLine(x + w - 1, y + h / 2, x + w - 1, y + h - 1);
  	 if (data[d][3])	g->DrawLine(x, y + h - 1, x + w -1, y + h -1);
  	 if (data[d][4])	g->DrawLine(x, y + h - 1, x, y + h / 2);
   	 if (data[d][4])	g->DrawLine(x, y + h - 1, x, y + h / 2);
   	 if (data[d][5])	g->DrawLine(x, y, x, y + h / 2);
   	 if (data[d][6])	g->DrawLine(x, y + h / 2, x + w - 1, y + h / 2);
}

void HUD::Render2Digits(Gfx * g, int x, int y, int d)
{
 	 int d0;
 	 int d1;
 	 
 	 if (d > 99) d = 99;
 	 if (d < 0)  d = 0;
 	 
 	 d0 = d / 10;
 	 d1 = d % 10;
 	 
 	 RenderDigit(g, x, y, d0);
  	 RenderDigit(g, x + FONT_W, y, d1);
}

void HUD::RenderNumber(Gfx * g, int x, int y, int n)
{
 	 unsigned char digits[10];
 	 int nDigits;
 	 int d;
 	 
 	 if (n < 0) n *= -1;
 	 
 	 if (n == 0)
 	 {
	  	RenderDigit(g, x, y, 0);
	  	return;
   	 }
   	 
   	 nDigits = 0;
   	 while (n > 0)
   	 {
	  	   d = n % 10;
	  	   n /= 10;
	  	   if (d < 0) d += 10;
	  	   digits[nDigits ++] = d;
  	 }
  	 
  	 for (int i = nDigits - 1; i >= 0; i --)
  	 {
	  	 RenderDigit(g, x, y, digits[i]);
	  	 x += FONT_W;
	 }
}
