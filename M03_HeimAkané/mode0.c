#include "mode0.h"

void eraseText();
void textToTile(char string[], int offset);

void eraseText() {
    //sets each tile to an empty tile
    for (int i = 0; i < 1024; i++) {
        SCREENBLOCK[16].tilemap[i] = TILEMAP_ENTRY_TILEID(0) | TILEMAP_ENTRY_PALROW(1);
    }
}

void textToTile(char string[], int offset) {
    int i = 0;
    //prints each letter of the string
    while (string[i] != '\0') {
        SCREENBLOCK[16].tilemap[i + offset] = TILEMAP_ENTRY_TILEID(string[i]) | TILEMAP_ENTRY_PALROW(1);
        i++;
    }
    //prints the arrow
    SCREENBLOCK[16].tilemap[634] = TILEMAP_ENTRY_TILEID(92) | TILEMAP_ENTRY_PALROW(1);
}