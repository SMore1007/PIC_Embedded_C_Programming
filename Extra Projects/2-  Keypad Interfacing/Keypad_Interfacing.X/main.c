/*
* File: main.c
* Author: SAGAR
*
* Created on 8 June, 2025, 8:33 AM
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "LCD_Header.h"
#include "keypad.h"
#define _XTAL_FREQ 20000000
// LCD Display Labels
#define LCD_POS_NUM1 0x80 // Line 1, position 0
#define LCD_POS_OP 0x87 // Line 1, position 7
#define LCD_POS_NUM2 0x8A // Line 1, position 10
#define LCD_POS_RES 0xC7 // Line 2, position 7
// Variables
char RESULT[8] = "RESULT:"; // 7 chars + null
uint16_t num1 = 0, num2 = 0, result = 0;
char operation = 0;
bool flag = false;
void main(void) {
OPTION_REG &= ~(0x01 << 7); // Enable internal pull-up on PORTB
TRISB = 0xF0; // RB7-RB4 inputs (keypad rows), RB3-RB0 outputs (columns)
PORTB = 0xFF;
char key;
uint8_t digit;
Lcdinit();
// Print second line with "RESULT:" at beginning
LcdCommand(0xC0);
for (int i = 0; i < 7; i++) {
LcdData(RESULT[i]);
}
for (int i = 7; i < 16; i++) {
LcdData(' ');
}while (1)
{
key = keypad_getkey();
if (key) {
if (key == 'C') {
// Reset all values and clear screen
flag = false;
num1 = 0;
num2 = 0;
result = 0;
operation = 0;
LcdCommand(LCD_POS_NUM1);
for (int i = 0; i < 16; i++) LcdData(' ');
LcdCommand(0xC0);
for (int i = 0; i < 7; i++) LcdData(RESULT[i]);
for (int i = 7; i < 16; i++) LcdData(' ');
}
// If digit pressed
else if (key >= '0' && key <= '9') {
digit = key - '0';
if (!flag) {
num1 = num1 * 10 + digit;
LcdCommand(LCD_POS_NUM1);
LcdOutput(num1);
} else {
num2 = num2 * 10 + digit;
LcdCommand(LCD_POS_NUM2);
LcdOutput(num2);
}
}
// Operator pressed
else if (key == '+' || key == '-' || key == 'X' || key == '%') {
operation = key;
flag = true;
LcdCommand(LCD_POS_OP);
LcdData(operation);
}
// Equals pressed
else if (key == '=') {
switch (operation) {
case '+': result = num1 + num2; break;
case '-': result = num1 - num2; break;
case 'X': result = num1 * num2; break;case '%':
if (num2 != 0)
result = num1 / num2;
else
result = 0;
break;
}
LcdCommand(LCD_POS_RES);
LcdOutput(result);
}
}
}
}
