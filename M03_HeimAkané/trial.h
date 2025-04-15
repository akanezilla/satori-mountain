#ifndef TRIAL_H
#define TRIAL_H

#include "sprites.h"

void initTrial();
void initPlayerTrial();
void initLotMTrial();
void updateTrial();
void updatePlayerTrial();
void updateLotM();
void drawTrial();
void drawPlayerTrial();
void drawLotMTrial();
inline unsigned char colorAt3(int x, int y);

SPRITE player;
SPRITE lotm;

OBJ_ATTR shadowOAM[128];

#define MAPHEIGHT 256
#define MAPWIDTH 256

extern int vOff;
extern int hOff;

#endif
