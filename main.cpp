/**************************
 * Includes
 *
 **************************/

/*#include <windows.h>
#include <gl/gl.h>
#include <stdio.h>*/
#include "Includes.h"
#include "Defines.h"

/**************************
 * Function Declarations
 *
 **************************/

LRESULT CALLBACK WndProc (HWND hWnd, UINT message,
WPARAM wParam, LPARAM lParam);
void EnableOpenGL (HWND hWnd, HDC *hDC, HGLRC *hRC);
void DisableOpenGL (HWND hWnd, HDC hDC, HGLRC hRC);


Gfx * g = new Gfx();
Map * map = new Map();
Input * input = new Input();
Layer * layer = new Layer();
HUD * hud = new HUD();
int MousePointer[2] = {0, 0};
int nFrames = 0;

Plane  nearplane, rightplane, leftplane;

Actor * actors[3] =
{
 	//new Actor(10 * CELL_W, 3 * CELL_H, 0, 0xff0000),
 	new Actor(288, 96, 0, 0xff0000),
	new Actor(19 * CELL_W, 0, 1, 0x00ff00),
	new Actor(0, 0, 1, 0x000ff)
};

Layer * layers[3] =
{
 	new Layer(),
	new Layer(),
	new Layer()
};
int idx = 0;

/**************************
 * WinMain
 *
 **************************/

int WINAPI WinMain (HINSTANCE hInstance,
                    HINSTANCE hPrevInstance,
                    LPSTR lpCmdLine,
                    int iCmdShow)
{
    WNDCLASS wc;
    HWND hWnd;
    HDC hDC;
    HGLRC hRC;        
    MSG msg;
    BOOL bQuit = FALSE;


    /* register window class */
    wc.style = CS_OWNDC;
    wc.lpfnWndProc = WndProc;
    wc.cbClsExtra = 0;
    wc.cbWndExtra = 0;
    wc.hInstance = hInstance;
    wc.hIcon = LoadIcon (NULL, IDI_APPLICATION);
    wc.hCursor = LoadCursor (NULL, IDC_ARROW);
    wc.hbrBackground = (HBRUSH) GetStockObject (BLACK_BRUSH);
    wc.lpszMenuName = NULL;
    wc.lpszClassName = "OGLSample";
    RegisterClass (&wc);

    /* create main window */
    hWnd = CreateWindow (
      "OGLSample", "Laser Game", 
      WS_CAPTION | WS_POPUPWINDOW | WS_VISIBLE,
      0, 0, SCREEN_W, SCREEN_H,
      NULL, NULL, hInstance, NULL);

    /* enable OpenGL for the window */
    EnableOpenGL (hWnd, &hDC, &hRC);
    
    Math::Init();
    map->Init();
    layers[0]->Init();
    layers[1]->Init();
    layers[2]->Init();
    
    actors[0]->SetInput(input);
    actors[1]->SetInput(0);
    actors[2]->SetInput(0);
    
    actors[0]->SetMap(map);
    actors[1]->SetMap(map);
    actors[2]->SetMap(map);
    
    /* program main loop */
    while (!bQuit)
    {
        /* check for messages */
        if (PeekMessage (&msg, NULL, 0, 0, PM_REMOVE))
        {
            /* handle or dispatch messages */
            if (msg.message == WM_QUIT)
            {
                bQuit = TRUE;
            }
            else
            {
                TranslateMessage (&msg);
                DispatchMessage (&msg);
            }
        }
        else
        {
            /* OpenGL animation code goes here */

           	g->Begin2D();

			g->SetColor(0xe0e0e0);
            g->FillRect(AREA_X,AREA_Y,AREA_W, AREA_H);

			g->Translate(AREA_X, AREA_Y);
			
		   g->SetColor(0);
		   //layer->Render(g);

			
			actors[0]->Update(GetTickCount());
 			actors[1]->Update(GetTickCount());
 			actors[2]->Update(GetTickCount());

			//if (!map->HasCol(actor))
			actors[0]->Render(g);
			actors[1]->Render(g);
			actors[2]->Render(g);


             g->SetColor(0xf0f0f0);
             map->Render(g);
             
             g->SetColor(0);
             //layer->Render(g);
//---             layers[idx]->RenderCells(g);
             //actors[idx]->RenderCells(g);
             //g->FillRect(0,0,32,32);
             
             
           
             

    /*        if (actors[idx]->IsOnFov(MousePointer))
            {
			   g->SetColor(0x00ff00);
			}
           	else
           	{
			 	g->SetColor(0xff0000);
			}*/
           
       

            g->FillRect(MousePointer[0] - 2,MousePointer[1] - 2, 5, 5);
            int angle = actors[idx]->GetAngle(MousePointer);
            
            static int points[100000];
            actors[idx]->GetFovPoints2(g,points);
        /*    FILE * f = fopen("stdout.txt","w+");
	  		fprintf(f,"MousePPointer = %d %d\n", MousePointer[0],MousePointer[1]);
	  		fprintf(f,"rad = %d \n", MousePointer[0],MousePointer[1]);
	  		fprintf(f,"Angle = %d\n", angle);
			fclose(f);
*/

             /*int points[NB_LINES_MAX];
             int nPoints = actors[0]->GetFovPoints(points);
             for (int i = 0; i < nPoints; i ++)
             {
			  	 g->SetColor(0x0000ff);
			  	 g->FillRect(points[2*i+0]-2,points[2*i+1]-2,5,5);
			 }*/

/*for (int i = 0; i < map->GetNbLines(); i ++)
{			 
			 int line[4];
			 map->GetLine(line,i);
			 if (actors[idx]->IsCullable(line[0],line[1],line[2],line[3]))
			 {
			  	g->SetColor(0xff0000);
			  	g->DrawLine(line[0],line[1],line[2],line[3]);
			}
}*/

            g->Translate(-AREA_X, -AREA_Y);   
            
            //hud->Render(g, actors, 3);
            
            int n = map->GetNbLines();
            int lineIdx = 0;
            for (int i = 0; i < n; i ++)
            {
			 	int line[4];
			 	int _near[4];
			 	int center[2];
			 	int ncenter[2];
			 	int dist2;
			 	int ndist2;
			 	map->GetLine(line, i);
			 	map->GetLine(_near, lineIdx);
			 	center[0] = (line[0] + line[2]) / 2;
			 	center[1] = (line[1] + line[3]) / 2;
			 	ncenter[0] = (_near[0] + _near[2]) / 2;
			 	ncenter[1] = (_near[1] + _near[3]) / 2;
			 	
			 	dist2 = (center[0] - MousePointer[0])*(center[0] - MousePointer[0])
				 	   + (center[1] - MousePointer[1])*(center[1] - MousePointer[1]);
				 	   
   			 	ndist2 = (_near[0] - MousePointer[0])*(_near[0] - MousePointer[0])
				 	   +(_near[1] - MousePointer[1])*(_near[1] - MousePointer[1]);

			 	if (dist2 < ndist2)
			 	{
				   lineIdx = i;
   	 			}
			}

			FILE * f = fopen("position.txt","w+");
			fprintf(f,"Line = %d\n", lineIdx);
	  		fprintf(f,"MousePPointer = %d %d\n", MousePointer[0],MousePointer[1]);
	  		fprintf(f,"Actor position %d %d\n", actors[idx]->GetX(), actors[idx]->GetY());
            fclose(f);
									            
                   
            g->End2D();

			//actors[idx]->UpdateLayer(layers[idx]);
            SwapBuffers (hDC);

           // Sleep (1000/60);
        }
    }

    /* shutdown OpenGL */
    DisableOpenGL (hWnd, hDC, hRC);

    /* destroy the window explicitly */
    DestroyWindow (hWnd);

    return msg.wParam;
}


