/* 
 * File:   pwm.c
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:58 PM
 */

#include<xc.h>
#include "PWM_Header.h"
#include <stdint.h>
#define  _XTAL_FREQ 6000000

void pwmInit(void) {
    TRISC = 0xFB; // Make RC2 (CCP1) an output

    CCP1CON = 0x0C; // PWM mode, 10-bit
    T2CON = 0x06; // Timer2 ON, prescaler 1:16
    PR2 = 0x5E; // Set period

    TMR2 = 0; // Reset Timer2 counter
    TMR2ON = 1; // Turn on Timer2
}

void configurePWM(uint16_t calibratedValue)
{
    CCPR1L = (uint8_t)(calibratedValue >> 2);  // Upper 8 bits
    uint8_t lowerBits = (uint8_t)((calibratedValue & 0x03) << 4);
    CCP1CON = (CCP1CON & 0xCF) | lowerBits;
}


