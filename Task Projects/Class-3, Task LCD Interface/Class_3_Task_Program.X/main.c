/*
 * File:   main.c
 * Author: Sagar
 * Created on 9 March, 2025, 3:57 PM
 */

#include <xc.h>
#include <stdint.h>
#include<stdio.h>

#define _XTAL_FREQ 20000000


void  Lcdinit(void);
void  LcdCommand(uint8_t);
void  LcdData(uint8_t);

uint8_t x, i, m;

uint8_t name[18] = {"SAGAR"};

void main(void) 
{
    Lcdinit();
    for (uint8_t i = 0; i < 11; i++)
    {
        LcdCommand((uint8_t)(0x80 + i));  // type-casting
        LcdData(name[i]);
    }
    for (uint8_t i = 0; i < 11; i++) 
    {
        LcdCommand((uint8_t)(0xCF - i));  // type-casting
        LcdData(name[i]);
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