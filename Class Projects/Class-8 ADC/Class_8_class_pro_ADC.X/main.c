/*
 * File:   main.c
 * Author: sagar
 *
 * Created on 27 April, 2025, 3:09 PM
 */

#include <xc.h>
#include<stdint.h>
#include<stdio.h>
#define  _XTAL_FREQ 2000000

/* Function prototypes */
void adcLcdInit(void);
void LcdOutput(uint16_t i);
void LcdCommand(uint8_t i);
void LcdData(uint8_t i);
uint16_t map(long x, long in_min, long in_max, long out_min, long out_max);

/* Used variables*/
uint16_t adcHigh, adcLow, calibratedValue, adcVolt;
char calibratedVolt[11] = "Cal.Volt: ";

/* main function */ 
void main(void) 
{
    adcLcdInit();
    LcdCommand(0x80);
    for(int i = 0; i < 10; i++)
    {
        LcdData(calibratedVolt[i]);
    }
    
    while(1)
    {
        ADCON0 |= 0x04;           //set Go done bit
        while(ADCON0 & 0x04){}    // wait till conversion complete
        adcHigh = ADRESH;
        adcLow = ADRESL;
        adcVolt = ((adcHigh << 8) | (adcLow)); // right justification
        
        calibratedValue = map(adcVolt, 0, 1023, 0, 48); // calibrate the value
        LcdCommand(0x8A);
        if(calibratedValue >= 47) calibratedValue = 48;
        LcdOutput(calibratedValue);
    }
    return;
}

/* ADC and LCD init function */
void adcLcdInit(void)
{
    TRISC = 0x00;  // Set PORTC as output (for control signals)
    TRISD = 0x00;  // Set PORTD as output (for data signals)
    PORTC = 0x00;
    PORTD = 0x00;
    /****** LCD init ******/
    // LCD initialization sequence as per the HD44780 LCD datasheet
    LcdCommand(0x30);  // Send function set command (8-bit mode)
    __delay_ms(100);   // Delay for command execution
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
    
    /******** ADC Init ***********/
    ADCON1 = 0x8E;
    ADCON0 = 0x81;
    __delay_ms(10);  
}

/* map function to calibrate the values */
uint16_t map(long x, long in_min, long in_max, long out_min, long out_max) {
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

/* LCD output function */
void LcdOutput(uint16_t i)
{ 
    uint8_t d_0, d_1;
    d_0 =  i % 10;
    d_1 = (i/10)%10;

    if(i < 10){
        LcdData(0x20);
        LcdData(0x30 + d_0);
    }else{
        LcdData(0x30 + d_1);
        LcdData(0x30 + d_0);
    }
}

/* Function to send data (characters) to the LCD */
void LcdData(uint8_t i){
    PORTC |= (0x1 << 3);  // Set RS (RC3) = 1 (indicates data mode)
    PORTD = i;            // Place data on PORTD
    PORTC |= (0x1 << 0);  // Set EN (RC0) = 1 (enable pulse start)
    __delay_ms(100);      // Small delay for command execution
    PORTC &= ~(0x1 << 0); // Set EN (RC0) = 0 (enable pulse end)
}

/* Function to send commands to the LCD */
void LcdCommand(uint8_t i) {
    PORTC &= ~(0x1 << 3);  // Set RS (RC3) = 0 (indicates command mode)
    PORTD = i;             // Place command on PORTD
    PORTC |= (0x1 << 0);   // Set EN (RC0) = 1 (enable pulse start)
    __delay_ms(100);       // Small delay for command execution
    PORTC &= ~(0x1 << 0);  // Set EN (RC0) = 0 (enable pulse end)
}