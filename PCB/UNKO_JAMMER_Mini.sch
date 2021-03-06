EESchema Schematic File Version 4
LIBS:UNKO_JAMMER_Mini-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR01
U 1 1 571B768A
P 1900 2050
F 0 "#PWR01" H 1900 1800 50  0001 C CNN
F 1 "GND" H 1900 1900 50  0000 C CNN
F 2 "" H 1900 2050 50  0000 C CNN
F 3 "" H 1900 2050 50  0000 C CNN
	1    1900 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 571B7740
P 2400 2200
F 0 "#PWR02" H 2400 1950 50  0001 C CNN
F 1 "GND" H 2400 2050 50  0000 C CNN
F 2 "" H 2400 2200 50  0000 C CNN
F 3 "" H 2400 2200 50  0000 C CNN
	1    2400 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 571B7A04
P 2400 1900
F 0 "C1" H 2250 1950 50  0000 L CNN
F 1 "100u" H 2150 1800 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 2400 1900 50  0001 C CNN
F 3 "" H 2400 1900 50  0000 C CNN
	1    2400 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 571B8758
P 4250 2400
F 0 "R1" V 4330 2400 50  0000 C CNN
F 1 "100" V 4250 2400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 4180 2400 50  0001 C CNN
F 3 "" H 4250 2400 50  0000 C CNN
	1    4250 2400
	1    0    0    -1  
$EndComp
$Comp
L UNKO_JAMMER_Mini-rescue:LED-RESCUE-カメラリモコン D1
U 1 1 571B87E3
P 4250 2750
F 0 "D1" H 4250 2850 50  0000 C CNN
F 1 "LED" H 4250 2650 50  0000 C CNN
F 2 "user:3mmLED" H 4250 2750 50  0001 C CNN
F 3 "" H 4250 2750 50  0000 C CNN
F 4 "I-04313" H 0   0   50  0001 C CNN "秋月通販コード"
	1    4250 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 571B881A
P 4250 2950
F 0 "#PWR03" H 4250 2700 50  0001 C CNN
F 1 "GND" H 4250 2800 50  0000 C CNN
F 2 "" H 4250 2950 50  0000 C CNN
F 3 "" H 4250 2950 50  0000 C CNN
	1    4250 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 571B8A63
P 4700 2950
F 0 "#PWR04" H 4700 2700 50  0001 C CNN
F 1 "GND" H 4700 2800 50  0000 C CNN
F 2 "" H 4700 2950 50  0000 C CNN
F 3 "" H 4700 2950 50  0000 C CNN
	1    4700 2950
	1    0    0    -1  
$EndComp
$Comp
L atmel:ATTINY10-P IC1
U 1 1 571C3989
P 3200 1900
F 0 "IC1" H 2700 2300 50  0000 C CNN
F 1 "ATTINY10-P" H 3600 1500 50  0001 C CNN
F 2 "user:DIP_SMD-8" H 3200 1900 50  0001 C CIN
F 3 "" H 3200 1900 50  0000 C CNN
F 4 "I-02911" H 3200 1900 50  0001 C CNN "秋月通販コード"
	1    3200 1900
	1    0    0    -1  
$EndComp
NoConn ~ 3900 1650
Wire Wire Line
	1900 1550 1900 1650
Wire Wire Line
	1900 1950 1900 2050
Wire Wire Line
	4250 2150 4250 2250
Wire Wire Line
	2300 1650 2400 1650
Wire Wire Line
	2400 1650 2400 1800
Connection ~ 2400 1650
Wire Wire Line
	2400 2000 2400 2150
Wire Wire Line
	2400 2150 2500 2150
Connection ~ 2400 2150
Text Label 4000 2150 0    60   ~ 0
LED
Text Label 4000 2050 0    60   ~ 0
Release
Text Label 4000 1850 0    60   ~ 0
ModeSelect1
Text Label 4000 1750 0    60   ~ 0
ModeSelect0
Wire Wire Line
	3900 2150 4250 2150
