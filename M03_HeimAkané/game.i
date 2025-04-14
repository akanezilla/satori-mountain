# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1



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
# 5 "game.h" 2

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

extern enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;
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
# 2 "game.c" 2

# 1 "link.h" 1
# 21 "link.h"
extern const unsigned short linkTiles[14336];


extern const unsigned short linkPal[256];
# 4 "game.c" 2
# 1 "mode0.h" 1
# 32 "mode0.h"
typedef struct {
 u16 tileimg[8192];
} CB;



typedef struct {
 u16 tilemap[1024];
} SB;
# 5 "game.c" 2
# 1 "collisionZelda.h" 1
# 21 "collisionZelda.h"
extern const unsigned short collisionZeldaBitmap[131072];


extern const unsigned short collisionZeldaPal[256];
# 6 "game.c" 2

void initGame();
void initPlayer();
void initKorok1();
void initKorok2();
void initSpiritOrb();
void initChests();
void initArmor();
void initMarker();
void initStamina();
void updateGame();
void updatePlayer();
void updateKorok1();
void updateKorok2();
void updateSpiritOrb();
void updateChests();
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
inline unsigned char colorAt(int x, int y);

int chestOpened;
int hasArmor;
int spiritOrbCount;
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

OBJ_ATTR shadowOAM[128];


