/* 
 * File:   adc.c
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:53 PM
 */

#include<xc.h>
#include "ADC_Header.h"

#define  _XTAL_FREQ 6000000

extern uint16_t adcVolt;
extern uint16_t adcLow;
extern uint16_t adcHigh;

void adcInit(void){
    /******** ADC Init ***********/
    ADCON1 = 0x8E;
    ADCON0 = 0x81;
    __delay_ms(10);
}

void ADCConversionStart(void){
    ADCON0 |= 0x04;           
    while (ADCON0 & 0x04) {}  // Wait for conversion to complete

    // Read ADC result (10-bit value)
    adcHigh = ADRESH;
    adcLow = ADRESL;
    adcVolt = ((adcHigh << 8) | adcLow); // Right justified result
}

/* map function to calibrate the values */
uint16_t map(long x, long in_min, long in_max, long out_min, long out_max) {
    return (uint16_t) (((x - in_min) * (out_max - out_min)) / (in_max - in_min) + out_min);
}