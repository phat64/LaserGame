#ifndef MAP_H
#define MAP_H

#define MOVE_LEFT   1
#define MOVE_RIGHT  2
#define MOVE_UP     4
#define MOVE_DOWN   8

class Map
{
 	  public:
      void Init();
      bool Can(int flags);
      void Render(Gfx *g);
      
      bool CanMove(Actor *a, int dir);      
      bool HasCol(Actor * a);
      
      // LINES
      void SetLines();
      int GetNbLines();
      void GetLine(int *x0, int *y0, int *x1, int *y1, int idx);
      void GetLine(int line[4], int idx);
	  void GetLine(double line[4], int idx);
      void EnableLine(int idx);
      bool IsEnabledLine(int idx);
	  void SetVisibleLine(int idx, bool b);
	  bool IsVisibleLine(int idx);
      void ResetLines();
      
      private:
	  	static char tab[NB_CELLS_H + 1][NB_CELLS_W + 1];
	  	int m_NbLines;
	  	int m_Lines[NB_LINES_MAX][4];
	  	bool m_ActivatedLines[NB_LINES_MAX];
		bool m_VisibleLines[NB_LINES_MAX];
	  	void OptimizeLines();
};

#endif