void initGame() {
    (*(volatile unsigned short *)0x4000000) = ((0) & 7) | (1 << (8 + (0 % 4))) | (1 << 12);
    (*(volatile unsigned short*) 0x4000008) = ((0) << 2) | ((8) << 8) | (3 << 14);

    DMANow(3, linkTiles, &((CB*) 0x6000000)[4], 28672 / 2);
    DMANow(3, linkPal, ((u16 *)0x5000200), 256);

    chestOpened = 0;
    hOff = 0;
    vOff = 0;
    hasArmor = 0;
    spiritOrbCount = 0;
    cooldown = 0;

    initPlayer();
    initKorok1();
    initKorok2();
    initSpiritOrb();
    initChest();
    initArmor();
    initMarker();
    initStamina();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void initPlayer() {
    player.x = 256;
    player.y = 96;
    player.width = 16;
    player.height = 24;
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

void initKorok1() {

    korok1.x = 301;
    korok1.y = 282;
    korok1.width = 24;
    korok1.height = 32;
    korok1.timeUntilNextFrame = 15;
    korok1.direction = DOWN;
    korok1.isAnimating = 1;
    korok1.currentFrame = 0;
    korok1.numFrames = 3;
    korok1.oamIndex = 1;
}

void initKorok2() {

    korok2.x = 396;
    korok2.y = 81;
    korok2.width = 16;
    korok2.height = 24;
    korok2.xVel = 1;
    korok2.yVel = 1;
    korok2.timeUntilNextFrame = 20;
    korok2.direction = DOWN;
    korok2.isAnimating = 1;
    korok2.currentFrame = 0;
    korok2.numFrames = 3;
    korok2.oamIndex = 2;
    korok2.korokDirection = DOWN;
}

void initSpiritOrb() {

    spiritOrb1.x = 64;
    spiritOrb1.y = 24;
    spiritOrb1.width = 16;
    spiritOrb1.height = 16;
    spiritOrb1.oamIndex = 3;
    spiritOrb1.active = 1;


    spiritOrb2.x = 120;
    spiritOrb2.y = 240;
    spiritOrb2.width = 16;
    spiritOrb2.height = 15;
    spiritOrb2.oamIndex = 14;
    spiritOrb2.active = 1;


    spiritOrb3.x = 320;
    spiritOrb3.y = 464;
    spiritOrb3.width = 16;
    spiritOrb3.height = 16;
    spiritOrb3.oamIndex = 15;
    spiritOrb3.active = 1;
}

void initChest() {
    chest.x = 424;
    chest.y = 96;
    chest.width = 16;
    chest.height = 16;
    chest.oamIndex = 4;
    chest.active = 1;
}

void initArmor() {
    armor.x = 424;
    armor.y = 80;
    armor.width = 16;
    armor.height = 32;
    armor.oamIndex = 6;
    armor.active = 0;
}

void initMarker() {
    marker.x = player.x + 4;
    marker.y = player.y - 2;
    marker.width = 8;
    marker.height = 8;
    marker.oamIndex = 7;
    marker.active = 0;
}

void initStamina() {

    stamina1.x = 180;
    stamina1.y = 5;
    stamina1.width = 16;
    stamina1.height = 16;
    stamina1.oamIndex = 8;
    stamina1.active = 0;

    staminaHold1.x = 180;
    staminaHold1.y = 5;
    staminaHold1.width = 16;
    staminaHold1.height = 16;
    staminaHold1.oamIndex = 11;
    staminaHold1.active = 1;


    stamina2.x = 200;
    stamina2.y = 5;
    stamina2.width = 16;
    stamina2.height = 16;
    stamina2.oamIndex = 9;
    stamina2.active = 0;

    staminaHold2.x = 200;
    staminaHold2.y = 5;
    staminaHold2.width = 16;
    staminaHold2.height = 16;
    staminaHold2.oamIndex = 12;
    staminaHold2.active = 1;


    stamina3.x = 220;
    stamina3.y = 5;
    stamina3.width = 16;
    stamina3.height = 16;
    stamina3.oamIndex = 10;
    stamina3.active = 0;

    staminaHold3.x = 220;
    staminaHold3.y = 5;
    staminaHold3.width = 16;
    staminaHold3.height = 16;
    staminaHold3.oamIndex = 13;
    staminaHold3.active = 1;
}

void updateGame() {
    updatePlayer();
    updateKorok1();
    updateKorok2();
    updateSpiritOrb();
    updateChests();
    updateMarker();
    updateStamina();
}

void updatePlayer() {
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
        if (player.y + player.height < 512 && colorAt(leftX, topY - player.yVel) && colorAt(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
    }
    if ((~(buttons) & ((1<<7)))) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < 512 && colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if ((~(buttons) & ((1<<4)))) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < 512 && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
    }
    if ((~(buttons) & ((1<<5)))) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < 512 && colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
    }


    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }


    if (player.x + player.width > 512) {
        player.x = 512 - player.width;
    }
    if (player.y + player.height > 512) {
        player.y = 512 - player.height;
    }

    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > 512 - 240) {
        hOff = 512 - 240;
    }
    if (vOff > 512 - 160) {
        vOff = 512 - 160;
    }


    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 15;
        }
    } else {
        player.currentFrame = 1;
        player.timeUntilNextFrame = 15;
    }


    if (collision(player.x, player.y, player.width, player.height, 496, 392, 16, 48)) {
        initSpring();
        goToSpring();
    }
}

void updateKorok1() {


    if (korok1.isAnimating) {
        --korok1.timeUntilNextFrame;
        if (korok1.timeUntilNextFrame == 0) {
            korok1.currentFrame = (korok1.currentFrame + 1) % korok1.numFrames;
            korok1.timeUntilNextFrame = 15;
        }
    } else {
        korok1.currentFrame = 0;
    }
}

void updateKorok2() {


    if (korok2.korokDirection == DOWN) {
        korok2.y += korok2.yVel;
        if (korok2.y >= 171) {
            korok2.korokDirection = UP;
        }
    } else if (korok2.korokDirection == UP) {
        korok2.y -= korok2.yVel;
        if (korok2.y <= 81) {
            korok2.korokDirection = DOWN;
        }
    }


    if (korok2.isAnimating) {
        --korok2.timeUntilNextFrame;
        if (korok2.timeUntilNextFrame == 0) {
            korok2.currentFrame = (korok2.currentFrame + 1) % korok2.numFrames;
            korok2.timeUntilNextFrame = 20;
        }
    } else {
        korok2.currentFrame = 0;
    }
}

