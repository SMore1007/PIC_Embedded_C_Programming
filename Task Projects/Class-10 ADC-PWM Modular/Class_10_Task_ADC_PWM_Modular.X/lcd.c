
/* 
 * File:   lcd.c
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:48 PM
 */

#include<xc.h>
#include "LCD_Header.h"

#define  _XTAL_FREQ 6000000


/* LCD init function */
void LcdInit(void) {
    TRISB = 0x00; // Set PORTC as output (for control signals)
    TRISD = 0x00;
    PORTB = 0x00;
    PORTD = 0x00;

    /****** LCD init ******/
    // LCD initialization sequence as per the HD44780 LCD datasheet
    LcdCommand(0x30); // Send function set command (8-bit mode)
    __delay_ms(100); // Delay for command execution
    LcdCommand(0x30); // Repeat function set command
    __delay_ms(100);
    LcdCommand(0x30); // Repeat function set command again
    __delay_ms(100);
    LcdCommand(0x38); // Set LCD for 8-bit mode, 2-line display, 5x8 font
    __delay_ms(100);
    LcdCommand(0x0C); // Turn on display, cursor off
    __delay_ms(100);
    LcdCommand(0x01); // Clear the display
    __delay_ms(100);
}

/* LCD output function */
void LcdOutput(uint16_t i) {
    uint8_t d1, d2, d3, d4; // Creating local var to reduce memory consumption
    d3 = (uint8_t) ((i % 1000) / 100); // Extract hundreds place
    d2 = (uint8_t) ((i % 100) / 10); // Extract tens place
    d1 = (uint8_t) (i % 10); // Extract ones place     

    LcdCommand(0x8A);
    LcdData(0x30 + d3);
    LcdData(0x30 + d2);
    LcdData(0x30 + d1);
}

/* Function to send data (characters) to the LCD */
void LcdData(uint8_t i) {
    PORTB |= (0x1 << 3); // Set RS (RC3) = 1 (indicates data mode)
    PORTD = i; // Place data on PORTD
    PORTB |= (0x1 << 0); // Set EN (RC0) = 1 (enable pulse start)
    PORTB &= ~(0x1 << 0); // Set EN (RC0) = 0 (enable pulse end)
    __delay_ms(100); // Small delay for command execution
}

/* Function to send commands to the LCD */
void LcdCommand(uint8_t i) {
    PORTB &= ~(0x1 << 3); // Set RS (RC3) = 0 (indicates command mode)
    PORTD = i; // Place command on PORTD
    PORTB |= (0x1 << 0); // Set EN (RC0) = 1 (enable pulse start)
    PORTB &= ~(0x1 << 0); // Set EN (RC0) = 0 (enable pulse end)
    __delay_ms(100); // Small delay for command execution
}

