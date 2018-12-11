#define  F_CPU 1200000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>
#include <avr/sleep.h>

#define IR_ON()  (TCCR0A = 0b01000010)
#define IR_OFF() (TCCR0A = 0b00000010)

ISR(INT0_vect){
	cli(); 
	IR_ON();	_delay_us(2000);
	IR_OFF();	_delay_us(28000);
	IR_ON();	_delay_us(200);
	IR_OFF();	_delay_us(1580);
	IR_ON();	_delay_us(400);
	IR_OFF();	_delay_us(3580);
	IR_ON();	_delay_us(400);
	IR_OFF();
	PORTB = 0b00000000;
	_delay_ms(50);
	sei();
}

int main(void)
{
	//入出力方向設定
	DDRB  = 0b00000001;
	PORTB = 0b00000000;
	
	//スリープ設定
	MCUCR = 0b00101000;
	GIMSK = 0b01000000;
	set_sleep_mode(SLEEP_MODE_PWR_DOWN);
	
	//38kHz発振設定
	TCCR0A = 0b01000010;
	TCCR0B = 0b00000001;
	OCR0A = 14;
	
    sei();
    while (1) 
    {
		IR_OFF();
		PORTB = 0b00000000;
		sleep_mode(); 
    }
}

