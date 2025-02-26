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

uint8_t val;  // Declare an 8-bit unsigned variable to store the input value from PORTC
void main(void) 
{
    TRISC = 0x0F;  // Configure lower nibble (RC0-RC3) as input (1), upper nibble (RC4-RC7) as output (0)
    TRISD = 0x00;  // Configure PORTD as output (all bits set to 0 for output)
    PORTC = 0x00;  // Clear PORTC (ensure all outputs are LOW initially)

    while(1)  // Infinite loop to continuously read inputs and update outputs
    {
        val = PORTC;  // Read the value from PORTC (RC0-RC3 are used as input)
        switch (val)  // Check the input value and determine the corresponding output on PORTD
        {
            case 0x01:  // If RC0 is HIGH (0000 0001 in binary)
            {
                PORTD = 0x10;  // Set RD4 HIGH (0001 0000 in binary)
                break;
            }
            case 0x02:  // If RC1 is HIGH (0000 0010 in binary)
            {
                PORTD = 0x04;  // Set RD2 HIGH (0000 0100 in binary)
                break;
            }
            case 0x04:  // If RC2 is HIGH (0000 0100 in binary)
            {
                PORTD = 0x14;  // Set RD4 and RD2 HIGH (0001 0100 in binary)
                break;
            }
            case 0x08:  // If RC3 is HIGH (0000 1000 in binary)
            {
                PORTD = 0x00;  // Turn OFF all PORTD outputs
                break;
            }
            default:  // If no valid input condition is met
            {
                PORTD = 0x00;  // Keep PORTD OFF
            }
        }
    }
    return;  // This statement is never reached due to the infinite loop
}
