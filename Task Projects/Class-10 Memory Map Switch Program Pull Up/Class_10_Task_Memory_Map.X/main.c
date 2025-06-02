/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 1 June, 2025, 9:12 PM
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

uint8_t val;  // Declare an 8-bit unsigned variable to store the PORTB value

/* creating New Register Names by Memory Mapping */
uint8_t *OPTION_REGISTER = (uint8_t *) 0x81;
uint8_t *DIR_REGISTER_B  = (uint8_t *) 0x86;
uint8_t *DIR_REGISTER_C  = (uint8_t *) 0x87;
uint8_t *DATA_REGISTER_B = (uint8_t *) 0x06;
uint8_t *DATA_REGISTER_C = (uint8_t *) 0x07;

void main(void) 
{
    /* Enable the Pull Up*/
    *OPTION_REGISTER &= ~(0x01 << 7);
    
    /* Configure upper nibble (RB4-RB7) as input (1)*/
    *DIR_REGISTER_B = 0xF0;  
    
    /* Configure PORTC as output (all bits set to 0 for output)*/
    *DIR_REGISTER_C = 0x00;
     
    /* Initialize PORTB to 0 */
    *DATA_REGISTER_B = 0x00;

    while(1)  // Infinite loop to continuously monitor inputs and update outputs
    {
        val = *DATA_REGISTER_B;  // Read the value from PORTB (RB4-RB7 are used as input)
        switch (val)  // Check the input value and decide the output on PORTC
        {
            case 0xE0:  // If RB5, RB6, RB7 are HIGH, and RB4 is LOW (0b1110 0000)
            {
                *DATA_REGISTER_C  = 0x02;  // Set RC1 HIGH (0000 0010 in binary)
                break;
            }
            case 0xD0:  // If RB4, RB6, RB7 are HIGH, and RB5 is LOW (0b1101 0000)
            {
                *DATA_REGISTER_C  = 0x04;  // Set RC2 HIGH (0000 0100 in binary)
                break;
            }
            case 0xB0:  // If RB4, RB5, RB7 are HIGH, and RB6 is LOW (0b1011 0000)
            {
                *DATA_REGISTER_C  = 0x06;  // Set RC1 and RC2 HIGH (0000 0110 in binary)
                break;
            }
            case 0x70:  // If RB4, RB5, RB6 are HIGH, and RB7 is LOW (0b0111 0000)
            {
                *DATA_REGISTER_C  = 0x00;  // Turn OFF all PORTC outputs
                break;
            }
            default:  // If none of the specific cases match
            {
                *DATA_REGISTER_C  = 0x00;  // Keep PORTC OFF
            }
        }
    }
    return; 
}