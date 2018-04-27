//#include "Gfx.h"
#include "Includes.h"


void Gfx::Begin2D()
{
 	glClearColor (1.0f, 1.0f, 1.0f, 1.0f);
    glClear (GL_COLOR_BUFFER_BIT);
	glPushMatrix (); 
	
    //glOrtho(-0.51 * SCREEN_W, 0.51 * SCREEN_W, 0.51 * SCREEN_H, -0.51 * SCREEN_H, -1.0, 1.0);
    glOrtho(-0.50 * SCREEN_W, 0.50 * SCREEN_W, 0.50 * SCREEN_H, -0.50 * SCREEN_H, -1.0, 1.0);
   	glTranslatef(-0.5 * SCREEN_W, -0.5 * SCREEN_H, 0.0);
   	
   	SetAlpha(255);
}

void Gfx::End2D()
{
 	 glPopMatrix ();
}

void Gfx::Translate(int x, int y)
{
 	glTranslatef(x,y,0); 
}

void Gfx::SetColor(int c)
{
     m_Color = c;
}

int Gfx::GetRed()
{
    return (m_Color >> 16) & 255;
}

int Gfx::GetGreen()
{
    return (m_Color >> 8) & 255;
}

int Gfx::GetBlue()
{
    return (m_Color >> 0) & 255;
}

int Gfx::GetAlpha()
{
 	return m_Alpha;
}

void Gfx::SetAlpha(int a)
{
 	 m_Alpha = a;
 	 glEnable (GL_BLEND);
 	 glBlendFunc (GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
 	 //glBlendFunc (GL_ONE, GL_ONE);
}

void Gfx::DrawLine(int x0, int y0, int x1, int y1)
{
    glBegin(GL_LINES);
    glColor4ub (GetRed(),GetGreen(), GetBlue(),GetAlpha()); 
    glVertex2i (x0, y0);
    glVertex2i (x1, y1);
    glEnd();    
}

void Gfx::FillRect(int x, int y, int w, int h)
{
    glBegin(GL_QUADS);
    glColor4ub (GetRed(),GetGreen(), GetBlue(),GetAlpha()); 
    glVertex2i (x, y);
    glVertex2i (x + w - 1, y);
    glVertex2i (x + w - 1, y + h - 1);
    glVertex2i (x, y + h - 1);
    glEnd();    
}

void Gfx::FillCircle(int x,int y,int w, int h)
{
 	 int n = w > h ? w : h;
 	 int x0 = x + w / 2; 
 	 int y0 = y + h / 2;
 	 
 	 for (int i = 0; i <= n; i ++)
 	 {
	  	 float a0 = ((2.0 * M_PI) * i) / n;
	  	 float a1 = ((2.0 * M_PI) * (i + 1)) / n;
	  	 
 	     glBegin(GL_TRIANGLES);
		 glColor4ub (GetRed(),GetGreen(), GetBlue(),GetAlpha()); 
 	     glVertex2i (x0, y0);
	  	 glVertex2i ((int) (x0 + w/2 * cos(a0)),(int) (y0 + h/2 * sin(a0)) );
	  	 glVertex2i ((int) (x0 + w/2 * cos(a1)),(int) (y0 + h/2 * sin(a1)) );
		 glEnd();    
	 }
 }

void Gfx::FillPolygon(int *points, int n)
{
 	glBegin(GL_POLYGON);
 	for (int i = 0; i < n; i ++)
 	{
	 	int x0;
	 	int y0;
	 	
	 	x0 = points[2 * i + 0];
	 	y0 = points[2 * i + 1];
	 	
		glColor4ub (GetRed(),GetGreen(), GetBlue(),GetAlpha()); 
 	    glVertex2i (x0, y0);
	}
	glEnd();
}


void Gfx::FillTriangle(int x0, int y0,int x1, int y1,int x2, int y2)
{
 	glBegin(GL_TRIANGLES);
	glColor4ub (GetRed(),GetGreen(), GetBlue(),GetAlpha()); 
 	glVertex2i (x0, y0);
	glVertex2i (x1, y1);
	glVertex2i (x2,y2);
	glEnd();    
}

void Gfx::DrawImage(int x,int y,int w,int h, unsigned char *DataIn)
{
 	 // ici, transformer l'image en text 2
  byte DataOut [512 * 512 * 4];
 	  	
/*	int gluScaleImage(GLenum Format, 
   GLint WidthIn, 
   GLint HeightIn, 
   GLenum TypeIn, 
   const void *DataIn, 
   GLint WidthOut, 
   GLint HeightOut, 
   GLenum TypeOut, 
   void *DataOut)*/
//if (false)   	
	gluScaleImage(GL_RGBA,
   AREA_W,
   AREA_H,
   GL_UNSIGNED_BYTE,
   DataIn,
   512,
   512,
   GL_UNSIGNED_BYTE,
   DataOut);

{   
   GLuint Nom;
   glEnable(GL_TEXTURE_2D);  	//Active le texturing
   glGenTextures(1,&Nom); 	//Génère un n° de texture
   glBindTexture(GL_TEXTURE_2D,Nom); 	//Sélectionne ce n°
   glTexImage2D (
	GL_TEXTURE_2D, 	//Type : texture 2D
0, 	//Mipmap : aucun
4, 	//Couleurs : 4
512, 	//Largeur : 2
512, 	//Hauteur : 2
0, 	//Largeur du bord : 0
GL_RGBA, 	//Format : RGBA
GL_UNSIGNED_BYTE, 	//Type des couleurs
DataOut 	//Addresse de l'image
); 	
glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
   
   glBegin(GL_QUADS);
   glTexCoord2i(0,0);glVertex2i(x,y);
   glTexCoord2i(1,0);glVertex2i(x+w-1,y);
   glTexCoord2i(1,1);glVertex2i(x+w-1,y+h-1);
   glTexCoord2i(0,1);glVertex2i(x,y+h-1);
   glEnd();
  
   glDeleteTextures(1, &Nom ); 
} 
}
