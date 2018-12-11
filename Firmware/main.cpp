//Fuse Lo:0x0A Hi:0xFF
#define  F_CPU 1200000UL
#include <avr/io.h>
#include <util/delay.h>

#define IR_ON()  (TCCR0A = 0b01000010)
#define IR_OFF() (TCCR0A = 0b00000010)
#define IR_ON_C()  (PORTB = 0b0000001)
#define IR_OFF_C() (PORTB = 0b0000010)

#define  c_mode		0b00011000
#define  c_nikon	0b00011000
#define  c_canon	0b00010000
#define  c_sony		0b00001000
#define  c_lixil	0b00000000


#define NIKON 0
#define CANON 1
#define SONY  2
#define LIXIL 3

int MODE;

void IR_0(){
	IR_ON();	_delay_us(600);		IR_OFF();	_delay_us(600); //0
}
void IR_1(){
	IR_ON();	_delay_us(1200);	IR_OFF();	_delay_us(600); //1
}

void IR_0_nec(){
	IR_ON();	_delay_us(562);		IR_OFF();	_delay_us(562); //0
}
void IR_1_nec(){
	IR_ON();	_delay_us(562);	IR_OFF();	_delay_us(1686); //1
}

void IR_Canon_data(){
	for(int i=0;i<16;i++){
		IR_ON_C();	_delay_us(11);
		IR_OFF_C();	_delay_us(11);
	}
}

void PWM_int(){
	TCCR0A = 0b01000010;
	TCCR0B = 0b00000001;
	OCR0A = 14;
	IR_OFF();
}

void release_nikon(){
	IR_ON();	_delay_us(2000);
	IR_OFF();	_delay_us(28000);
	IR_ON();	_delay_us(200);
	IR_OFF();	_delay_us(1580);
	IR_ON();	_delay_us(400);
	IR_OFF();	_delay_us(3580);
	IR_ON();	_delay_us(400);
	IR_OFF();
	_delay_ms(100);
}
void release_canon(){
	IR_Canon_data();
	_delay_us(7330);
	IR_Canon_data();
	_delay_ms(100);
}
void release_sony(){
	
	IR_1();	IR_0();	IR_1();	IR_1();
	IR_0();	IR_1();	IR_0();	IR_0();
	IR_1();	IR_0();	IR_0();	IR_0();
	IR_1();	IR_1();	IR_1();	IR_1();
	
	_delay_ms(100);
}

void release_lixil(){
	IR_ON();	_delay_us(8992);		IR_OFF();	_delay_us(4496); //0
	
	IR_0_nec();
	IR_1_nec();
	IR_0_nec();
	IR_1_nec();

	IR_1_nec();
	IR_1_nec();
	IR_0_nec();
	IR_0_nec();
	
	IR_1_nec();
	IR_0_nec();
	IR_0_nec();
	IR_0_nec();

	IR_1_nec();
	IR_1_nec();
	IR_0_nec();
	IR_1_nec();

	IR_0_nec();
	IR_1_nec();
	IR_1_nec();
	IR_1_nec();

	IR_0_nec();
	IR_0_nec();
	IR_1_nec();
	IR_0_nec();

	IR_0_nec();
	
	_delay_ms(100);
}

int main(void)
{
	//入出力方向設定
	DDRB  = 0b00000001;
	PORTB = 0b00011010;

	
	if((PINB & 0b00000010) == 0b00000000){
		PWM_int();
		 while (1) {
			 if((PINB & 0b00000010) == 0b00000000){
				 release_lixil();
			 }
		 }
    }

	if((PINB & c_mode) == c_nikon){
		PWM_int();
		 while (1) {
			 if((PINB & 0b00000010) == 0b00000000){
				 release_nikon();
			 }
		 }
	}
	if((PINB & c_mode) == c_canon){
		 while (1) {
			 if((PINB & 0b00000010) == 0b00000000){
				 release_canon();
			 }
		 }
	}
	if((PINB & c_mode) == c_sony){
		PWM_int();
		 while (1) {
			 if((PINB & 0b00000010) == 0b00000000){
				 release_sony();
			 }
		 }
    }
	
}

