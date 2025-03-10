/*
 * File:   main.c
 * Author: Sagar
 * Created on 9 March, 2025, 3:57 PM
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

#define _XTAL_FREQ 20000000


void  Lcdinit(void);
void  LcdCommand(uint8_t);
void  LcdData(uint8_t);

uint8_t x, i, m;

uint8_t a[18] = {"HELLO WORLD"};

void main(void) {
    Lcdinit();
    for(int i = 0; i < 11; i++)
    {
        LcdCommand(0x80 + i);  // Increment from 0x80 
        LcdData(a[i]);
    }
    while(1); // loop forever
}

void  Lcdinit(void)
{
    TRISC = 0x00;
    TRISD = 0x00;
    __delay_ms(100);
    LcdCommand(0x30);
    __delay_ms(100);
    LcdCommand(0x30);
    __delay_ms(100);
    LcdCommand(0x30);
    __delay_ms(100);
    LcdCommand(0x38);
    __delay_ms(100);
    LcdCommand(0x0C); // Display on Cursor Off
    __delay_ms(100);
    LcdCommand(0x01); // Clear Display
    __delay_ms(100);
}


void  LcdData(uint8_t i)
{
    PORTC |= (0x1 << 3);  // RS = 1; bitwise Operation
    PORTD = i;
    PORTC |= (0x1 << 0);  // EN = 1; bitwise Operation
    __delay_ms(100);
    PORTC &= ~(0x1 << 0);  // EN = 0; bitwise Operation
}

void  LcdCommand(uint8_t i)
{
    PORTC &= ~(0x1 << 3);   // RC3 = 0; bitwise Operation
    PORTD  = i;
    PORTC |= (0x1 << 0);    //    RC0 = 1;  bitwise Operation
    __delay_ms(100);
    PORTC &= ~(0x1 << 0);   //    RC0 = 0;  bitwise Operation
}