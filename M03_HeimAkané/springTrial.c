#include "springTrial.h"
#include "sprites.h"
#include "link.h"
#include "mode0.h"

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
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_SMALL;

    DMANow(3, linkTiles, &CHARBLOCK[4], linkTilesLen / 2);
    DMANow(3, linkPal, SPRITE_PAL, 256);

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
    DMANow(3, shadowOAM, OAM, 128*4);
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
    blupee1.timeUntilNextFrame = 10;
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
    blupee2.timeUntilNextFrame = 10;
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
    blupee3.timeUntilNextFrame = 10;
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
    //centers player on screen
    hOff = player.x - (SCREENWIDTH - player.width) / 2;
    vOff = player.y - (SCREENHEIGHT - player.height) / 2;

    int leftX = player.x;
    int rightX = player.x + player.width - 1;
    int topY = player.y;
    int bottomY = player.y + player.height - 1;

    //movement logic
    if (BUTTON_HELD(BUTTON_UP)) {
        player.isAnimating = 1;
        player.direction = UP;
        if (player.y + player.height < MAPHEIGHT && colorAt2(leftX, topY - player.yVel) && colorAt2(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < MAPHEIGHT && colorAt2(leftX, bottomY + player.yVel) && colorAt2(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && (player.x + player.width) < MAPWIDTH) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < MAPWIDTH && colorAt2(rightX + player.xVel, topY) && colorAt2(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
    } 
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < MAPWIDTH && colorAt2(leftX - player.xVel, topY) && colorAt2(leftX - player.xVel, bottomY)) {
            player.x -= player.xVel;
        }
    }
    //restrict player to map
    if (player.x < 0) {
        player.x = 0;
    }
    if (player.y < 0) {
        player.y = 0;
    }

    //restrict camera movement
    if (player.x + player.width > MAPWIDTH) {
        player.x = MAPWIDTH - player.width;
    }
    if (player.y + player.height > MAPHEIGHT) {
        player.y = MAPHEIGHT - player.height;
    }

    //restictions to complex movement
    if (hOff < 0) {
        hOff = 0;
    }
    if (vOff < 0) {
        vOff = 0;
    }
    if (hOff > MAPWIDTH - SCREENWIDTH) {
        hOff = MAPWIDTH - SCREENWIDTH;
    }
    if (vOff > MAPHEIGHT - SCREENHEIGHT) {
        vOff = MAPHEIGHT - SCREENHEIGHT;
    }

    //animation logic
    if (player.isAnimating) {
        --player.timeUntilNextFrame;
        if (player.timeUntilNextFrame == 0) {
            player.currentFrame = (player.currentFrame + 1) % player.numFrames;
            player.timeUntilNextFrame = 15;
        }
    } else {
        player.currentFrame = 1;
    }
    
    //enter overworld
    if (collision(player.x, player.y, player.width, player.height, 16, 0, 32, 24)) {
        initGame();
        goToGame();
    }

    //enter spring trial
    if (collision(player.x, player.y, player.width, player.height, 80, 133, 80, 50) && (spiritOrbCount == 3 || (hasArmor && spiritOrbCount >= 1))) {
        initTrial(); 
        goToTrial();
    }
}

void updateBlupees() {
    //walking up and down
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

    //pause walking at the ends
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

    //animation logic
    if (blupee1.isAnimating) {
        --blupee1.timeUntilNextFrame;
        if (blupee1.timeUntilNextFrame == 0) {
            blupee1.currentFrame = (blupee1.currentFrame + 1) % blupee1.numFrames;
            blupee1.timeUntilNextFrame = 10;
        }
    } else {
        blupee1.currentFrame = 0;
    }

    if (blupee2.isAnimating) {
        --blupee2.timeUntilNextFrame;
        if (blupee2.timeUntilNextFrame == 0) {
            blupee2.currentFrame = (blupee2.currentFrame + 1) % blupee2.numFrames;
            blupee2.timeUntilNextFrame = 10;
        }
    } else {
        blupee2.currentFrame = 0;
    }

    if (blupee3.isAnimating) {
        --blupee3.timeUntilNextFrame;
        if (blupee3.timeUntilNextFrame == 0) {
            blupee3.currentFrame = (blupee3.currentFrame + 1) % blupee3.numFrames;
            blupee3.timeUntilNextFrame = 10;
        }
    } else {
        blupee3.currentFrame = 0;
    }
}