/********************
 * Window Procedure
 *
 ********************/

LRESULT CALLBACK WndProc (HWND hWnd, UINT message,
                          WPARAM wParam, LPARAM lParam)
{

    switch (message)
    {
    case WM_CREATE:
        return 0;
    case WM_MOVE:
 	case WM_MOVING:
		 RedrawWindow(hWnd,0,0,0);
		 return 0;
			 break;
    case WM_CLOSE:
        PostQuitMessage (0);
        return 0;

    case WM_DESTROY:
        return 0;

	case WM_MOUSELAST:
	case WM_MOUSEFIRST:
//	case WM_MBUTTONDOWN:
		 MousePointer[0] =(lParam>>0)&0xffff;
		 MousePointer[1] =(lParam>>16)&0xffff;
		 
			 break;
    case WM_KEYDOWN:
         
        switch (wParam)
        {
        case VK_ESCAPE:
            PostQuitMessage(0);
            return 0;
         case VK_F1: 	map->ResetLines();break;   
         case VK_UP: 	input->KeyPressed(KEY_UP);break;
         case VK_DOWN: 	input->KeyPressed(KEY_DOWN);break;
         case VK_LEFT: 	input->KeyPressed(KEY_LEFT);break;
         case VK_RIGHT: input->KeyPressed(KEY_RIGHT);break;
         case VK_NUMPAD1:	idx = 0; actors[0]->SetInput(input); actors[1]->SetInput(0); actors[2]->SetInput(0); break; 
		 case VK_NUMPAD2: 	idx = 1; actors[1]->SetInput(input); actors[0]->SetInput(0); actors[2]->SetInput(0); break; 
 		 case VK_NUMPAD3: 	idx = 2; actors[2]->SetInput(input); actors[0]->SetInput(0); actors[1]->SetInput(0); break; 
         }
        return 0;
    case WM_KEYUP:
    	 switch(wParam)
    	 {
            case VK_UP: 	input->KeyReleased(KEY_UP);break;
			case VK_DOWN: 	input->KeyReleased(KEY_DOWN);break;
         	case VK_LEFT: 	input->KeyReleased(KEY_LEFT);break;
         	case VK_RIGHT: 	input->KeyReleased(KEY_RIGHT);break;
		 }
		 return 0;

    default:
        return DefWindowProc (hWnd, message, wParam, lParam);
    }
}


/*******************
 * Enable OpenGL
 *
 *******************/

void EnableOpenGL (HWND hWnd, HDC *hDC, HGLRC *hRC)
{
    PIXELFORMATDESCRIPTOR pfd;
    int iFormat;

    /* get the device context (DC) */
    *hDC = GetDC (hWnd);

    /* set the pixel format for the DC */
    ZeroMemory (&pfd, sizeof (pfd));
    pfd.nSize = sizeof (pfd);
    pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW | 
      PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA;
    pfd.cColorBits = 24;
    pfd.cDepthBits = 16;
    pfd.iLayerType = PFD_MAIN_PLANE;
    iFormat = ChoosePixelFormat (*hDC, &pfd);
    SetPixelFormat (*hDC, iFormat, &pfd);

    /* create and enable the render context (RC) */
    *hRC = wglCreateContext( *hDC );
    wglMakeCurrent( *hDC, *hRC );

}


/******************
 * Disable OpenGL
 *
 ******************/

void DisableOpenGL (HWND hWnd, HDC hDC, HGLRC hRC)
{
    wglMakeCurrent (NULL, NULL);
    wglDeleteContext (hRC);
    ReleaseDC (hWnd, hDC);
}


