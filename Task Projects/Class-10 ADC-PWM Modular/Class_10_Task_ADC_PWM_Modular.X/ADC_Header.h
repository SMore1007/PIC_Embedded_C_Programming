/* 
 * File:   ADC_Header.h
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:53 PM
 */

#ifndef ADC_HEADER_H
#define	ADC_HEADER_H

#ifdef	__cplusplus
extern "C" {
#endif

void adcInit(void);
void ADCConversionStart(void);
uint16_t map(long x, long in_min, long in_max, long out_min, long out_max);



#ifdef	__cplusplus
}
#endif

#endif	/* ADC_HEADER_H */

