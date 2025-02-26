/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 25 February, 2025, 9:48 PM
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

uint8_t val;  // Declare an 8-bit unsigned variable to store PORTB value

void main(void) 
{
    TRISB = 0x0F;  // Configure lower nibble (RB0-RB3) as input, upper nibble (RB4-RB7) as output
    TRISC = 0x00;  // Configure PORTC as output
    PORTB = 0x00;  // Clear PORTB (Ensure initial value is 0)
    PORTC = 0x00;  // Clear PORTC (Ensure initial value is 0)

    while(1)  // Infinite loop to continuously check input and update output
    {
        val = PORTB;  // Read the value from PORTB
        
        switch (val)  // Check the input value and take action accordingly
        {
            case 0x10:  // If RB4 (upper nibble) is HIGH
            {
                PORTC = 0x02;  // Set RC1 HIGH (0000 0010 in binary)
                break;
            }
            case 0x20:  // If RB5 is HIGH
            {
                PORTC = 0x04;  // Set RC2 HIGH (0000 0100 in binary)
                break;
            }
            case 0x40:  // If RB6 is HIGH
            {
                PORTC = 0x06;  // Set RC1 and RC2 HIGH (0000 0110 in binary)
                break;
            }
            case 0x80:  // If RB7 is HIGH
            {
                PORTC = 0x00;  // Turn OFF all PORTC outputs
                break;
            }
            default:  // If none of the above cases match
            {
                PORTC = 0x00;  // Keep PORTC OFF
            }
        }
    }
    return;  // This statement is never reached, as the while(1) loop runs indefinitely
}
