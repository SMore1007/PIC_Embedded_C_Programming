/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 25 February, 2025, 8:53 PM
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
    ////////////// WE Can do this as well //////////////////////
    /*
    // RB4 to RB7 are in  input mode
    TRISB = 0xF0;      // 1111 0000
    // RC1 and RC2 are in Output mode
    TRISC = 0xF9;      // 1111 1001
     */
    /////////////// For Best Practice bitwise Operation ////////////////
    
    // Configure RB4 - RB7 as Input (1 = Input)
    TRISB |= 0xF0;  // 1111 0000 (Upper nibble as input)
    
    // Enable pull-ups on PORTB
    OPTION_REG &= ~(1 << 7);  // Clear RBPU (Enable PORTB pull-ups)
    
    // Configure RC1, RC2 as Output (0 = Output)
    TRISC &= ~(1 << 1); // Clear bit 1 (RC1 as Output)
    TRISC &= ~(1 << 2); // Clear bit 2 (RC2 as Output)
    
    // Initialize Ports
    PORTC = 0x00; 
    PORTB = 0x00;

    while(1)
    {
        // Check which button is pressed (active LOW)
        if (!(PORTB & (1 << 4)))      // RB4 LOW
        {
            PORTC = 0x02;  // RC1 HIGH, RC2 LOW (0000 0010)
        }
        else if (!(PORTB & (1 << 5))) // RB5 LOW
        {
            PORTC = 0x04;  // RC1 LOW, RC2 HIGH (0000 0100)
        }
        else if (!(PORTB & (1 << 6))) // RB6 LOW
        {
            PORTC = 0x06;  // RC1 HIGH, RC2 HIGH (0000 0110)
        }
        else if (!(PORTB & (1 << 7))) // RB7 LOW
        {
            PORTC = 0x00;  // RC1 LOW, RC2 LOW (0000 0000)
        }
    }
}