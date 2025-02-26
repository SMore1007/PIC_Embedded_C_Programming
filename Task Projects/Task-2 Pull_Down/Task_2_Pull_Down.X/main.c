/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 25 February, 2025, 10:30 PM
 */

#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ 6000000

// CONFIG
#pragma config FOSC = HS        // HS oscillator
#pragma config WDTE = OFF       // WDT disabled
#pragma config PWRTE = OFF      // Power-up Timer disabled
#pragma config BOREN = OFF      // Brown-out Reset disabled
#pragma config LVP = OFF        // Low-voltage programming disabled
#pragma config CPD = OFF        // Data EEPROM protection off
#pragma config WRT = OFF        // Flash memory write protection off
#pragma config CP = OFF         // Flash memory code protection off

void main(void) 
{
    /////////////// For Best Practice bitwise Operation ////////////////
    
    // Configure RC0 - RC3 as Input (1 = Input)
    TRISC |= 0x0F;  // 0000 1111 (lower nibble as input)
 
    // Configure RD2, RD4 as Output (0 = Output)
    TRISD &= ~(0x1U << 2); // Clear bit 1 (RD2 as Output)
    TRISD &= ~(0x1U << 4); // Clear bit 2 (RD4 as Output)
    
    // Initialize Ports
    PORTC = 0x00; 
    PORTD = 0x00;

    while(1)
    {
        // Check which button is pressed (active LOW)
        if (PORTC & (1 << 0))      // RC0 HIGH
        {
            PORTD = 0x10;  // RD2 LOW, RD4 HIGH (0001 0000)
        }
        else if (PORTC & (1 << 1))  // RC1 HIGH
        {
            PORTD = 0x04;  // RD2 HIGH, RD4 LOW (0000 0100)
        }
        else if (PORTC & (1 << 2))  // RC2 HIGH
        {
            PORTD = 0x14;  // RD2 LOW, RD4 HIGH (0001 0100)
        }
        else if (PORTC & (1 << 3))  // RC3 HIGH
        {
            PORTD = 0x00;  // RD2 LOW, RD4 HIGH (0000 0000)
        }
    }
}