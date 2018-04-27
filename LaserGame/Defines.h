#ifndef DEFINES_H
#define DEFINES_H


//#define DEBUG
//#define DEBUG_FILE

#define CELL_W 32
#define CELL_H 32

#define NB_CELLS_W 20
#define NB_CELLS_H 14

// area
#define AREA_W (CELL_W * NB_CELLS_W)
#define AREA_H (CELL_H * NB_CELLS_H)
#define AREA_X CELL_W
#define AREA_Y CELL_H

// hud
#define HUD_W (AREA_W - 2 * CELL_W)
#define HUD_H (CELL_H * ( 3))
#define HUD_X (AREA_X + CELL_W)
#define HUD_Y (AREA_Y + AREA_H + CELL_H)

// screen
#define SCREEN_W (AREA_X + AREA_W + CELL_W)
#define SCREEN_H (AREA_Y + AREA_H + HUD_H + CELL_H + CELL_H)
#define SCREEN_X 0
#define SCREEN_Y 0

// state
#define STATE_PAUSE 0
#define STATE_MOVE  1

// direction
#define DIR_LEFT 	1
#define DIR_RIGHT 	2
#define DIR_UP		4
#define DIR_DOWN	8

// key
#define KEY_LEFT 	1
#define KEY_RIGHT 	2
#define KEY_UP		4
#define KEY_DOWN	8
#define KEY_FIRE	16

// math
#define REAL_PRECISION 0.0001



//lines
#define NB_LINES_MAX (4096)


// font
#define FONT_W (CELL_W / 2)
#define FONT_H CELL_H

#endif
