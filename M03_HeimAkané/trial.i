# 1 "trial.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "trial.c"
# 1 "trial.h" 1



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
# 5 "trial.h" 2

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




extern int vOff;
extern int hOff;
# 2 "trial.c" 2

# 1 "link.h" 1
# 21 "link.h"
extern const unsigned short linkTiles[14336];


extern const unsigned short linkPal[256];
# 4 "trial.c" 2
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
# 5 "trial.c" 2

void initTrial();
void initPlayerTrial();
void initLotMTrial();
void initBar();
void initNumbers();
void updateTrial();
void updatePlayerTrial();
void updateLotMTrial();
void updateBar();
void updateNumbers();
void drawTrial();
void drawPlayerTrial();
void drawLotMTrial();
void drawBar();
void drawNumbers();
inline unsigned char colorAt3(int x, int y);

enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;

SPRITE player;
SPRITE lotm;
SPRITE staminaBar;
SPRITE piece1;
SPRITE piece2;
SPRITE piece3;
SPRITE piece4;
SPRITE piece5;
SPRITE fifteen;
SPRITE fourteen;
SPRITE thirteen;
SPRITE numbers;

int staminaCount;
int alreadyAnimated;

void initTrial() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (1 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x400000A) = ((0) << 2) | ((8) << 8) | (0 << 14);

    DMANow(3, linkTiles, &((CB*) 0x6000000)[4], 28672 / 2);
    DMANow(3, linkPal, ((u16 *)0x5000200), 256);

    hOff = 0;
    vOff = 0;
    staminaCount = 0;
    alreadyAnimated = 0;

    initPlayerTrial();
    initLotMTrial();
    initBar();
    initNumbers();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void initPlayerTrial() {
    player.x = 16;
    player.y = 88;
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

void initLotMTrial() {
    lotm.x = 96;
    lotm.y = 136;
    lotm.width = 40;
    lotm.height = 24;
    lotm.timeUntilNextFrame = 15;
    lotm.isAnimating = 1;
    lotm.currentFrame = 0;
    lotm.numFrames = 3;
    lotm.oamIndex = 1;
    lotm.direction = RIGHT;
}

void initBar() {
    staminaBar.x = 16;
    staminaBar.y = 2;
    staminaBar.width = 24;
    staminaBar.height = 24;
    staminaBar.oamIndex = 7;

    piece1.x = 2;
    piece1.y = 17;
    piece1.width = 16;
    piece1.height = 16;
    piece1.oamIndex = 2;
    piece1.active = 0;

    piece2.x = 2;
    piece2.y = 27;
    piece2.width = 16;
    piece2.height = 16;
    piece2.oamIndex = 3;
    piece2.active = 0;

    piece3.x = 9;
    piece3.y = 16;
    piece3.width = 16;
    piece3.height = 16;
    piece3.oamIndex = 4;
    piece3.active = 0;

    piece4.x = 9;
    piece4.y = 30;
    piece4.width = 16;
    piece4.height = 16;
    piece4.oamIndex = 5;
    piece4.active = 0;

    piece5.x = 18;
    piece5.y = 21;
    piece5.width = 16;
    piece5.height = 16;
    piece5.oamIndex = 6;
    piece5.active = 0;
}

void initNumbers() {
    numbers.x = 208;
    numbers.y = 0;
    numbers.width = 16;
    numbers.height = 16;
    numbers.active = 1;
    numbers.oamIndex = 8;
    numbers.isAnimating = 1;
    numbers.numFrames = 15;
    numbers.currentFrame = 0;
    numbers.timeUntilNextFrame = 60;
}

void updateTrial() {
    updatePlayerTrial();
    updateLotMTrial();
    updateBar();
    updateNumbers();
}

void updatePlayerTrial() {
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
        if (player.y + player.height < 256) {
            player.y -= player.yVel;
        }
    }
    if ((~(buttons) & ((1<<7)))) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < 256) {
            player.y += player.yVel;
        }
    }
    if ((~(buttons) & ((1<<4))) && (player.x + player.width) < 256) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < 256) {
            player.x += player.xVel;
        }
    }
    if ((~(buttons) & ((1<<5)))) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < 256) {
            player.x -= player.xVel;
        }
    }

    if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2)))) && collision(player.x, player.y, player.width, player.height, lotm.x, lotm.y, lotm.width, lotm.height)) {
        staminaCount++;
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
        reInitSpring();
        goToSpring();
    }
}

