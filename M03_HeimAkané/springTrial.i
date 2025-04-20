# 1 "springTrial.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "springTrial.c"
# 1 "springTrial.h" 1



# 1 "sprites.h" 1



# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;
typedef void (*ihp)(void);






extern volatile unsigned short *videoBuffer;
# 44 "gba.h"
int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);


void waitForVBlank();
# 63 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;




typedef volatile struct {
    volatile void* src;
    volatile void* dest;
    unsigned int ctrl;
} DMAChannel;
# 97 "gba.h"
void DMANow(int channel, volatile void *src, volatile void *dest, unsigned int ctrl);
# 5 "sprites.h" 2





typedef struct {
  u16 attr0;
  u16 attr1;
  u16 attr2;
  u16 fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[128];
# 64 "sprites.h"
void hideSprites();


typedef struct {
  int x;
  int y;
  int oldX;
  int oldY;
  int xVel;
  int yVel;
  int width;
  int height;
  int timeUntilNextFrame;
  int direction;
  int korokDirection;
  int blupeeDirection;
  int blupeeDirection2;
  int isAnimating;
  int currentFrame;
  int numFrames;
  int active;
  u8 oamIndex;
} SPRITE;
# 5 "springTrial.h" 2
# 1 "collisionSpring.h" 1
# 21 "collisionSpring.h"
extern const unsigned short collisionSpringBitmap[32768];


extern const unsigned short collisionSpringPal[256];
# 6 "springTrial.h" 2

void initSpring();
void reInitSpring();
void initPlayerSpring();
void reInitPlayerSpring();
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


enum BLUPEEDIRECTION {BDOWN, BUP} blupeeDirection;
enum BLUPEEDIRECTION2 {BLEFT, BRIGHT} blupeeDirection2;

OBJ_ATTR shadowOAM[128];




extern int vOff;
extern int hOff;
# 2 "springTrial.c" 2

# 1 "link.h" 1
# 21 "link.h"
extern const unsigned short linkTiles[14336];


extern const unsigned short linkPal[256];
# 4 "springTrial.c" 2
# 1 "mode0.h" 1





void eraseText();
void textToTile(char string[], int offset);
# 35 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 5 "springTrial.c" 2

void initSpring();
void reInitSpring();
void initPlayerSpring();
void reInitPlayerSpring();
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
enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;

SPRITE player;
SPRITE blupee1;
SPRITE blupee2;
SPRITE blupee3;
SPRITE lotm;
int hasArmor;
int spiritOrbCount;
int countdown1;
int countdown2;
int countdown3;

OBJ_ATTR shadowOAM[128];

void initSpring() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((8) << 8) | (0 << 14);

    DMANow(3, linkTiles, &((CB*) 0x6000000)[4], 28672 / 2);
    DMANow(3, linkPal, ((u16 *)0x5000200), 256);

    hOff = 0;
    vOff = 0;
    countdown1 = 60;
    countdown2 = 150;
    countdown3 = 200;

    initPlayerSpring();
    initBlupees();
    initLotM();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void reInitSpring() {
    reInitPlayerSpring();
    initBlupees();
    initLotM();
}

void initPlayerSpring() {
    player.x = 24;
    player.y = 24;
    player.width = 16;
    player.height = 32;
    player.xVel = 1;
    player.yVel = 1;
    player.timeUntilNextFrame = 15;
    player.direction = DOWN;
    player.isAnimating = 0;
    player.currentFrame = 0;
    player.numFrames = 3;
    player.oamIndex = 0;
    player.oldX = player.x;
    player.oldY = player.y;
}

void reInitPlayerSpring() {
    player.x = 64;
    player.y = 96;
    player.width = 16;
    player.height = 32;
    player.xVel = 1;
    player.yVel = 1;
    player.timeUntilNextFrame = 15;
    player.direction = DOWN;
    player.isAnimating = 0;
    player.currentFrame = 0;
    player.numFrames = 3;
    player.oamIndex = 0;
    player.oldX = player.x;
    player.oldY = player.y;
}

void initBlupees() {
    blupee1.x = 48;
    blupee1.y = 144;
    blupee1.width = 16;
    blupee1.height = 16;
    blupee1.xVel = 1;
    blupee1.yVel = 1;
    blupee1.timeUntilNextFrame = 25;
    blupee1.blupeeDirection = DOWN;
    blupee1.isAnimating = 1;
    blupee1.currentFrame = 0;
    blupee1.numFrames = 3;
    blupee1.oamIndex = 14;

    blupee2.x = 176;
    blupee2.y = 72;
    blupee2.width = 16;
    blupee2.height = 16;
    blupee2.xVel = 1;
    blupee2.yVel = 1;
    blupee2.timeUntilNextFrame = 15;
    blupee2.blupeeDirection = DOWN;
    blupee2.isAnimating = 1;
    blupee2.currentFrame = 0;
    blupee2.numFrames = 3;
    blupee2.oamIndex = 1;

    blupee3.x = 136;
    blupee3.y = 192;
    blupee3.width = 16;
    blupee3.height = 16;
    blupee3.xVel = 1;
    blupee3.yVel = 1;
    blupee3.timeUntilNextFrame = 15;
    blupee3.blupeeDirection2 = LEFT;
    blupee3.isAnimating = 1;
    blupee3.currentFrame = 0;
    blupee3.numFrames = 3;
    blupee3.oamIndex = 16;
}

void initLotM() {
    lotm.x = 96;
    lotm.y = 136;
    lotm.width = 40;
    lotm.height = 24;
    lotm.timeUntilNextFrame = 15;
    lotm.isAnimating = 1;
    lotm.currentFrame = 0;
    lotm.numFrames = 3;
    lotm.oamIndex = 2;
}

void updateSpring() {
    updatePlayerSpring();
    updateBlupees();
    updateLotM();
}

void updatePlayerSpring() {
    player.isAnimating = 0;

    hOff = player.x - (240 - player.width) / 2;
    vOff = player.y - (160 - player.height) / 2;

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;


    if ((~(buttons) & ((1<<6)))) {
        player.isAnimating = 1;
        player.direction = UP;
        if (player.y + player.height < 256 && colorAt2(leftX, topY - player.yVel) && colorAt2(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
    }
    if ((~(buttons) & ((1<<7)))) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < 256 && colorAt2(leftX, bottomY + player.yVel) && colorAt2(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if ((~(buttons) & ((1<<4))) && (player.x + player.width) < 256) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < 256 && colorAt2(rightX + player.xVel, topY) && colorAt2(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
    }
    if ((~(buttons) & ((1<<5)))) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < 256 && colorAt2(leftX - player.xVel, topY) && colorAt2(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
    }

    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }


    if (player.x + player.width > 256) {
        player.x = 256 - player.width;
    }
    if (player.y + player.height > 256) {
        player.y = 256 - player.height;
    }


    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > 256 - 240) {
        hOff = 256 - 240;
    }
    if (vOff > 256 - 160) {
        vOff = 256 - 160;
    }


    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 15;
        }
    } else {
        player.currentFrame = 1;
    }


    if (collision(player.x, player.y, player.width, player.height, 16, 0, 32, 24)) {
        initGame();
        goToGame();
    }


    if (collision(player.x, player.y, player.width, player.height, 80, 133, 80, 50) && (spiritOrbCount == 3 || (hasArmor && spiritOrbCount >= 1))) {
        initTrial();
        goToTrial();
    }
}