void updateLotM() {
    //animating logic
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
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(player.currentFrame * 2, player.direction * 4);
        REG_BG1HOFF = hOff;
        REG_BG1VOFF = vOff;
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6 + (player.currentFrame * 2), player.direction * 4);
        REG_BG1HOFF = hOff;
        REG_BG1VOFF = vOff;
    }
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawBlupees() {
    int screenY1 = blupee1.y - vOff;
    int screenX1 = blupee1.x - hOff;
    if (screenY1 > SCREENHEIGHT || screenX1 > SCREENWIDTH || screenY1 < -blupee1.height || screenX1 < -blupee1.width) {
        shadowOAM[blupee1.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        int blupee1Y = (blupee1.blupeeDirection == BDOWN) ? 0 : 2;
        shadowOAM[blupee1.oamIndex].attr0 = ATTR0_Y(blupee1.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[blupee1.oamIndex].attr1 = ATTR1_X(blupee1.x - hOff) | ATTR1_SMALL;
        shadowOAM[blupee1.oamIndex].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID((13 + (blupee1.currentFrame * 2)), blupee1Y);
    }

    int screenY2 = blupee2.y - vOff;
    int screenX2 = blupee2.x - hOff;
    if (screenY2 > SCREENHEIGHT || screenX2 > SCREENWIDTH || screenY2 < -blupee2.height || screenX2 < -blupee2.width) {
        shadowOAM[blupee2.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        int blupee2Y = (blupee2.blupeeDirection == BDOWN) ? 0 : 2;
        shadowOAM[blupee2.oamIndex].attr0 = ATTR0_Y(blupee2.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[blupee2.oamIndex].attr1 = ATTR1_X(blupee2.x - hOff) | ATTR1_SMALL;
        shadowOAM[blupee2.oamIndex].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID((13 + (blupee2.currentFrame * 2)), blupee2Y);
    }

    int screenY3 = blupee3.y - vOff;
    int screenX3 = blupee3.x - hOff;
    if (screenY3 > SCREENHEIGHT || screenX3 > SCREENWIDTH || screenY3 < -blupee3.height || screenX3 < -blupee3.width) {
        shadowOAM[blupee3.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        int blupee3Y = (blupee3.blupeeDirection2 == BLEFT) ? 4 : 6;
        shadowOAM[blupee3.oamIndex].attr0 = ATTR0_Y(blupee3.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[blupee3.oamIndex].attr1 = ATTR1_X(blupee3.x - hOff) | ATTR1_SMALL;
        shadowOAM[blupee3.oamIndex].attr2 = ATTR2_PALROW(8) | ATTR2_TILEID((13 + (blupee3.currentFrame * 2)), blupee3Y);
    }
}

void drawLotM() {
    int screenY = lotm.y - vOff;
    int screenX = lotm.x - hOff;
    if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -lotm.height || screenX < -lotm.width) {
        shadowOAM[lotm.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[lotm.oamIndex].attr0 = ATTR0_Y(lotm.y - vOff) | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[lotm.oamIndex].attr1 = ATTR1_X(lotm.x - hOff) | ATTR1_LARGE;
        shadowOAM[lotm.oamIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((6  + (lotm.currentFrame * 8)), 20);
    }
}

inline unsigned char colorAt2(int x, int y) {
    return ((unsigned char*) collisionSpringBitmap) [OFFSET(x, y, MAPWIDTH)];
}