/* 
 * File:   PWM_Header.h
 * Author: sagar
 *
 * Created on 2 June, 2025, 10:58 PM
 */

#ifndef PWM_HEADER_H
#define	PWM_HEADER_H

#ifdef	__cplusplus
extern "C" {
#endif

void pwmInit(void);
void configurePWM(uint16_t calibratedValue);

#ifdef	__cplusplus
}
#endif

#endif	/* PWM_HEADER_H */






