#ifndef TRIAL_H
#define TRIAL_H

#include "sprites.h"

void initTrial();
void initPlayerTrial();
void initLotMTrial();
void initBar();
void initNumbers();
void updateTrial();
void updatePlayerTrial();
void updateLotM();
void updateBar();
void updateNumbers();
void drawTrial();
void drawPlayerTrial();
void drawLotMTrial();
void drawBar();
void drawNumbers();
inline unsigned char colorAt3(int x, int y);

SPRITE player;
SPRITE lotm;
SPRITE staminaBar;
SPRITE piece1;
SPRITE piece2;
SPRITE piece3;
SPRITE piece4;
SPRITE piece5;
SPRITE numbers;

int staminaCount;

OBJ_ATTR shadowOAM[128];

#define MAPHEIGHT 256
#define MAPWIDTH 256

extern int vOff;
extern int hOff;

#endif
