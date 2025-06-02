/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:37 PM
 */
#include <xc.h>
#include "ADC_Header.h"
#include "LCD_Header.h"
#include "PWM_Header.h"
#define  _XTAL_FREQ 6000000

/* extern variables declarations */
uint16_t adcHigh, adcLow, calibratedValue, adcVolt;

char calibratedVolt[11] = "ADC VALUE: ";

/* main function */
void main(void) {
    adcInit();
    pwmInit();
    LcdInit();
    
    LcdCommand(0x80);
    for (int i = 0; i < 10; i++) {
        LcdData(calibratedVolt[i]);
    }
    
    while (1) {
        // Start ADC conversion
        ADCConversionStart();
       
        // Map ADC value to 0-338 range
        calibratedValue = map(adcVolt, 0, 1023, 0, 338);

        // PWM Register configuration (10-bit PWM)
        configurePWM(calibratedValue);

        // Display mapped value on LCD
        LcdCommand(0x8A);  // Move LCD cursor to proper position
        LcdOutput(calibratedValue);
        
        __delay_ms(100); // Optional delay for LCD stability
    }
    
    return;
}