void updateSpiritOrb() {

    if (collision(player.x, player.y, player.width, player.height, spiritOrb1.x, spiritOrb1.y, spiritOrb1.width, spiritOrb1.height) && spiritOrb1.active) {
        spiritOrb1.active = 0;
        spiritOrbCount++;
    }
    if (collision(player.x, player.y, player.width, player.height, spiritOrb2.x, spiritOrb2.y, spiritOrb2.width, spiritOrb2.height) && spiritOrb2.active) {
        spiritOrb2.active = 0;
        spiritOrbCount++;
    }
    if (collision(player.x, player.y, player.width, player.height, spiritOrb3.x, spiritOrb3.y, spiritOrb3.width, spiritOrb3.height) && spiritOrb3.active) {
        spiritOrb3.active = 0;
        spiritOrbCount++;
    }
}

void updateChests() {

    if (chest.active && !chestOpened) {
        if (collision(player.x, player.y, player.width, player.height, chest.x, chest.y, chest.width, chest.height)) {
            if ((!(~(oldButtons) & ((1<<2))) && (~(buttons) & ((1<<2))))) {
                chestOpened = 1;
                armor.active = 1;
            }
        }
    }

    if ((!(~(oldButtons) & ((1<<1))) && (~(buttons) & ((1<<1)))) && armor.active) {
        armor.active = 0;
        hasArmor = 1;
    }
}

void updateMarker() {
    marker.x = player.x + 4;
    marker.y = player.y - 2;

    if (collision(player.x, player.y, player.width, player.height, chest.x, chest.y, chest.width, chest.height) && chest.active) {
        marker.active = 1;
    }

    else if (collision(player.x, player.y, player.width, player.height, korok1.x, korok1.y, korok1.width, korok1.height)) {
        marker.active = 1;
    } else if (collision(player.x, player.y, player.width, player.height, korok2.x, korok2.y, korok2.width, korok2.height)) {
        marker.active = 1;
    } else {
        marker.active = 0;
    }
}

void updateStamina() {
    if (cooldown > 0) {
        cooldown--;
    } else {
        if (spiritOrbCount == 1 && !stamina1.active) {
            stamina1.active = 1;
            staminaHold1.active = 0;
            cooldown = 60;
        }
        if (spiritOrbCount == 2 && !stamina2.active) {
            stamina2.active = 1;
            staminaHold2.active = 0;
            cooldown = 60;
        }
        if (spiritOrbCount == 3 && !stamina3.active) {
            stamina3.active = 1;
            staminaHold3.active = 0;
            cooldown = 60;
        }
    }
}

void drawGame() {
    drawPlayer();
    drawKorok1();
    drawKorok2();
    drawSpiritOrb();
    drawChests();
    drawArmor();
    drawMarker();
    drawStamina();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 128*4);
}

void drawPlayer() {
    shadowOAM[player.oamIndex].attr0 = ((player.y - vOff) & 0xFF) | (0<<8) | (2<<14);
    shadowOAM[player.oamIndex].attr1 = ((player.x - hOff) & 0x1FF) | (2<<14);
    shadowOAM[player.oamIndex].attr2 = (((1) & 0xF) <<12) | ((((player.direction * 4) * (32) + (player.currentFrame * 2))) & 0x3FF);
    (*(volatile unsigned short*) 0x04000010) = hOff;
    (*(volatile unsigned short*) 0x04000012) = vOff;
}

