/*
 * File:   main.c
 * Author: Lenovo
 *
 * Created on 19 June, 2025, 10:12 AM
 */

#include <xc.h>
#define _XTAL_FREQ 6000000

#pragma config FOSC = HS        // High-speed external oscillator (4-20 MHz crystal)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable (enabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (enabled)
#pragma config LVP = OFF        // Low-Voltage Programming (disabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection (disabled)
#pragma config WRT = OFF        // Flash Program Memory Write Enable (off)
#pragma config CP = OFF         // Flash Program Memory Code Protection (disabled)

void TimerInit(void);
int count;
void main(void)
{
    TimerInit();

    while (1)
    {
        PORTC = 0x00;
        __delay_ms(500);
        PORTC = 0xFF;
        __delay_ms(500);
    }
}

// Timer1 Initialization
void TimerInit(void)
{
    // Set PORTC and PORTD as output
    TRISC = 0x00;
    TRISD = 0x00;

    PORTC = 0x00;
    PORTD = 0x00;

    // Timer1: Prescaler 1:1, oscillator off, Timer1 on
    T1CON = 0x01;  // 0000 0001

    // Clear Timer1 register
    TMR1H = 0;
    TMR1L = 0;
    
    /* TIMER INTERRUPT CONFIGURATION */

    // Enable Global and Peripheral Interrupts
    INTCON |= (0x01 << 7);  // GIE
    INTCON |= (0x01 << 6);  // PEIE

    // Enable Timer1 interrupt
    PIE1 |= (0x01 << 0);    // TMR1IE

    // Clear Timer1 interrupt flag
    PIR1 &= ~(0x01 << 0);   // TMR1IF
}

// Interrupt Service Routine
void __interrupt() ISR(void)
{
    if (PIR1 & (0x01 << 0)) // TMR1IF
    {
        count++;
        if(count == 22)
        {
            // Toggle PORTD on Timer1 interrupt
            PORTD = ~PORTD;
            count = 0;
        }


        // Clear Timer1 interrupt flag
        PIR1 &= ~(0x01 << 0); // Clear TMR1IF
    }
}
