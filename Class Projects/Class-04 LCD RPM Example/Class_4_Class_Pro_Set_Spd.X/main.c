/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 17 March, 2025, 9:29 PM
 */

#include <xc.h>
#include <stdint.h>
#include<stdio.h>

// CONFIG
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator)
#pragma config WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
#pragma config PWRTE = OFF      // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
#pragma config LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
#pragma config WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
#pragma config CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)

#define _XTAL_FREQ 20000000  // Define the crystal oscillator frequency as 20MHz (for delay functions)
void Lcdinit(void);          // Function prototype for LCD initialization
void LcdCommand(uint8_t i);    // Function prototype for sending commands to the LCD
void LcdData(uint8_t i);       // Function prototype for sending data to the LCD
void LcdOutput(uint16_t i);
void keyScan(void);

uint8_t Array[15] = {"SET SPD:    rpm"};
uint8_t x, m, n, value;
uint16_t j = 0;

void main(void){
    Lcdinit();  // Initialize the LCD

    while(1)
    {
        keyScan();
        __delay_ms(100);
    }
}

// Function to initialize the LCD
void Lcdinit(void)
{
    TRISC = 0x00;  // Set PORTC as output (for control signals)
    TRISD = 0x00;  // Set PORTD as output (for data signals)
    TRISB = 0xF0;  // Set R4 to R7 as Input
    
    OPTION_REG &= ~(0x1U << 7);  // Enable Pull Up
    __delay_ms(100);  // Wait for LCD to stabilize
    
    // LCD initialization sequence as per HD44780 LCD datasheet
    LcdCommand(0x30);  // Send function set command (8-bit mode)
    __delay_ms(100);   
    LcdCommand(0x30);  // Repeat function set command
    __delay_ms(100);
    LcdCommand(0x30);  // Repeat function set command again
    __delay_ms(100);
    LcdCommand(0x38);  // Set LCD for 8-bit mode, 2-line display, 5x8 font
    __delay_ms(100);
    LcdCommand(0x0C);  // Turn on display, cursor off
    __delay_ms(100);
    LcdCommand(0x01);  // Clear the display
    __delay_ms(100);
    LcdCommand(0x06);
    __delay_ms(100);
}

void keyScan(void)
{
    value = PORTB & 0xF0;  /* Mask lower 4 bits of PORTB, keeping only the upper 4 bits */

    switch(value)
    {
        case 0xE0:     /* Case when PORTB = 1110 0000 */
            LcdCommand(0x80);  /* Move cursor to the beginning of the first line on LCD */

            for(int i = 0; i < 15; i++)  /* Loop to print the first 15 characters from Array */
            {
                LcdData(Array[i]);  /* Display character from Array on LCD */
            }

            for(int i = 0; i < 4; i++)  /* Loop to display four '0' characters on LCD */
            {
                LcdCommand((uint8_t)0x88 + (uint8_t)i);  /* Move cursor to position (0x88 + i) */
                LcdData(0x30 + 0);  /* Display ASCII '0' on LCD */
            }
            break;

        case 0xD0:     /* Case when PORTB = 1101 0000 */
            if (j < 5000)  /* Ensure that j does not exceed 5000 */
                j++;  /* Increment j */

            LcdCommand(0x88);  /* Move cursor to position 0x88 */
            LcdOutput(j);  /* Display the updated value of j on LCD */
            break;

        case 0xB0:     /* Case when PORTB = 1011 0000 */
            if (j > 1)  /* Ensure that j does not go below 1 */
                j--;  /* Decrement j */

            LcdCommand(0x88);  /* Move cursor to position 0x88 */
            LcdOutput(j);  /* Display the updated value of j on LCD */
            break;

        case 0x70:     /* Case when PORTB = 0111 0000 */
            LcdCommand(0x88);  /* Move cursor to position 0x88 */
            LcdOutput(0);  /* Display '0' on LCD */
            break;

        default:
            /* Handle unexpected values (if needed) */
            break;
    }
}

void LcdOutput(uint16_t i)
{
    uint8_t d1, d2, d3, d4;           // Creating local var to reduce memory consumption
    d4 = (uint8_t)(i / 1000);         // Extract thousands place
    d3 = (uint8_t)((i % 1000) / 100); // Extract hundreds place
    d2 = (uint8_t)((i % 100) / 10);   // Extract tens place
    d1 = (uint8_t)(i % 10);           // Extract ones place     
    
    LcdCommand(0x88);
    LcdData(0x30 + d4);
    LcdData(0x30 + d3);
    LcdData(0x30 + d2);
    LcdData(0x30 + d1);
}

// Function to send data (characters) to the LCD
void LcdData(uint8_t i)
{
    PORTC |= (0x1 << 3);  // Set RS (RC3) = 1 (indicates data mode)
    PORTD = i;            // Place data on PORTD
    PORTC |= (0x1 << 0);  // Set EN (RC0) = 1 (enable pulse start)
    __delay_ms(100);      // Small delay for command execution
    PORTC &= ~(0x1 << 0); // Set EN (RC0) = 0 (enable pulse end)
}

// Function to send commands to the LCD
void LcdCommand(uint8_t i)
{
    PORTC &= ~(0x1 << 3);  // Set RS (RC3) = 0 (indicates command mode)
    PORTD = i;             // Place command on PORTD
    PORTC |= (0x1 << 0);   // Set EN (RC0) = 1 (enable pulse start)
    __delay_ms(100);       // Small delay for command execution
    PORTC &= ~(0x1 << 0);  // Set EN (RC0) = 0 (enable pulse end)
}

