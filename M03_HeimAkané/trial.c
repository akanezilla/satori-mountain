#include "trial.h"
#include "sprites.h"
#include "link.h"
#include "mode0.h"

void initTrial();
void initPlayerTrial();
void initLotMTrial();
void updateTrial();
void updatePlayerTrial();
void updateLotMTrial();
void drawTrial();
void drawPlayerTrial();
void drawLotMTrial();
inline unsigned char colorAt3(int x, int y);

enum DIRECTION {DOWN, RIGHT, UP, LEFT} direction;

SPRITE player;
SPRITE lotm;

void initTrial() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_SMALL;

    DMANow(3, linkTiles, &CHARBLOCK[4], linkTilesLen / 2);
    DMANow(3, linkPal, SPRITE_PAL, 256);

    hOff = 0;
    vOff = 0;

    initPlayerTrial();
    initLotMTrial();

    hideSprites();
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);
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
    lotm.oamIndex = 2;
    lotm.direction = RIGHT;
}

void updateTrial() {
    updatePlayerTrial();
    updateLotMTrial();
}

void updatePlayerTrial() {
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
        if (player.y + player.height < MAPHEIGHT) { //&& colorAt3(leftX, topY - player.yVel) && colorAt3(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < MAPHEIGHT) { //&& colorAt3(leftX, bottomY + player.yVel) && colorAt3(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT) && (player.x + player.width) < MAPWIDTH) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < MAPWIDTH) { //&& colorAt3(rightX + player.xVel, topY) && colorAt3(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
    } 
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < MAPWIDTH) { //&& colorAt3(leftX - player.xVel, topY) && colorAt3(leftX - player.xVel, bottomY)) {
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
    
    //enter spring
    if (collision(player.x, player.y, player.width, player.height, 16, 0, 32, 24)) {
        reInitSpring();
        goToSpring();
    }
}

void updateLotMTrial() {
    //seting bounds for the circle
    if (lotm.direction == RIGHT && lotm.x < 184) {
        lotm.x++;
    } else if (lotm.direction == DOWN && lotm.y < 176) {
        lotm.y++;
    } else if (lotm.direction == LEFT && lotm.x > 8) {
        lotm.x--;
    } else if (lotm.direction == UP && lotm.y > 88) {
        lotm.y--;
    }

    //changing directions
    if (lotm.y == 88 && lotm.direction == UP) {
        lotm.direction = RIGHT;
    } else if (lotm.x == 184 && lotm.direction == RIGHT) {
        lotm.direction = DOWN;
    } else if (lotm.y == 176 && lotm.direction == DOWN) {
        lotm.direction = LEFT;
    } else if (lotm.x == 8 && lotm.direction == LEFT) {
        lotm.direction = UP;
    }

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

void drawTrial() {
    drawPlayerTrial();
    drawLotMTrial();
}

void drawPlayerTrial() {
    shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
    shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
    shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(player.currentFrame * 2, player.direction * 4);
    REG_BG0HOFF = hOff;
    REG_BG0VOFF = vOff;
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawLotMTrial() {
    int screenY = lotm.y - vOff;
    int screenX = lotm.x - hOff;
    if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -lotm.height || screenX < -lotm.width) {
        shadowOAM[lotm.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[lotm.oamIndex].attr0 = ATTR0_Y(lotm.y - vOff) | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[lotm.oamIndex].attr1 = ATTR1_X(lotm.x - hOff) | ATTR1_LARGE;
        shadowOAM[lotm.oamIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((8  + (lotm.currentFrame * 8)), 8);
    }
}

// inline unsigned char colorAt3(int x, int y) {
//     return ((unsigned char*) //collisionSpringBitmap) [OFFSET(x, y, MAPWIDTH)];
// }