void updateBlupees() {

    if (blupee1.y < 192 && blupee1.blupeeDirection == BDOWN) {
        blupee1.y++;
    }
    if (blupee1.y > 144 && blupee1.blupeeDirection == BUP) {
        blupee1.y--;
    }

    if (blupee2.y < 120 && blupee2.blupeeDirection == BDOWN) {
        blupee2.y++;
    }
    if (blupee2.y > 72 && blupee2.blupeeDirection == BUP) {
        blupee2.y--;
    }

    if (blupee3.x < 176 && blupee3.blupeeDirection == BLEFT) {
        blupee3.x++;
    }
    if (blupee3.x > 136 && blupee3.blupeeDirection == BRIGHT) {
        blupee3.x--;
    }


    if (blupee1.y == 192 && countdown1 > 0) {
        blupee1.isAnimating = 0;
        countdown1--;
    } else if (blupee1.y == 192 && countdown1 == 0) {
        blupee1.isAnimating = 1;
        countdown1 = 60;
        blupee1.blupeeDirection = BUP;
    }
    if (blupee1.y == 144 && countdown1 > 0) {
        blupee1.isAnimating = 0;
        countdown1--;
    } else if (blupee1.y == 144 && countdown1 == 0) {
        blupee1.isAnimating = 1;
        countdown1 = 60;
        blupee1.blupeeDirection = BDOWN;
    }

    if (blupee2.y == 120 && countdown2 > 0) {
        blupee2.isAnimating = 0;
        countdown2--;
    } else if (blupee2.y == 120 && countdown2 == 0) {
        blupee2.isAnimating = 1;
        countdown2 = 150;
        blupee2.blupeeDirection = BUP;
    }
    if (blupee2.y == 72 && countdown2 > 0) {
        blupee2.isAnimating = 0;
        countdown2--;
    } else if (blupee2.y == 72 && countdown2 == 0) {
        blupee2.isAnimating = 1;
        countdown2 = 150;
        blupee2.blupeeDirection = BDOWN;
    }

    if (blupee3.x == 176 && countdown3 > 0) {
        blupee3.isAnimating = 0;
        countdown3--;
    } else if (blupee3.x == 176 && countdown3 == 0) {
        blupee3.isAnimating = 1;
        countdown3 = 200;
        blupee3.blupeeDirection = BRIGHT;
    }
    if (blupee3.x == 136 && countdown3 > 0) {
        blupee3.isAnimating = 0;
        countdown3--;
    } else if (blupee3.x == 136 && countdown3 == 0) {
        blupee3.isAnimating = 1;
        countdown3 = 200;
        blupee3.blupeeDirection = BLEFT;
    }


    if (blupee1.isAnimating) {
        --blupee1.timeUntilNextFrame;
        if (blupee1.timeUntilNextFrame == 0) {
            blupee1.currentFrame = (blupee1.currentFrame + 1) % blupee1.numFrames;
            blupee1.timeUntilNextFrame = 25;
        }
    } else {
        blupee1.currentFrame = 0;
    }

    if (blupee2.isAnimating) {
        --blupee2.timeUntilNextFrame;
        if (blupee2.timeUntilNextFrame == 0) {
            blupee2.currentFrame = (blupee2.currentFrame + 1) % blupee2.numFrames;
            blupee2.timeUntilNextFrame = 15;
        }
    } else {
        blupee2.currentFrame = 0;
    }

    if (blupee3.isAnimating) {
        --blupee3.timeUntilNextFrame;
        if (blupee3.timeUntilNextFrame == 0) {
            blupee3.currentFrame = (blupee3.currentFrame + 1) % blupee3.numFrames;
            blupee3.timeUntilNextFrame = 15;
        }
    } else {
        blupee3.currentFrame = 0;
    }
}

