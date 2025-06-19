/*
 * File:   keypad.c
 * Author: Lenovo
 *
 * Created on 19 June, 2025, 10:47 PM
 */


#include <xc.h>
#include "keypad.h"
#define _XTAL_FREQ 20000000 // Change if using different crystal
// Keymap for your 4x4 keypad
const char keymap[4][4] = {
{'7', '8', '9', '%'},
{'4', '5', '6', 'X'},
{'1', '2', '3', '-'},
{'C', '0', '=', '+'}
};
// Function to scan and return key press
char keypad_getkey(void) {
TRISB = 0xF0; // RB7-RB4 as input, RB3-RB0 as output
PORTB = 0x00;
for (char row = 0; row < 4; row++) {
PORTB = ~(1 << row) & 0x0F; // Force only lower 4 bits to be active (rows)
for (char col = 0; col < 4; col++) {
if (!(PORTB & (1 << (col + 4)))) { // Check if key is pressed
__delay_ms(20); // Debounce
while (!(PORTB & (1 << (col + 4)))); // Wait for key release
__delay_ms(20);
if (row == 3 && col == 0)
return 'C'; // ON/C as 'C'
return keymap[row][col];
}
}
}
return 0; // No key pressed
}
