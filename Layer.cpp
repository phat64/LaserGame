#include "Includes.h"


void Layer::Init()
{
 	 for (int j = 0; j < AREA_H; j ++)
 	 {
	  	 for (int i = 0; i < AREA_W; i ++)
	  	 {
	  	  	 m_Data[j][i] = true;
		 }
	 }
	 
  	 for (int j = 0; j < NB_CELLS_H; j ++)
 	 {
	  	 for (int i = 0; i < NB_CELLS_W; i ++)
	  	 {
	  	  	 m_Cells[j][i] = true;
		 }
	 }
}

void Layer::Render(Gfx * g)
{
 	 /*for (int j = 0; j < NB_CELLS_H; j ++)
 	 {
	  	 for (int i = 0; i < NB_CELLS_W; i ++)
	  	 {
	  	  	 //m_Cells[j][i] = true;
	  	  	 int x = i * CELL_W;
	  	  	 int y = j * CELL_H;
	  	  	 
	  	  	 if (m_Cells[j][i])
	  	  	 {
                for (int x0 = x; x < x + CELL_W; x ++)
                {
                    for (int y0 = y; y < y + CELL_H; y ++)
                    {
                        if (m_Screen[y0][x0])
                        g->FillRect(x0, y0, 1,1);
                    }
                }
             }
		 }
	 }*/
	 
	  //FILE * f = fopen("stdout.txt","w+");
/*	int x,y;
    for (x = 0; x < AREA_W/32; x ++)
    {
	 	   	 for (y = 0; y < AREA_H/32; y ++)
             {
            // if (m_Data[y][x])
            	  //fprintf(f,"x=%d y=%d\n", x, y);
   	  			  g->SetColor(0);
   	  			  g->SetAlpha(255);
             	  g->FillRect(x, y, 11,11);
             }
	}
	*/
	UpdateImage();
	g->DrawImage(0, 0, AREA_W, AREA_H, m_Image);

	//fclose(f);
}

void Layer::RenderCells(Gfx*g)
{
 	 for (int j = 0; j < NB_CELLS_H; j++)
 	 {
 	  	 for (int i = 0; i < NB_CELLS_W; i ++)
 	  	 {
		  	 if (m_Cells[j][i])
		  	 {
			   int x = i * CELL_W;
			   int y = j * CELL_H;
			   g->SetColor(0);
			   g->FillRect(x, y, CELL_W + 1, CELL_H + 1);
   			 }
	  	 }
	 }
}

void Layer::UpdateImage()
{
    for (int y = 0; y < AREA_H; y ++)
    {
 	     for (int x = 0; x < AREA_W; x ++)
      	 {
		  	 int idx = (y * AREA_W + x) * 4;
		  	 m_Image[idx + 0] = 0;
		  	 m_Image[idx + 1] = 0;
		  	 m_Image[idx + 2] = 0;
		  	 m_Image[idx + 3] = m_Data[y][x]? 255:0;
		 }
	}
}

/*void Layer::Update(Actor * a)
{*/
 	 /*for (int j = 0; j < NB_CELLS_H; j ++)
 	 {
	  	 for (int i = 0; i < NB_CELLS_W; i ++)
	  	 {
	  	  	 //m_Cells[j][i] = true;
	  	  	 int x = i * CELL_W;
	  	  	 int y = j * CELL_H;
	  	  	 
	  	  	 if (m_Cells[j][i])
	  	  	 {
                for (int x0 = x; x < x + CELL_W; x ++)
                {
                    for (int y0 = y; y < y + CELL_H; y ++)
                    {
					 	int point[2];
					 	
					 	point[0] = x0;
					 	point[1] = y0;
					 	
                        if (a->IsOnFov(point))
                        {
                           m_Screen[y0][x0] = false;
						}
                    }
                }
             }
		 }
	 }*/
	 
/*	 for (int y = 0; y < AREA_H; y +=4)
 	 {
	  	 for (int x = 0; x < AREA_W; x +=4)
	  	 {
		 	int point[2];
				 	
		 	point[0] = x;
		 	point[1] = y;
					 	
			if (a->IsOnFov(point))
            {
               m_Data[y][x] = false;
			}

		 }
	 }
}
*/