void updateLotM() {

    if (lotm.isAnimating) {
        --lotm.timeUntilNextFrame;
        if (lotm.timeUntilNextFrame == 0) {
            lotm.currentFrame = (lotm.currentFrame + 1) % lotm.numFrames;
            lotm.timeUntilNextFrame = 25;
        }
    } else {
        lotm.currentFrame = 0;
    }
}

void drawSpring() {
    drawPlayerSpring();
    drawBlupees();
    drawLotM();
}

void drawPlayerSpring() {
    if (hasArmor) {
        shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<8) | (2<<14);
        shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (2<<14);
        shadowOAM[player.oamIndex].attr2 = (((1) & 0xF) <<12) | ((((player.direction * 4) * (32) + (player.currentFrame * 2))) & 0x3FF);
        (*(volatile unsigned short*) 0x04000014) = hOff;
        (*(volatile unsigned short*) 0x04000016) = vOff;
    } else {
        shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<8) | (2<<14);
        shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (2<<14);
        shadowOAM[player.oamIndex].attr2 = (((1) & 0xF) <<12) | ((((player.direction * 4) * (32) + (6 + (player.currentFrame * 2)))) & 0x3FF);
        (*(volatile unsigned short*) 0x04000014) = hOff;
        (*(volatile unsigned short*) 0x04000016) = vOff;
    }
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void drawBlupees() {
    int screenY1 = blupee1.y - vOff;
    int screenX1 = blupee1.x - hOff;
    if (screenY1 > 160 || screenX1 > 240 || screenY1 < -blupee1.height || screenX1 < -blupee1.width) {
        shadowOAM[blupee1.oamIndex].attr0 = (2<<8);
    } else {
        int blupee1Y = (blupee1.blupeeDirection == BDOWN) ? 0 : 2;
        shadowOAM[blupee1.oamIndex].attr0 = ((blupee1.y - vOff) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[blupee1.oamIndex].attr1 = ((blupee1.x - hOff) & 0x1FF) | (1<<14);
        shadowOAM[blupee1.oamIndex].attr2 = (((4) & 0xF) <<12) | ((((blupee1Y) * (32) + ((13 + (blupee1.currentFrame * 2))))) & 0x3FF);
    }

    int screenY2 = blupee2.y - vOff;
    int screenX2 = blupee2.x - hOff;
    if (screenY2 > 160 || screenX2 > 240 || screenY2 < -blupee2.height || screenX2 < -blupee2.width) {
        shadowOAM[blupee2.oamIndex].attr0 = (2<<8);
    } else {
        int blupee2Y = (blupee2.blupeeDirection == BDOWN) ? 0 : 2;
        shadowOAM[blupee2.oamIndex].attr0 = ((blupee2.y - vOff) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[blupee2.oamIndex].attr1 = ((blupee2.x - hOff) & 0x1FF) | (1<<14);
        shadowOAM[blupee2.oamIndex].attr2 = (((4) & 0xF) <<12) | ((((blupee2Y) * (32) + ((13 + (blupee2.currentFrame * 2))))) & 0x3FF);
    }

    int screenY3 = blupee3.y - vOff;
    int screenX3 = blupee3.x - hOff;
    if (screenY3 > 160 || screenX3 > 240 || screenY3 < -blupee3.height || screenX3 < -blupee3.width) {
        shadowOAM[blupee3.oamIndex].attr0 = (2<<8);
    } else {
        int blupee3Y = (blupee3.blupeeDirection2 == BLEFT) ? 4 : 6;
        shadowOAM[blupee3.oamIndex].attr0 = ((blupee3.y - vOff) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[blupee3.oamIndex].attr1 = ((blupee3.x - hOff) & 0x1FF) | (1<<14);
        shadowOAM[blupee3.oamIndex].attr2 = (((4) & 0xF) <<12) | ((((blupee3Y) * (32) + ((13 + (blupee3.currentFrame * 2))))) & 0x3FF);
    }
}

void drawLotM() {
    int screenY = lotm.y - vOff;
    int screenX = lotm.x - hOff;
    if (screenY > 160 || screenX > 240 || screenY < -lotm.height || screenX < -lotm.width) {
        shadowOAM[lotm.oamIndex].attr0 = (2<<8);
    } else {
        shadowOAM[lotm.oamIndex].attr0 = ((lotm.y - vOff) & 0xFF) | (0<<8) | (1<<14);
        shadowOAM[lotm.oamIndex].attr1 = ((lotm.x - hOff) & 0x1FF) | (3<<14);
        shadowOAM[lotm.oamIndex].attr2 = (((4) & 0xF) <<12) | ((((20) * (32) + ((6 + (lotm.currentFrame * 8))))) & 0x3FF);
    }
}

inline unsigned char colorAt2(int x, int y) {
    return ((unsigned char*) collisionSpringBitmap) [((y) * (256) + (x))];
}
