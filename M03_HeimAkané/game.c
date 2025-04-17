#include "game.h"
#include "sprites.h"
#include "link.h"
#include "mode0.h"
#include "collisionZelda.h"

void initGame();
void reInitGame();
void initPlayer();
void reInitPlayer();
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
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_LARGE;

    DMANow(3, linkTiles, &CHARBLOCK[4], linkTilesLen / 2);
    DMANow(3, linkPal, SPRITE_PAL, 256);
    
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
    DMANow(3, shadowOAM, OAM, 128*4);
}

void reInitGame() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8) | BG_SIZE_LARGE;

    DMANow(3, linkTiles, &CHARBLOCK[4], linkTilesLen / 2);
    DMANow(3, linkPal, SPRITE_PAL, 256);
    
    hOff = 0;
    vOff = 0;
    cooldown = 0;
    reInitPlayer();
    initKorok1();
    initKorok2();
    initSpiritOrb();
    initChest();
    initArmor();
    initMarker();
    initStamina();
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
    player.active = 1;
}

void reInitPlayer() {
    player.x = 472;
    player.y = 400;
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
    player.active = 0;
}

void initKorok1() {
    //korok with the leaf
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
    //walking korok
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
    //spirit orb 1
    spiritOrb1.x = 64;
    spiritOrb1.y = 24;
    spiritOrb1.width = 16;
    spiritOrb1.height = 16;
    spiritOrb1.oamIndex = 3;
    spiritOrb1.active = 1;

    //spirit orb 2
    spiritOrb2.x = 120;
    spiritOrb2.y = 240;
    spiritOrb2.width = 16;
    spiritOrb2.height = 15;
    spiritOrb2.oamIndex = 14;
    spiritOrb2.active = 1;

    //spirit orb 3
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
    //stamina 1
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

    //stamina 2
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

    //stamina 3
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
        if (player.y + player.height < MAPHEIGHT && colorAt(leftX, topY - player.yVel) && colorAt(rightX, topY - player.yVel)) {
            player.y -= player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        player.isAnimating = 1;
        player.direction = DOWN;
        if (player.y + player.height < MAPHEIGHT && colorAt(leftX, bottomY + player.yVel) && colorAt(rightX, bottomY + player.yVel)) {
            player.y += player.yVel;
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.isAnimating = 1;
        player.direction = RIGHT;
        if ((player.x + player.width) < MAPWIDTH && colorAt(rightX + player.xVel, topY) && colorAt(rightX + player.xVel, bottomY)) {
            player.x += player.xVel;
        }
    } 
    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.isAnimating = 1;
        player.direction = LEFT;
        if ((player.x + player.width) < MAPWIDTH && colorAt(leftX - player.xVel, topY) && colorAt(leftX - player.xVel, bottomY)) {
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
        player.timeUntilNextFrame = 15;
    }

    //enter spring
    if (collision(player.x, player.y, player.width, player.height, 496, 392, 16, 48)) {
        initSpring();
        goToSpring();
    }
}

void updateKorok1() {
//korok with the leaf
    //animation logic
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
//walking korok
    //walking logic
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

    //animation logic
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
    //if link collision
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
    //if link collides once and presses START, open chest
    if (chest.active && !chestOpened) {
        if (collision(player.x, player.y, player.width, player.height, chest.x, chest.y, chest.width, chest.height)) {
            if (BUTTON_PRESSED(BUTTON_SELECT)) {
                chestOpened = 1;
                armor.active = 1;
            }
        }
    }
    //collect armor, disable chest
    if (BUTTON_PRESSED(BUTTON_B) && armor.active) {
        armor.active = 0;
        hasArmor = 1;
    }
}

void updateMarker() {
    marker.x = player.x + 4;
    marker.y = player.y - 2;
    //exclamation point if player comes in contact with chest
    if (collision(player.x, player.y, player.width, player.height, chest.x, chest.y, chest.width, chest.height) && chest.active) {
        marker.active = 1;
    }
    //if korok1 collision
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
    DMANow(3, shadowOAM, OAM, 128*4);
}

void drawPlayer() {
    if (player.active && !hasArmor) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(player.currentFrame * 2, player.direction * 4);
        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;
    } else if (player.active && hasArmor) {
        shadowOAM[player.oamIndex].attr0 = ATTR0_Y(player.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[player.oamIndex].attr1 = ATTR1_X(player.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[player.oamIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(6 + (player.currentFrame * 2), player.direction * 4);
        REG_BG0HOFF = hOff;
        REG_BG0VOFF = vOff;
    } else {
        shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawKorok1() {
    //korok with the leaf
    int screenY = korok1.y - vOff;
    int screenX = korok1.x - hOff;
    //making sure korok doesn't appear twice
    if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -korok1.height || screenX < -korok1.width) {
        shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        shadowOAM[korok1.oamIndex].attr0 = ATTR0_Y(korok1.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[korok1.oamIndex].attr1 = ATTR1_X(korok1.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[korok1.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(korok1.currentFrame * 4, 16);
    }
}

void drawKorok2() {
    //walking korok
    int screenY = korok2.y - vOff;
    int screenX = korok2.x - hOff;
    //making sure korok doesn't appear twice
    if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -korok2.height || screenX < -korok2.width) {
        shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    } else {
        int korokY = (korok2.korokDirection == DOWN) ? 20 : 24;
        shadowOAM[korok2.oamIndex].attr0 = ATTR0_Y(korok2.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
        shadowOAM[korok2.oamIndex].attr1 = ATTR1_X(korok2.x - hOff) | ATTR1_MEDIUM;
        shadowOAM[korok2.oamIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(korok2.currentFrame * 2, korokY);
    }
}

void drawSpiritOrb() {
    //spiritorb 1
    if (spiritOrb1.active) {
        int screenY = spiritOrb1.y - vOff;
        int screenX = spiritOrb1.x - hOff;
        //making sure spiritOrb doesn't appear twice
        if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -spiritOrb1.height || screenX < -spiritOrb1.width) {
            shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_Y(spiritOrb1.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[spiritOrb1.oamIndex].attr1 = ATTR1_X(spiritOrb1.x - hOff) | ATTR1_SMALL;
            shadowOAM[spiritOrb1.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(23, 0);
        }
    } else {
        shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    }

    //spirit orb 2
    if (spiritOrb2.active) {
        int screenY = spiritOrb2.y - vOff;
        int screenX = spiritOrb2.x - hOff;
        //making sure spiritOrb doesn't appear twice
        if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -spiritOrb2.height || screenX < -spiritOrb2.width) {
            shadowOAM[spiritOrb2.oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[spiritOrb2.oamIndex].attr0 = ATTR0_Y(spiritOrb2.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[spiritOrb2.oamIndex].attr1 = ATTR1_X(spiritOrb2.x - hOff) | ATTR1_SMALL;
            shadowOAM[spiritOrb2.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(23, 0);
        }
    } else {
        shadowOAM[spiritOrb2.oamIndex].attr0 = ATTR0_HIDE;
    }

    //spirit orb 3
    if (spiritOrb3.active) {
        int screenY = spiritOrb3.y - vOff;
        int screenX = spiritOrb3.x - hOff;
        //making sure spiritOrb doesn't appear twice
        if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -spiritOrb3.height || screenX < -spiritOrb3.width) {
            shadowOAM[spiritOrb3.oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[spiritOrb3.oamIndex].attr0 = ATTR0_Y(spiritOrb3.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[spiritOrb3.oamIndex].attr1 = ATTR1_X(spiritOrb3.x - hOff) | ATTR1_SMALL;
            shadowOAM[spiritOrb3.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(23, 0);
        }
    } else {
        shadowOAM[spiritOrb3.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawChests() {
    int tileY = ((chestOpened) ? 2 : 0);
    if (chest.active) {
        int screenY = chest.y - vOff;
        int screenX = chest.x - hOff;
        //making sure chest doesn't appear twice
        if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -chest.height || screenX < -chest.width) {
            shadowOAM[chest.oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[chest.oamIndex].attr0 = ATTR0_Y(chest.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
            shadowOAM[chest.oamIndex].attr1 = ATTR1_X(chest.x - hOff) | ATTR1_SMALL;
            shadowOAM[chest.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(30, tileY);
        }
    } else {
        shadowOAM[chest.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawArmor() {
    if (armor.active) {
        int screenY = armor.y - vOff;
        int screenX = armor.x - hOff;
        //making sure armor doesn't appear twice
        if (screenY > SCREENHEIGHT || screenX > SCREENWIDTH || screenY < -armor.height || screenX < -armor.width) {
            shadowOAM[armor.oamIndex].attr0 = ATTR0_HIDE;
        } else {
            shadowOAM[armor.oamIndex].attr0 = ATTR0_Y(armor.y - vOff) | ATTR0_REGULAR | ATTR0_TALL;
            shadowOAM[armor.oamIndex].attr1 = ATTR1_X(armor.x - hOff) | ATTR1_MEDIUM;
            shadowOAM[armor.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(30, 4);
        }
    } else {
        shadowOAM[armor.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawMarker() {
    //if chest marker is active
    if (marker.active) {
        shadowOAM[marker.oamIndex].attr0 = ATTR0_Y(marker.y - vOff) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[marker.oamIndex].attr1 = ATTR1_X(marker.x - hOff) | ATTR1_TINY;
        shadowOAM[marker.oamIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(25, 0);
    } else {
        shadowOAM[marker.oamIndex].attr0 = ATTR0_HIDE;
    }
}

void drawStamina() {
    //if stamina is active, it will draw the full stamina container
    if (stamina1.active) {
        shadowOAM[stamina1.oamIndex].attr0 = ATTR0_Y(stamina1.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[stamina1.oamIndex].attr1 = ATTR1_X(stamina1.x) | ATTR1_SMALL;
        shadowOAM[stamina1.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(26, 0);
    } else {
        shadowOAM[stamina1.oamIndex].attr0 = ATTR0_HIDE;
    }
    
    if (staminaHold1.active) {
        shadowOAM[staminaHold1.oamIndex].attr0 = ATTR0_Y(staminaHold1.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[staminaHold1.oamIndex].attr1 = ATTR1_X(staminaHold1.x) | ATTR1_SMALL;
        shadowOAM[staminaHold1.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(28, 0);
    } else {
        shadowOAM[staminaHold1.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (stamina2.active) {
        shadowOAM[stamina2.oamIndex].attr0 = ATTR0_Y(stamina2.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[stamina2.oamIndex].attr1 = ATTR1_X(stamina2.x) | ATTR1_SMALL;
        shadowOAM[stamina2.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(26, 0);
    } else {
        shadowOAM[stamina2.oamIndex].attr0 = ATTR0_HIDE;
    }
    
    if (staminaHold2.active) {
        shadowOAM[staminaHold2.oamIndex].attr0 = ATTR0_Y(staminaHold2.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[staminaHold2.oamIndex].attr1 = ATTR1_X(staminaHold2.x) | ATTR1_SMALL;
        shadowOAM[staminaHold2.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(28, 0);
    } else {
        shadowOAM[staminaHold2.oamIndex].attr0 = ATTR0_HIDE;
    }

    if (stamina3.active) {
        shadowOAM[stamina3.oamIndex].attr0 = ATTR0_Y(stamina3.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[stamina3.oamIndex].attr1 = ATTR1_X(stamina3.x) | ATTR1_SMALL;
        shadowOAM[stamina3.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(26, 0);
    } else {
        shadowOAM[stamina3.oamIndex].attr0 = ATTR0_HIDE;
    }
    
    if (staminaHold3.active) {
        shadowOAM[staminaHold3.oamIndex].attr0 = ATTR0_Y(staminaHold3.y) | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[staminaHold3.oamIndex].attr1 = ATTR1_X(staminaHold3.x) | ATTR1_SMALL;
        shadowOAM[staminaHold3.oamIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(28, 0);
    } else {
        shadowOAM[staminaHold3.oamIndex].attr0 = ATTR0_HIDE;
    }
}

inline unsigned char colorAt(int x, int y) {
    return ((unsigned char*) collisionZeldaBitmap) [OFFSET(x, y, MAPWIDTH)];
}
