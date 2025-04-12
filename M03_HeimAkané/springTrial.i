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
void initPlayerSpring();
void initBlupees();
void initLotM();
void updateSpring();
void updatePlayerSpring();
void updateBluepees();
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

enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;

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
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 5 "springTrial.c" 2

void initSpring();
void initPlayerSpring();
void initBlupees();
void initLotM();
void updateSpring();
void updatePlayerSpring();
void updateBluepees();
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
int hasArmor;

OBJ_ATTR shadowOAM[128];

void initSpring() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((8) << 8) | (0 << 14);

    DMANow(3, linkTiles, &((CB*) 0x6000000)[4], 28672 / 2);
    DMANow(3, linkPal, ((u16 *)0x5000200), 256);

    hOff = 0;
    vOff = 0;

    initPlayerSpring();
    initBlupees();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
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

void initBlupees() {

}

void updateSpring() {
    updatePlayerSpring();
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


    if (collision(player.x, player.y, player.width, player.height, 80, 133, 80, 50)) {
        if (hasArmor) {
            goToWin();
        } else {
            goToLose();
        }
    }
}

void drawSpring() {
    drawPlayerSpring();
}

void drawPlayerSpring() {
    shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<8) | (2<<14);
    shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (2<<14);
    shadowOAM[player.oamIndex].attr2 = (((1) & 0xF) <<12) | ((((player.direction * 4) * (32) + (player.currentFrame * 2))) & 0x3FF);
    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

inline unsigned char colorAt2(int x, int y) {
    return ((unsigned char*) collisionSpringBitmap) [((y) * (256) + (x))];
}
