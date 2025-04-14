#ifndef SPRINGTRIAL_H
#define SPRINGTRIAL_H

#include "sprites.h"
#include "collisionSpring.h"

void initSpring();
void initPlayerSpring();
void initBlupees();
void initLotM();
void updateSpring();
void updatePlayerSpring();
void updateBlupees();
void updateLotM();
void drawSpring();
void drawPlayerSpring();
void drawBlupees();
void drawLotM();
inline unsigned char colorAt2(int x, int y);

SPRITE player;
SPRITE blupee1;
SPRITE blupee2;
SPRITE blupee3;
SPRITE lotm;

int countdown1;
int countdown2;
int countdown3;

//enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;
enum BLUPEEDIRECTION {BDOWN, BUP} blupeeDirection;
enum BLUPEEDIRECTION2 {BLEFT, BRIGHT} blupeeDirection2;

OBJ_ATTR shadowOAM[128];

#define MAPHEIGHT 256
#define MAPWIDTH 256

extern int vOff;
extern int hOff;

#endif