#include "trial.h"
#include "sprites.h"
#include "link.h"
#include "mode0.h"

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
    REG_DISPCTL = MODE(0) | BG_ENABLE(1) | SPRITE_ENABLE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_SMALL;

    DMANow(3, linkTiles, &CHARBLOCK[4], linkTilesLen / 2);
    DMANow(3, linkPal, SPRITE_PAL, 256);

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
    //increment stamina if colliding with lotm
    if (BUTTON_PRESSED(BUTTON_SELECT) && collision(player.x, player.y, player.width, player.height, lotm.x, lotm.y, lotm.width, lotm.height)) {
        staminaCount++;
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
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(player.currentFrame * 2, player.direction * 4);
        REG_BG1HOFF = hOff;
        REG_BG1VOFF = vOff;
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE; 
    }
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
        shadowOAM[lotm.oamIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((6  + (lotm.currentFrame * 8)), 20);
    }
}

void drawBar() {
    //bar
    shadowOAM[staminaBar.oamIndex].attr0 = ATTR0_Y(staminaBar.y) | ATTR0_REGULAR | ATTR0_SQUARE;
    shadowOAM[staminaBar.oamIndex].attr1 = ATTR1_X(staminaBar.x) | ATTR1_MEDIUM;
    shadowOAM[staminaBar.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(19, 0);

    //pieces
    if (piece1.active) {
        shadowOAM[piece1.oamIndex].attr0 = ATTR0_Y(piece1.x) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[piece1.oamIndex].attr1 = ATTR1_X(piece1.y) | ATTR1_SMALL;
        shadowOAM[piece1.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(19, 4);
    } else {
        shadowOAM[piece1.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (piece2.active) {
        shadowOAM[piece2.oamIndex].attr0 = ATTR0_Y(piece2.x) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[piece2.oamIndex].attr1 = ATTR1_X(piece2.y) | ATTR1_SMALL;
        shadowOAM[piece2.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(21, 4);
    } else {
        shadowOAM[piece2.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (piece3.active) {
        shadowOAM[piece3.oamIndex].attr0 = ATTR0_Y(piece3.x) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[piece3.oamIndex].attr1 = ATTR1_X(piece3.y) | ATTR1_SMALL;
        shadowOAM[piece3.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(23, 4);
    } else {
        shadowOAM[piece3.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (piece4.active) {
        shadowOAM[piece4.oamIndex].attr0 = ATTR0_Y(piece4.x) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[piece4.oamIndex].attr1 = ATTR1_X(piece4.y) | ATTR1_SMALL;
        shadowOAM[piece4.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(25, 4);
    } else {
        shadowOAM[piece4.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (piece5.active) {
        shadowOAM[piece5.oamIndex].attr0 = ATTR0_Y(piece5.x) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[piece5.oamIndex].attr1 = ATTR1_X(piece5.y) | ATTR1_SMALL;
        shadowOAM[piece5.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(27, 4);
    } else {
        shadowOAM[piece5.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawNumbers() {
    int numbersY = (numbers.currentFrame < 8 ? 24 : 26);
    if (numbers.active) {
        shadowOAM[numbers.oamIndex].attr0 = ATTR0_Y(numbers.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[numbers.oamIndex].attr1 = ATTR1_X(numbers.x) | ATTR1_SMALL;
        shadowOAM[numbers.oamIndex].attr2 = ATTR2_PALROW(5) | ATTR2_TILEID(6 + ((numbers.currentFrame % 8) * 2), numbersY);
    } else {
        shadowOAM[numbers.oamIndex].attr0 = ATTR0_HIDE;
    }
}

// inline unsigned char colorAt3(int x, int y) {
//     return ((unsigned char*) //collisionSpringBitmap) [OFFSET(x, y, MAPWIDTH)];
// }