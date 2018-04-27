#ifndef LAYER_H
#define LAYER_H

class Layer
{
 	 public:
	 void Init();
 	 void Render(Gfx * g);
 	 //void Update(Actor *a);
 	 bool m_Data[AREA_H][AREA_W];
 	  bool m_Cells[NB_CELLS_H][NB_CELLS_W];
 	  void RenderCells(Gfx*g);
 	 
 	 private:
 	
 	 unsigned char m_Image[AREA_W * AREA_H * 4];
 	 void UpdateImage();
};

#endif
