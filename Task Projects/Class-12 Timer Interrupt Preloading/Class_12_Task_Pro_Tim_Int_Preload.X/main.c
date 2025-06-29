/*
 * File:   main.c
 * Author: Lenovo
 *
 * Created on 19 June, 2025, 9:01 PM
 */


#include <xc.h>
#include <stdint.h>

#define _XTAL_FREQ 4000000

// -- [[ Configuration Bits ]] --
#pragma config FOSC = HS        // High-speed external oscillator (4-20 MHz crystal)
#pragma config WDTE = OFF       // Watchdog Timer Enable (WDT disabled)
#pragma config PWRTE = ON       // Power-up Timer Enable (enabled)
#pragma config BOREN = ON       // Brown-out Reset Enable (enabled)
#pragma config LVP = OFF        // Low-Voltage Programming (disabled)
#pragma config CPD = OFF        // Data EEPROM Memory Code Protection (disabled)
#pragma config WRT = OFF        // Flash Program Memory Write Enable (off)
#pragma config CP = OFF         // Flash Program Memory Code Protection (disabled)

uint8_t C = 0; // Global Counter Variable

void timer1Init(void);

void main()
{
  // -- [[ IO Configurations ]] --
  TRISB = 0x00;  // PORTB as output
  TRISC = 0x00;  // PORTD as output (used in ISR)
  
  PORTB = 0x00;
  PORTC = 0x00;

  timer1Init();

  while(1)
  {
    PORTB = 0x00;
    __delay_ms(500);
    PORTB = 0xFF;
    __delay_ms(500);
    
  }
}

void timer1Init(void)
{
  // Choose the local clock source (timer mode) => TMR1CS = 0
  T1CON &= ~(0x01 << 1);

  // Choose the desired prescaler ratio (1:1) => T1CKPS1:T1CKPS0 = 00
  T1CON &= ~(0x01 << 4);
  T1CON &= ~(0x01 << 5);

  // Preload the value to TMR1 register
  TMR1 = 15535;

  // Clear the Timer1 overflow flag
  PIR1 &= ~(0x01 << 0);

  // Enable Timer1 overflow interrupt
  PIE1 |= (0x01 << 0);

  // Enable Peripheral and Global interrupts
  INTCON |= (0x01 << 6); // PEIE
  INTCON |= (0x01 << 7); // GIE

  // Turn ON Timer1 => TMR1ON = 1
  T1CON |= (0x01 << 0);
}

// Interrupt Service Routine - ISR
void __interrupt() ISR(void)
{
  // Check Timer1 overflow interrupt flag
  if (PIR1 & (0x01 << 0))
  {
    C++;
    if(C == 20)
    {
      PORTC = ~PORTC; // Toggle PORTD
      C = 0;
    }

    // Preload the value again
    TMR1 = 15535;

    // Clear the Timer1 interrupt flag
    PIR1 &= ~(0x01 << 0);
  }
}
