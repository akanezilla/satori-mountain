# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 3 "main.c" 2
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
  int isAnimating;
  int currentFrame;
  int numFrames;
  int active;
  u8 oamIndex;
} SPRITE;
# 4 "main.c" 2
# 1 "print.h" 1
# 25 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 26 "print.h" 2
# 35 "print.h"

# 35 "print.h"
uint8_t mgba_open(void);
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
void mgba_close(void);
# 5 "main.c" 2
# 1 "game.h" 1





void initGame();
void initPlayer();
void initKorok1();
void initKorok2();
void initSpiritOrb();
void initChest();
void initArmor();
void initMarker();
void initStamina();
void updateGame();
void updatePlayer();
void updateKorok1();
void updateKorok2();
void updateSpiritOrb();
void updateChests();
void updateArmor();
void updateMarker();
void updateStamina();
void drawGame();
void drawPlayer();
void drawKorok1();
void drawKorok2();
void drawSpiritOrb();
void drawChests();
void drawArmor();
void drawMarker();
void drawStamina();

enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;
enum KOROKDIRECTION {KDOWN, KUP} korokDirection;

int chestOpened;
extern int hasArmor;
extern int spiritOrbCount;
int cooldown;




SPRITE player;
SPRITE korok1;
SPRITE korok2;
SPRITE spiritOrb1;
SPRITE spiritOrb2;
SPRITE spiritOrb3;
SPRITE chest;
SPRITE armor;
SPRITE marker;
SPRITE staminaHold1;
SPRITE staminaHold2;
SPRITE staminaHold3;
SPRITE stamina1;
SPRITE stamina2;
SPRITE stamina3;

extern int vOff;
extern int hOff;
# 6 "main.c" 2
# 1 "startTiles.h" 1







extern const unsigned short startTilesMap[1024];
# 7 "main.c" 2
# 1 "start.h" 1
# 21 "start.h"
extern const unsigned short startTiles[9600];


extern const unsigned short startPal[256];
# 8 "main.c" 2
# 1 "instructions.h" 1







extern const unsigned short instructionsMap[1024];
# 9 "main.c" 2
# 1 "instructionsPal.h" 1
# 21 "instructionsPal.h"
extern const unsigned short instructionsPalTiles[9600];


extern const unsigned short instructionsPalPal[256];
# 10 "main.c" 2
# 1 "pause.h" 1
# 21 "pause.h"
extern const unsigned short pauseTiles[9600];


extern const unsigned short pausePal[256];
# 11 "main.c" 2
# 1 "pauseTiles.h" 1







extern const unsigned short pauseTilesMap[1024];
# 12 "main.c" 2
# 1 "zelda.h" 1
# 21 "zelda.h"
extern const unsigned short zeldaTiles[4096];


extern const unsigned short zeldaPal[256];
# 13 "main.c" 2
# 1 "zeldaMap.h" 1







extern const unsigned short zeldaMapMap[4096];
# 14 "main.c" 2
# 1 "win.h" 1







extern const unsigned short winMap[1024];
# 15 "main.c" 2
# 1 "winPal.h" 1
# 21 "winPal.h"
extern const unsigned short winPalTiles[9600];


extern const unsigned short winPalPal[256];
# 16 "main.c" 2
# 1 "lose.h" 1







extern const unsigned short loseMap[1024];
# 17 "main.c" 2
# 1 "losePal.h" 1
# 21 "losePal.h"
extern const unsigned short losePalTiles[9600];


extern const unsigned short losePalPal[256];
# 18 "main.c" 2
# 1 "spring.h" 1
# 21 "spring.h"
extern const unsigned short springTiles[4096];


extern const unsigned short springPal[256];
# 19 "main.c" 2
# 1 "springMap.h" 1







extern const unsigned short springMapMap[1024];
# 20 "main.c" 2

void initialize();

void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();
void goToSpring();
void spring();

enum STATE {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE, SPRING} state;

unsigned short buttons;
unsigned short oldButtons;

int hOff;
int vOff;

int main() {
    mgba_open();
    initialize();

    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
            case SPRING:
                spring();
                break;
        }
    }
    return 0;
}

void initialize() {

    mgba_open();
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((8) << 8);
    initSound();

    goToStart();
}

void goToStart() {
    DMANow(3, startTiles, &((CB*) 0x6000000)[0], 19200 / 2);
    DMANow(3, startTilesMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, startPal, ((unsigned short *)0x5000000), 512 / 2);


    shadowOAM[player.oamIndex].attr0 = (2<<8);
    shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = START;
}

void start() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToInstructions();
    }
}

void goToInstructions() {
    DMANow(3, instructionsPalTiles, &((CB*) 0x6000000)[0], 19200 / 2);
    DMANow(3, instructionsMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, instructionsPalPal, ((unsigned short *)0x5000000), 512 / 2);

    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        initGame();
        goToGame();
    }
}

void goToGame() {
    DMANow(3, zeldaTiles, &((CB*) 0x6000000)[0], 8192 / 2);
    DMANow(3, zeldaMapMap, &((SB*) 0x6000000)[8], (8192) / 2);
    DMANow(3, zeldaPal, ((unsigned short *)0x5000000), 256);

    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons) & ((1<<0))) && (~(buttons) & ((1<<0))))) {
        goToLose();
    }
}

void goToPause() {
    DMANow(3, pauseTiles, &((CB*) 0x6000000)[0], 19200 / 2);
    DMANow(3, pauseTilesMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);


    shadowOAM[player.oamIndex].attr0 = (2<<8);
    shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    shadowOAM[chest.oamIndex].attr0 = (2<<8);
    shadowOAM[armor.oamIndex].attr0 = (2<<8);
    shadowOAM[marker.oamIndex].attr0 = (2<<8);
    shadowOAM[stamina1.oamIndex].attr0 = (2<<8);
    shadowOAM[stamina2.oamIndex].attr0 = (2<<8);
    shadowOAM[stamina3.oamIndex].attr0 = (2<<8);
    shadowOAM[staminaHold1.oamIndex].attr0 = (2<<8);
    shadowOAM[staminaHold2.oamIndex].attr0 = (2<<8);
    shadowOAM[staminaHold3.oamIndex].attr0 = (2<<8);
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToGame();
    }
}

void goToWin() {
    DMANow(3, winPalTiles, &((CB*) 0x6000000)[0], 19200 / 2);
    DMANow(3, winMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, winPalPal, ((unsigned short *)0x5000000), 512 / 2);


    shadowOAM[player.oamIndex].attr0 = (2<<8);
    shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = WIN;
}

void win() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}

void goToLose() {
    DMANow(3, losePalTiles, &((CB*) 0x6000000)[0], 19200 / 2);
    DMANow(3, loseMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, losePalPal, ((unsigned short *)0x5000000), 512 / 2);


    shadowOAM[player.oamIndex].attr0 = (2<<8);
    shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = LOSE;
}

void lose() {
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToStart();
    }
}

void goToSpring() {
    DMANow(3, springTiles, &((CB*) 0x6000000)[0], 8192 / 2);
    DMANow(3, springMapMap, &((SB*) 0x6000000)[8], (2048) / 2);
    DMANow(3, springPal, ((unsigned short *)0x5000000), 512 / 2);


    shadowOAM[player.oamIndex].attr0 = (2<<8);
    shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    spiritOrb1.active = 0;
    shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);

    state = SPRING;
}

void spring() {
    updateSpring();
    drawSpring();
    waitForVBlank();
    if ((!(~(oldButtons) & ((1<<3))) && (~(buttons) & ((1<<3))))) {
        goToPause();
    }
}