void drawKorok1() {

    int screenY = korok1.y - vOff;
    int screenX = korok1.x - hOff;

    if (screenY > 160 || screenX > 240 || screenY < -korok1.height || screenX < -korok1.width) {
        shadowOAM[korok1.oamIndex].attr0 = (2<<8);
    } else {
        shadowOAM[korok1.oamIndex].attr0 = ((korok1.y - vOff) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[korok1.oamIndex].attr1 = ((korok1.x - hOff) & 0x1FF) | (2<<14);
        shadowOAM[korok1.oamIndex].attr2 = (((0) & 0xF) <<12) | ((((16) * (32) + (korok1.currentFrame * 4))) & 0x3FF);
    }
}

void drawKorok2() {

    int screenY = korok2.y - vOff;
    int screenX = korok2.x - hOff;

    if (screenY > 160 || screenX > 240 || screenY < -korok2.height || screenX < -korok2.width) {
        shadowOAM[korok2.oamIndex].attr0 = (2<<8);
    } else {
        int korokY = (korok2.korokDirection == DOWN) ? 20 : 24;
        shadowOAM[korok2.oamIndex].attr0 = ((korok2.y - vOff) & 0xFF) | (0<<8) | (2<<14);
        shadowOAM[korok2.oamIndex].attr1 = ((korok2.x - hOff) & 0x1FF) | (2<<14);
        shadowOAM[korok2.oamIndex].attr2 = (((0) & 0xF) <<12) | ((((korokY) * (32) + (korok2.currentFrame * 2))) & 0x3FF);
    }
}

void drawSpiritOrb() {

    if (spiritOrb1.active) {
        int screenY = spiritOrb1.y - vOff;
        int screenX = spiritOrb1.x - hOff;

        if (screenY > 160 || screenX > 240 || screenY < -spiritOrb1.height || screenX < -spiritOrb1.width) {
            shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[spiritOrb1.oamIndex].attr0 = ((spiritOrb1.y - vOff) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[spiritOrb1.oamIndex].attr1 = ((spiritOrb1.x - hOff) & 0x1FF) | (1<<14);
            shadowOAM[spiritOrb1.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((1) * (32) + (7))) & 0x3FF);
        }
    } else {
        shadowOAM[spiritOrb1.oamIndex].attr0 = (2<<8);
    }


    if (spiritOrb2.active) {
        int screenY = spiritOrb2.y - vOff;
        int screenX = spiritOrb2.x - hOff;

        if (screenY > 160 || screenX > 240 || screenY < -spiritOrb2.height || screenX < -spiritOrb2.width) {
            shadowOAM[spiritOrb2.oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[spiritOrb2.oamIndex].attr0 = ((spiritOrb2.y - vOff) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[spiritOrb2.oamIndex].attr1 = ((spiritOrb2.x - hOff) & 0x1FF) | (1<<14);
            shadowOAM[spiritOrb2.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((1) * (32) + (7))) & 0x3FF);
        }
    } else {
        shadowOAM[spiritOrb2.oamIndex].attr0 = (2<<8);
    }


    if (spiritOrb3.active) {
        int screenY = spiritOrb3.y - vOff;
        int screenX = spiritOrb3.x - hOff;

        if (screenY > 160 || screenX > 240 || screenY < -spiritOrb3.height || screenX < -spiritOrb3.width) {
            shadowOAM[spiritOrb3.oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[spiritOrb3.oamIndex].attr0 = ((spiritOrb3.y - vOff) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[spiritOrb3.oamIndex].attr1 = ((spiritOrb3.x - hOff) & 0x1FF) | (1<<14);
            shadowOAM[spiritOrb3.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((1) * (32) + (7))) & 0x3FF);
        }
    } else {
        shadowOAM[spiritOrb3.oamIndex].attr0 = (2<<8);
    }
}

void drawChests() {
    int tileY = ((chestOpened) ? 6 : 4);
    if (chest.active) {
        int screenY = chest.y - vOff;
        int screenX = chest.x - hOff;

        if (screenY > 160 || screenX > 240 || screenY < -chest.height || screenX < -chest.width) {
            shadowOAM[chest.oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[chest.oamIndex].attr0 = ((chest.y - vOff) & 0xFF) | (0<<8) | (0<<14);
            shadowOAM[chest.oamIndex].attr1 = ((chest.x - hOff) & 0x1FF) | (1<<14);
            shadowOAM[chest.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((tileY) * (32) + (6))) & 0x3FF);
        }
    } else {
        shadowOAM[chest.oamIndex].attr0 = (2<<8);
    }
}

void drawArmor() {
    if (armor.active) {
        int screenY = armor.y - vOff;
        int screenX = armor.x - hOff;

        if (screenY > 160 || screenX > 240 || screenY < -armor.height || screenX < -armor.width) {
            shadowOAM[armor.oamIndex].attr0 = (2<<8);
        } else {
            shadowOAM[armor.oamIndex].attr0 = ((armor.y - vOff) & 0xFF) | (0<<8) | (2<<14);
            shadowOAM[armor.oamIndex].attr1 = ((armor.x - hOff) & 0x1FF) | (2<<14);
            shadowOAM[armor.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((0) * (32) + (10))) & 0x3FF);
        }
    } else {
        shadowOAM[armor.oamIndex].attr0 = (2<<8);
    }
}

void drawMarker() {

    if (marker.active) {
        shadowOAM[marker.oamIndex].attr0 = ((marker.y - vOff) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[marker.oamIndex].attr1 = ((marker.x - hOff) & 0x1FF) | (0<<14);
        shadowOAM[marker.oamIndex].attr2 = (((2) & 0xF) <<12) | ((((4) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[marker.oamIndex].attr0 = (2<<8);
    }
}

void drawStamina() {

    if (stamina1.active) {
        shadowOAM[stamina1.oamIndex].attr0 = ((stamina1.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[stamina1.oamIndex].attr1 = ((stamina1.x) & 0x1FF) | (1<<14);
        shadowOAM[stamina1.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[stamina1.oamIndex].attr0 = (2<<8);
    }

    if (staminaHold1.active) {
        shadowOAM[staminaHold1.oamIndex].attr0 = ((staminaHold1.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[staminaHold1.oamIndex].attr1 = ((staminaHold1.x) & 0x1FF) | (1<<14);
        shadowOAM[staminaHold1.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (10))) & 0x3FF);
    } else {
        shadowOAM[staminaHold1.oamIndex].attr0 = (2<<8);
    }

    if (stamina2.active) {
        shadowOAM[stamina2.oamIndex].attr0 = ((stamina2.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[stamina2.oamIndex].attr1 = ((stamina2.x) & 0x1FF) | (1<<14);
        shadowOAM[stamina2.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[stamina2.oamIndex].attr0 = (2<<8);
    }

    if (staminaHold2.active) {
        shadowOAM[staminaHold2.oamIndex].attr0 = ((staminaHold2.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[staminaHold2.oamIndex].attr1 = ((staminaHold2.x) & 0x1FF) | (1<<14);
        shadowOAM[staminaHold2.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (10))) & 0x3FF);
    } else {
        shadowOAM[staminaHold2.oamIndex].attr0 = (2<<8);
    }

    if (stamina3.active) {
        shadowOAM[stamina3.oamIndex].attr0 = ((stamina3.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[stamina3.oamIndex].attr1 = ((stamina3.x) & 0x1FF) | (1<<14);
        shadowOAM[stamina3.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (8))) & 0x3FF);
    } else {
        shadowOAM[stamina3.oamIndex].attr0 = (2<<8);
    }

    if (staminaHold3.active) {
        shadowOAM[staminaHold3.oamIndex].attr0 = ((staminaHold3.y) & 0xFF) | (0<<8) | (0<<14);
        shadowOAM[staminaHold3.oamIndex].attr1 = ((staminaHold3.x) & 0x1FF) | (1<<14);
        shadowOAM[staminaHold3.oamIndex].attr2 = (((3) & 0xF) <<12) | ((((6) * (32) + (10))) & 0x3FF);
    } else {
        shadowOAM[staminaHold3.oamIndex].attr0 = (2<<8);
    }
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char*) collisionZeldaBitmap) [((y) * (512) + (x))];
}
