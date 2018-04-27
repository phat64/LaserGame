#ifndef GFX_H
#define GFX_H

class Gfx
{
      public:
        void Init(int w, int h);
        void Begin2D();
        void End2D();
        void SetColor(int c); 
        void DrawLine(int x0, int y0,int x1, int y1);
        void FillRect(int x, int y, int w, int h);
        void FillCircle(int x,int y,int w, int h);
        void FillPolygon(int *points, int n);
        void FillTriangle(int x0, int y0,int x1, int y1,int x2, int y2);
        void DrawImage(int x,int y,int w,int h, unsigned char * rgba);

        int GetRed();
        int GetGreen();
        int GetBlue();
        int GetAlpha();
        void SetAlpha(int a);
		void Translate(int x, int y);

      private:
              int m_Color;
              int m_Alpha;
};

#endif
