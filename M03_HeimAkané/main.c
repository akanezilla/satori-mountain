#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "startTiles.h"
#include "start.h"
#include "instructions.h"
#include "instructionsPal.h"
#include "pause.h"
#include "pauseTiles.h"
#include "zelda.h"
#include "zeldaMap.h"
#include "win.h"
#include "winPal.h"
#include "lose.h"
#include "losePal.h"
#include "spring.h"
#include "springMap.h"

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
        buttons = REG_BUTTONS;

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
    //set mode 4, background, and backbuffer
    mgba_open();
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(8);
    initSound();

    goToStart();
}

void goToStart() {
    DMANow(3, startTiles, &CHARBLOCK[0], startTilesLen / 2);
    DMANow(3, startTilesMap, &SCREENBLOCK[8], startTilesMapLen / 2);
    DMANow(3, startPal, BG_PALETTE, startPalLen / 2);

    //hide sprites
    shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    DMANow(3, shadowOAM, OAM, 128*4);

    state = START;
}

void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions();
    }
}

void goToInstructions() {
    DMANow(3, instructionsPalTiles, &CHARBLOCK[0], instructionsPalTilesLen / 2);
    DMANow(3, instructionsMap, &SCREENBLOCK[8], instructionsLen / 2);
    DMANow(3, instructionsPalPal, BG_PALETTE, instructionsPalPalLen / 2);

    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToGame();
    }
}

void goToGame() {
    DMANow(3, zeldaTiles, &CHARBLOCK[0], zeldaTilesLen / 2);
    DMANow(3, zeldaMapMap, &SCREENBLOCK[8], zeldaMapLen / 2);
    DMANow(3, zeldaPal, BG_PALETTE, 256);

    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToLose();
    }
}

void goToPause() {
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseTilesMap, &SCREENBLOCK[8], pauseTilesMapLen / 2);
    DMANow(3, pausePal, BG_PALETTE, pausePalLen / 2);

    //hide sprites
    shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[chest.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[armor.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[marker.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[stamina1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[stamina2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[stamina3.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[staminaHold1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[staminaHold2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[staminaHold3.oamIndex].attr0 = ATTR0_HIDE;
    DMANow(3, shadowOAM, OAM, 128*4);

    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void goToWin() {
    DMANow(3, winPalTiles, &CHARBLOCK[0], winPalTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[8], winLen / 2);
    DMANow(3, winPalPal, BG_PALETTE, winPalPalLen / 2);

    //hide sprites
    shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    DMANow(3, shadowOAM, OAM, 128*4);

    state = WIN;
}

void win() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    DMANow(3, losePalTiles, &CHARBLOCK[0], losePalTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[8], loseLen / 2);
    DMANow(3, losePalPal, BG_PALETTE, losePalPalLen / 2);

    //hide sprites
    shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    DMANow(3, shadowOAM, OAM, 128*4);

    state = LOSE;
}

void lose() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToSpring() {
    DMANow(3, springTiles, &CHARBLOCK[0], springTilesLen / 2);
    DMANow(3, springMapMap, &SCREENBLOCK[8], springMapLen / 2);
    DMANow(3, springPal, BG_PALETTE, springPalLen / 2);

    //hide sprites
    shadowOAM[player.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok1.oamIndex].attr0 = ATTR0_HIDE;
    shadowOAM[korok2.oamIndex].attr0 = ATTR0_HIDE;
    spiritOrb1.active = 0;
    shadowOAM[spiritOrb1.oamIndex].attr0 = ATTR0_HIDE;
    DMANow(3, shadowOAM, OAM, 128*4);

    state = SPRING;
}

void spring() {
    updateSpring();
    drawSpring();
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
}