Wire Wire Line
	4700 2800 4700 2950
Wire Wire Line
	4700 2050 4700 2400
Wire Wire Line
	3900 2050 4700 2050
$Comp
L switches:SW_Push SW2
U 1 1 5A3F6FF9
P 4700 2600
F 0 "SW2" H 4750 2700 50  0000 L CNN
F 1 "RELEASE" H 4700 2540 50  0000 C CNN
F 2 "user:SKRPACE010_kai" H 4700 2800 50  0001 C CNN
F 3 "" H 4700 2800 50  0001 C CNN
F 4 "P-06185" H 0   0   50  0001 C CNN "秋月通販コード"
	1    4700 2600
	0    -1   -1   0   
$EndComp
$Comp
L switches:SW_DIP_x02 SW3
U 1 1 5A3F70D5
P 5250 2600
F 0 "SW3" H 5250 2850 50  0000 C CNN
F 1 "ModeSelector" H 5250 2450 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_DIP_x2_W5.08mm_Slide_Copal_CHS-A" H 5250 2600 50  0001 C CNN
F 3 "" H 5250 2600 50  0001 C CNN
F 4 "P-07141" H 0   0   50  0001 C CNN "秋月通販コード"
	1    5250 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5A3F715C
P 5200 2950
F 0 "#PWR05" H 5200 2700 50  0001 C CNN
F 1 "GND" H 5200 2800 50  0000 C CNN
F 2 "" H 5200 2950 50  0000 C CNN
F 3 "" H 5200 2950 50  0000 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2900 5200 2900
Wire Wire Line
	5200 2900 5200 2950
Connection ~ 5200 2900
Wire Wire Line
	3900 1850 5150 1850
Wire Wire Line
	5150 1850 5150 2300
Wire Wire Line
	3900 1750 5250 1750
Wire Wire Line
	5250 1750 5250 2300
$Comp
L Device:Battery_Cell BT1
U 1 1 5A3F7256
P 1900 1850
F 0 "BT1" H 2000 1950 50  0000 L CNN
F 1 "C2032" H 2000 1850 50  0000 L CNN
F 2 "user:BC-2001" V 1900 1910 50  0001 C CNN
F 3 "" V 1900 1910 50  0001 C CNN
F 4 "P-06925" H 0   0   50  0001 C CNN "秋月通販コード"
	1    1900 1850
	-1   0    0    -1  
$EndComp
$Comp
L conn:TEST_2P J1
U 1 1 5A3F7351
P 5650 2600
F 0 "J1" H 5650 2660 50  0000 C CNN
F 1 "Remote" H 5650 2530 50  0000 C CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 5650 2600 50  0001 C CNN
F 3 "" H 5650 2600 50  0001 C CNN
	1    5650 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5A3F73F6
P 5650 2950
F 0 "#PWR06" H 5650 2700 50  0001 C CNN
F 1 "GND" H 5650 2800 50  0000 C CNN
F 2 "" H 5650 2950 50  0001 C CNN
F 3 "" H 5650 2950 50  0001 C CNN
	1    5650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2950 5650 2800
Wire Wire Line
	5650 2050 5650 2400
Connection ~ 4700 2050
NoConn ~ 3900 1950
$Comp
L switches:SW_Push_SPDT SW1
U 1 1 5A3FABEC
P 2100 1550
F 0 "SW1" H 2100 1720 50  0000 C CNN
F 1 "POWER" H 2100 1350 50  0000 C CNN
F 2 "user:SSSS213202_parallel" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
F 4 "P-05043" H 0   0   50  0001 C CNN "秋月通販コード"
	1    2100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1650 2500 1650
Wire Wire Line
	2400 2150 2400 2200
Wire Wire Line
	5200 2900 5250 2900
Wire Wire Line
	4700 2050 5650 2050
$EndSCHEMATC
