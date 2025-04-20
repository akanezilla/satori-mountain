# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
# 1 "text.h" 1



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
# 5 "text.h" 2

void initTextbox();
void drawTextbox();
void showTextbox();
void hideTextbox();

extern int textActivated;

typedef struct {
    int x;
    int y;
    int width;
    int height;
    int active;
    u8 oamIndex;
} TEXTBOX;



TEXTBOX textbox[4];
# 2 "text.c" 2
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
# 3 "text.c" 2
# 1 "sprites.h" 1
# 10 "sprites.h"
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
# 4 "text.c" 2

void initTextbox();
void drawTextbox();
void showTextbox();
void hideTextbox();

int textActivated;

TEXTBOX textbox[4];

void initTextbox() {
    for (int i = 0; i < 4; i++) {
        textbox[i].width = 64;
        textbox[i].height = 64;
        textbox[i].active = 1;
    }
    textbox[0].x = 0;
    textbox[0].y = 96;
    textbox[0].oamIndex = 20;

    textbox[1].x = 64;
    textbox[1].y = 96;
    textbox[1].oamIndex = 21;

    textbox[2].x = 128;
    textbox[2].y = 96;
    textbox[2].oamIndex = 22;

    textbox[3].x = 192;
    textbox[3].y = 96;
    textbox[3].oamIndex = 23;
}

void drawTextbox() {
    for (int i = 0; i < 4; i++) {
        if (textbox[i].active) {
            shadowOAM[textbox[i].oamIndex].attr0 = ((textbox[i].y) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[textbox[i].oamIndex].attr1 = ((textbox[i].x) & 0x1FF) | (3<<14);
            shadowOAM[textbox[i].oamIndex].attr2 = (((5) & 0xF) <<12) | ((((12) * (32) + (16))) & 0x3FF);
        } else {
            shadowOAM[textbox[i].oamIndex].attr0 = (2<<8);
        }
    }
}

void showTextbox() {
    for (int i = 0; i < 4; i++) {
        textbox[i].active = 1;
    }
}

void hideTextbox() {
    for (int i = 0; i < 4; i++) {
        textbox[i].active = 0;
    }
}