void updateLotMTrial() {

    if (lotm.direction == RIGHT && lotm.x < 184) {
        lotm.x++;
    } else if (lotm.direction == DOWN && lotm.y < 176) {
        lotm.y++;
    } else if (lotm.direction == LEFT && lotm.x > 8) {
        lotm.x--;
    } else if (lotm.direction == UP && lotm.y > 88) {
        lotm.y--;
    }


    if (lotm.y == 88 && lotm.direction == UP) {
        lotm.direction = RIGHT;
    } else if (lotm.x == 184 && lotm.direction == RIGHT) {
        lotm.direction = DOWN;
    } else if (lotm.y == 176 && lotm.direction == DOWN) {
        lotm.direction = LEFT;
    } else if (lotm.x == 8 && lotm.direction == LEFT) {
        lotm.direction = UP;
    }


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

void updateBar() {
    if (staminaCount == 10 && !piece2.active) {
        piece2.active = 1;
    } else if (staminaCount == 20 && !piece4.active) {
        piece4.active = 1;
    } else if (staminaCount == 30 && !piece5.active) {
        piece5.active = 1;
    } else if (staminaCount == 40 && !piece3.active) {
        piece3.active = 1;
    } else if (staminaCount == 50 && !piece1.active) {
        piece1.active = 1;
        goToWin();
    }
}

void updateNumbers() {
    if (numbers.isAnimating) {
        --numbers.timeUntilNextFrame;
        if (numbers.timeUntilNextFrame == 0) {
            numbers.currentFrame = (numbers.currentFrame + 1) % numbers.numFrames;
            numbers.timeUntilNextFrame = 60;
            alreadyAnimated++;
            mgba_printf("current frame: %d", numbers.currentFrame);
        }
    } else {
        numbers.currentFrame = 0;
    }

    if (numbers.currentFrame == 0 && (alreadyAnimated > 0)) {
        numbers.isAnimating = 0;
        numbers.active = 0;
        if (staminaCount >= 50) {
            goToWin();
        } else {
            goToLose();
        }
    }

}

void drawTrial() {
    drawPlayerTrial();
    drawLotMTrial();
    drawBar();
    drawNumbers();
}

void drawPlayerTrial() {
    if (player.active) {
        shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<8) | (2<<14);
        shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (2<<14);
        shadowOAM[player.oamIndex].attr2 = (((1) & 0xF) <<12) | ((((player.direction * 4) * (32) + (player.currentFrame * 2))) & 0x3FF);
        (*(volatile unsigned short*) 0x04000014) = hOff;
        (*(volatile unsigned short*) 0x04000016) = vOff;
    } else {
        shadowOAM[player.oamIndex].attr0 = (2<<8);
    }
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void drawLotMTrial() {
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

void drawBar() {

    shadowOAM[staminaBar.oamIndex].attr0 = ((staminaBar.y) & 0xFF) | (0<<8) | (0<<14);
    shadowOAM[staminaBar.oamIndex].attr1 = ((staminaBar.x) & 0x1FF) | (2<<14);
    shadowOAM[staminaBar.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((0) * (32) + (19))) & 0x3FF);


    if (piece1.active) {
        shadowOAM[piece1.oamIndex].attr0 = ((piece1.x) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[piece1.oamIndex].attr1 = ((piece1.y) & 0x1FF) | (1<<14);
        shadowOAM[piece1.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((4) * (32) + (19))) & 0x3FF);
    } else {
        shadowOAM[piece1.oamIndex].attr0 = (2<<8);
    }

    if (piece2.active) {
        shadowOAM[piece2.oamIndex].attr0 = ((piece2.x) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[piece2.oamIndex].attr1 = ((piece2.y) & 0x1FF) | (1<<14);
        shadowOAM[piece2.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((4) * (32) + (21))) & 0x3FF);
    } else {
        shadowOAM[piece2.oamIndex].attr0 = (2<<8);
    }

    if (piece3.active) {
        shadowOAM[piece3.oamIndex].attr0 = ((piece3.x) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[piece3.oamIndex].attr1 = ((piece3.y) & 0x1FF) | (1<<14);
        shadowOAM[piece3.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((4) * (32) + (23))) & 0x3FF);
    } else {
        shadowOAM[piece3.oamIndex].attr0 = (2<<8);
    }

    if (piece4.active) {
        shadowOAM[piece4.oamIndex].attr0 = ((piece4.x) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[piece4.oamIndex].attr1 = ((piece4.y) & 0x1FF) | (1<<14);
        shadowOAM[piece4.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((4) * (32) + (25))) & 0x3FF);
    } else {
        shadowOAM[piece4.oamIndex].attr0 = (2<<8);
    }

    if (piece5.active) {
        shadowOAM[piece5.oamIndex].attr0 = ((piece5.x) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[piece5.oamIndex].attr1 = ((piece5.y) & 0x1FF) | (1<<14);
        shadowOAM[piece5.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((4) * (32) + (27))) & 0x3FF);
    } else {
        shadowOAM[piece5.oamIndex].attr0 = (2<<8);
    }
}

void drawNumbers() {
    int numbersY = (numbers.currentFrame < 8 ? 24 : 26);
    if (numbers.active) {
        shadowOAM[numbers.oamIndex].attr0 = ((numbers.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[numbers.oamIndex].attr1 = ((numbers.x) & 0x1FF) | (1<<14);
        shadowOAM[numbers.oamIndex].attr2 = (((5) & 0xF) <<12) | ((((numbersY) * (32) + (6 + ((numbers.currentFrame % 8) * 2)))) & 0x3FF);
    } else {
        shadowOAM[numbers.oamIndex].attr0 = (2<<8);
    }
}
