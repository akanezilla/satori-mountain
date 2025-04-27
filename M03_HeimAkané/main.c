#include "gba.h"
#include "mode0.h"
#include "sprites.h"
#include "print.h"
#include "game.h"
#include "startTiles.h"
#include "start.h"
#include "instructions.h"
#include "instructionsPal.h"
#include "zelda.h"
#include "zeldaMap.h"
#include "win.h"
#include "winPal.h"
#include "lose.h"
#include "losePal.h"
#include "spring.h"
#include "springMap.h"
#include "springTrial.h"
#include "trialMap.h"
#include "trial.h"
#include "mode4.h"
#include "digitalSound.h"
#include "startMusic.h"
#include "game.h"
#include "pause.h"
#include "pausePal.h"
#include "loseSong.h"
#include "clouds.h"
#include "cloudTiles.h"
#include "grass.h"

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
void goToTrial();
void trial();

enum STATE {START, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE, SPRING, TRIAL} state;

unsigned short buttons;
unsigned short oldButtons;

enum STATE prevState;

int hOff;
int vOff;
int hOff2;

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
            case TRIAL:
                trial();
                break;
        }
    }
    return 0;
}

void initialize() {
    //set mode 4, background, and backbuffer
    mgba_open();
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    initSound();

    goToStart();
}

void goToStart() {
    REG_DISPCTL = MODE(4) | BG_ENABLE(2) | DISP_BACKBUFFER;
    DMANow(3, startPal, BG_PALETTE, 256);
    drawFullscreenImage4(startBitmap);
    setupSoundInterrupts();
    setupSounds();
    playSoundA(startMusic_data, startMusic_length, 1);

    waitForVBlank();
    flipPages();

    state = START;
}

void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToInstructions();
    }
}

void goToInstructions() {
    DMANow(3, instructionsPal, BG_PALETTE, 256);
    drawFullscreenImage4(instructionsBitmap);

    waitForVBlank();
    flipPages();

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

    blupee1.active = 0;
    blupee2.active = 0;
    blupee3.active = 0;
    hideSprites();

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 128*4);

    prevState = state;
    state = GAME;
}

void game() {
    updateGame();
    drawGame();
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
}

void goToPause() {
    //make sure screen isnt affected by complex movement
    hOff = 0;
    vOff = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

    DMANow(3, pausePalTiles, &CHARBLOCK[0], pausePalTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[8], pauseLen / 2);
    DMANow(3, pausePalPal, BG_PALETTE, pausePalPalLen / 2);

    pauseSounds();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    prevState = state;
    state = PAUSE;
}

void pause() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START) && prevState == GAME) {
        unpauseSounds();
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START) && prevState == SPRING) {
        unpauseSounds();
        goToSpring();
    }
    if (BUTTON_PRESSED(BUTTON_START) && prevState == TRIAL) {
        unpauseSounds();
        goToTrial();
    }
}

void goToWin() {
    REG_DISPCTL = MODE(0) | BG_ENABLE(0) | BG_ENABLE(1);
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | 1;
    REG_BG1CNT = BG_SCREENBLOCK(25) | BG_CHARBLOCK(2) | 0;

    DMANow(3, cloudsTiles, &CHARBLOCK[0], cloudsTilesLen / 2);
    DMANow(3, cloudsTiles, &CHARBLOCK[2], cloudsTilesLen / 2);
    DMANow(3, cloudTilesMap, &SCREENBLOCK[24], cloudTilesMapLen / 2);
    DMANow(3, grassMap, &SCREENBLOCK[25], grassLen / 2);
    DMANow(3, cloudsPal, BG_PALETTE, cloudsPalLen / 2);

    hOff = 0;
    //hOff2 = 0;
    vOff = 0;

    player.active = 0;
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128*4);

    state = WIN;
}

void win() {
    hOff += 1;
    //hOff2 += 2;
    REG_BG0HOFF = hOff;
    //REG_BG1HOFF = hOff2;
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToLose() {
    //make sure screen isnt affected by complex movement
    hOff = 0;
    vOff = 0;
    REG_BG1HOFF = 0;
    REG_BG1VOFF = 0;

    DMANow(3, losePalTiles, &CHARBLOCK[0], losePalTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[8], loseLen / 2);
    DMANow(3, losePalPal, BG_PALETTE, losePalPalLen / 2);

    player.active = 0;
    setupSounds();
    playSoundA(loseSong_data, loseSong_length, 1);
    hideSprites();
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

    hideSprites();
    
    DMANow(3, shadowOAM, OAM, 128*4);

    prevState = state;
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

void goToTrial() {
    DMANow(3, springTiles, &CHARBLOCK[0], springTilesLen / 2);
    DMANow(3, trialMapMap, &SCREENBLOCK[8], trialMapLen / 2);
    DMANow(3, springPal, BG_PALETTE, springPalLen / 2);

    //hide sprites
    blupee1.active = 0;
    blupee2.active = 0;
    blupee3.active = 0;
    hideSprites();

    DMANow(3, shadowOAM, OAM, 128*4);

    state = TRIAL;
}

void trial() {
    updateTrial();
    drawTrial();
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
}