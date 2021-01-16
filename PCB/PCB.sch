EESchema Schematic File Version 4
EELAYER 30 0
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
L Display_Character:HY1602E LCDdisplay1
U 1 1 5F5C1793
P 5050 5550
F 0 "LCDdisplay1" V 4750 6350 50  0000 L CNN
F 1 "HY1602E" V 4850 6400 50  0000 L CNN
F 2 "Display:WC1602A" H 5050 4650 50  0001 C CIN
F 3 "http://www.icbank.com/data/ICBShop/board/HY1602E.pdf" H 5250 5650 50  0001 C CNN
	1    5050 5550
	0    1    1    0   
$EndComp
$Comp
L Display_Character:CC56-12EWA 4digit7segment1
U 1 1 5F5C37EC
P 7800 4700
F 0 "4digit7segment1" H 7800 5367 50  0000 C CNN
F 1 "CC56-12EWA" H 7800 5276 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 7800 4100 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 7370 4730 50  0001 C CNN
	1    7800 4700
	1    0    0    -1  
$EndComp
$Comp
L Sensor:DHT11 Temp_Hum1
U 1 1 5F5C59F6
P 7550 3200
F 0 "Temp_Hum1" H 7307 3246 50  0000 R CNN
F 1 "DHT11" H 7307 3155 50  0000 R CNN
F 2 "Sensor:Aosong_DHT11_5.5x12.0_P2.54mm" H 7550 2800 50  0001 C CNN
F 3 "http://akizukidenshi.com/download/ds/aosong/DHT11.pdf" H 7700 3450 50  0001 C CNN
	1    7550 3200
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307+ Timer1
U 1 1 5F5C6E16
P 5950 2800
F 0 "Timer1" H 6494 2846 50  0000 L CNN
F 1 "DS1307+" H 6494 2755 50  0000 L CNN
F 2 "DS1307:DS1307-Module-V03" H 5950 2300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 5950 2600 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Proximity:TSSP58038 IRsensor1
U 1 1 5F5C7F83
P 5450 4000
F 0 "IRsensor1" H 5438 4425 50  0000 C CNN
F 1 "TSSP58038" H 5438 4334 50  0000 C CNN
F 2 "OptoDevice:Vishay_MINICAST-3Pin" H 5400 3625 50  0001 C CNN
F 3 "http://www.vishay.com/docs/82476/tssp58p38.pdf" H 6100 4300 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Red1
U 1 1 5F5CB49D
P 1800 2950
F 0 "Red1" H 1793 3166 50  0000 C CNN
F 1 "LED" H 1793 3075 50  0000 C CNN
F 2 "" H 1800 2950 50  0001 C CNN
F 3 "~" H 1800 2950 50  0001 C CNN
	1    1800 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Yellow1
U 1 1 5F5CC3D2
P 1800 5350
F 0 "Yellow1" H 1793 5566 50  0000 C CNN
F 1 "LED" H 1793 5475 50  0000 C CNN
F 2 "" H 1800 5350 50  0001 C CNN
F 3 "~" H 1800 5350 50  0001 C CNN
	1    1800 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F5CCC36
P 1800 4600
F 0 "D3" H 1793 4816 50  0000 C CNN
F 1 "Blue" H 1793 4725 50  0000 C CNN
F 2 "" H 1800 4600 50  0001 C CNN
F 3 "~" H 1800 4600 50  0001 C CNN
	1    1800 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED Green1
U 1 1 5F5CD1FE
P 1800 3800
F 0 "Green1" H 1793 4016 50  0000 C CNN
F 1 "LED" H 1793 3925 50  0000 C CNN
F 2 "" H 1800 3800 50  0001 C CNN
F 3 "~" H 1800 3800 50  0001 C CNN
	1    1800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F5CDAEF
P 2100 5350
F 0 "R4" V 1895 5350 50  0000 C CNN
F 1 "220 Ohm" V 1986 5350 50  0000 C CNN
F 2 "" V 2140 5340 50  0001 C CNN
F 3 "~" H 2100 5350 50  0001 C CNN
	1    2100 5350
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 5F5CF181
P 2100 4600
F 0 "R3" V 1895 4600 50  0000 C CNN
F 1 "100 Ohm" V 1986 4600 50  0000 C CNN
F 2 "" V 2140 4590 50  0001 C CNN
F 3 "~" H 2100 4600 50  0001 C CNN
	1    2100 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F5CF72D
P 2100 3800
F 0 "R2" V 1895 3800 50  0000 C CNN
F 1 "100 Ohm" V 1986 3800 50  0000 C CNN
F 2 "" V 2140 3790 50  0001 C CNN
F 3 "~" H 2100 3800 50  0001 C CNN
	1    2100 3800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F5CFC01
P 2100 2950
F 0 "R1" V 1895 2950 50  0000 C CNN
F 1 "220 Ohm" V 1986 2950 50  0000 C CNN
F 2 "" V 2140 2940 50  0001 C CNN
F 3 "~" H 2100 2950 50  0001 C CNN
	1    2100 2950
	0    1    1    0   
$EndComp
Text GLabel 4100 2400 1    50   Input ~ 0
5V
Text GLabel 3900 4500 3    50   Input ~ 0
GND
NoConn ~ 4000 4500
NoConn ~ 3800 4500
NoConn ~ 4000 2350
NoConn ~ 3800 2400
NoConn ~ 4400 2800
NoConn ~ 4400 3000
NoConn ~ 4400 3200
NoConn ~ 3400 2900
NoConn ~ 3400 2800
NoConn ~ 4400 4100
NoConn ~ 4400 4200
Text GLabel 4400 3500 2    50   Input ~ 0
A1
Text GLabel 4400 3600 2    50   Input ~ 0
A2
Text GLabel 4400 3700 2    50   Input ~ 0
A3
$Comp
L MCU_Module:Arduino_UNO_R3 Microcontroller1
U 1 1 5F5C02CA
P 3900 3400
F 0 "Microcontroller1" H 3600 4600 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3600 4500 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 3900 3400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 3900 3400 50  0001 C CNN
	1    3900 3400
	1    0    0    -1  
$EndComp
Text GLabel 4400 3800 2    50   Input ~ 0
A4
Text GLabel 4400 3900 2    50   Input ~ 0
A5
Text GLabel 3400 3000 0    50   Input ~ 0
D2
Text GLabel 3400 3100 0    50   Input ~ 0
D3
Text GLabel 3400 3200 0    50   Input ~ 0
D4
Text GLabel 3400 3300 0    50   Input ~ 0
D5
Text GLabel 3400 3400 0    50   Input ~ 0
D6
Text GLabel 3400 3500 0    50   Input ~ 0
D7
Text GLabel 3400 3600 0    50   Input ~ 0
D8
Text GLabel 3400 3700 0    50   Input ~ 0
D9
Text GLabel 3400 3800 0    50   Input ~ 0
D10
Text GLabel 3400 3900 0    50   Input ~ 0
D11
Text GLabel 3400 4000 0    50   Input ~ 0
D12
Text GLabel 3400 4100 0    50   Input ~ 0
D13
Text GLabel 7850 3200 2    50   Input ~ 0
A2
Text GLabel 7550 3500 3    50   Input ~ 0
GND
Text GLabel 7550 2900 1    50   Input ~ 0
5V
Text GLabel 5450 2700 0    50   Input ~ 0
A4
Text GLabel 5450 2600 0    50   Input ~ 0
A5
Text GLabel 5950 3200 3    50   Input ~ 0
GND
Text GLabel 5850 2400 1    50   Input ~ 0
5V
NoConn ~ 6450 2800
NoConn ~ 5450 2900
NoConn ~ 5450 3000
NoConn ~ 5950 2400
Text GLabel 2250 2950 2    50   Input ~ 0
5V
Text GLabel 2250 3800 2    50   Input ~ 0
5V
Text GLabel 2250 4600 2    50   Input ~ 0
5V
Text GLabel 2250 5350 2    50   Input ~ 0
5V
Text GLabel 1650 2950 0    50   Input ~ 0
GND
Text GLabel 1650 3800 0    50   Input ~ 0
GND
Text GLabel 1650 4600 0    50   Input ~ 0
GND
Text GLabel 1650 5350 0    50   Input ~ 0
GND
Text GLabel 6700 4500 0    50   Input ~ 0
D6
Text GLabel 6700 4400 0    50   Input ~ 0
D11
Text GLabel 6700 4900 0    50   Input ~ 0
D12
Text GLabel 6700 4800 0    50   Input ~ 0
D3
Text GLabel 6700 4700 0    50   Input ~ 0
D4
Text GLabel 6700 5100 0    50   Input ~ 0
D13
Text GLabel 6700 5000 0    50   Input ~ 0
D7
Text GLabel 6700 4600 0    50   Input ~ 0
D5
$Comp
L Device:R_US R5
U 1 1 5F5DF418
P 9050 5300
F 0 "R5" V 9250 5350 50  0000 C CNN
F 1 "1 kOhm" V 9150 5350 50  0000 C CNN
F 2 "" V 9090 5290 50  0001 C CNN
F 3 "~" H 9050 5300 50  0001 C CNN
	1    9050 5300
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 5100 8900 5300
Text GLabel 9200 5300 2    50   Input ~ 0
D10
$Comp
L Device:R_US R6
U 1 1 5F5E30BA
P 9050 5000
F 0 "R6" V 9250 5050 50  0000 C CNN
F 1 "1 kOhm" V 9150 5050 50  0000 C CNN
F 2 "" V 9090 4990 50  0001 C CNN
F 3 "~" H 9050 5000 50  0001 C CNN
	1    9050 5000
	0    1    1    0   
$EndComp
Text GLabel 9200 5000 2    50   Input ~ 0
D9
$Comp
L Device:R_US R7
U 1 1 5F5E39FD
P 9050 4900
F 0 "R7" V 8850 4900 50  0000 C CNN
F 1 "1 kOhm" V 8950 4950 50  0000 C CNN
F 2 "" V 9090 4890 50  0001 C CNN
F 3 "~" H 9050 4900 50  0001 C CNN
	1    9050 4900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5F5E5423
P 9050 4600
F 0 "R8" V 8850 4600 50  0000 C CNN
F 1 "1 kOhm" V 8950 4650 50  0000 C CNN
F 2 "" V 9090 4590 50  0001 C CNN
F 3 "~" H 9050 4600 50  0001 C CNN
	1    9050 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	8900 4800 8900 4600
Text GLabel 9200 4900 2    50   Input ~ 0
D8
Text GLabel 9200 4600 2    50   Input ~ 0
D2
$Comp
L Device:R_US R9
U 1 1 5F5E6862
P 5650 6100
F 0 "R9" H 5582 6054 50  0000 R CNN
F 1 "1 kOhm" H 5582 6145 50  0000 R CNN
F 2 "" V 5690 6090 50  0001 C CNN
F 3 "~" H 5650 6100 50  0001 C CNN
	1    5650 6100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5F5E7574
P 5650 6400
F 0 "R10" H 5582 6354 50  0000 R CNN
F 1 "2 kOhm" H 5582 6445 50  0000 R CNN
F 2 "" V 5690 6390 50  0001 C CNN
F 3 "~" H 5650 6400 50  0001 C CNN
	1    5650 6400
	-1   0    0    1   
$EndComp
Text GLabel 5650 6550 3    50   Input ~ 0
GND
$Comp
L Device:R_US R11
U 1 1 5F5E8489
P 5050 6100
F 0 "R11" H 4982 6054 50  0000 R CNN
F 1 "220 Ohm" H 4982 6145 50  0000 R CNN
F 2 "" V 5090 6090 50  0001 C CNN
F 3 "~" H 5050 6100 50  0001 C CNN
	1    5050 6100
	-1   0    0    1   
$EndComp
Text GLabel 5050 6250 3    50   Input ~ 0
A3
Text GLabel 5350 5150 1    50   Input ~ 0
D12
Text GLabel 5850 4000 2    50   Input ~ 0
A1
Text GLabel 5850 4200 2    50   Input ~ 0
GND
Text GLabel 5850 3800 2    50   Input ~ 0
5V
Text GLabel 4950 5950 3    50   Input ~ 0
GND
Text GLabel 5850 5550 2    50   Input ~ 0
5V
Text GLabel 4250 5550 0    50   Input ~ 0
GND
Text GLabel 5450 5150 1    50   Input ~ 0
GND
Text GLabel 5650 5150 1    50   Input ~ 0
D11
Text GLabel 4450 5150 1    50   Input ~ 0
D3
Text GLabel 4550 5150 1    50   Input ~ 0
D4
Text GLabel 4650 5150 1    50   Input ~ 0
D5
Text GLabel 4750 5150 1    50   Input ~ 0
D6
Text Notes 7400 7500 0    50   ~ 10
Smart-clock-thermometer-hygrometer
NoConn ~ 3550 5950
Text GLabel 4400 3400 2    50   Input ~ 0
A0
Wire Wire Line
	3550 6350 3800 6350
Wire Wire Line
	3550 6400 3550 6350
Wire Wire Line
	3550 6200 3800 6200
Wire Wire Line
	3550 6250 3550 6200
Wire Wire Line
	3550 6050 3800 6050
Wire Wire Line
	3550 6100 3550 6050
Text GLabel 3800 6350 2    50   Input ~ 0
A0
Text GLabel 3800 6200 2    50   Input ~ 0
GND
Text GLabel 3800 6050 2    50   Input ~ 0
5V
$Comp
L KY-037:KY-037 U?
U 1 1 600128CD
P 2950 6150
F 0 "U?" H 3000 6600 50  0000 L CNN
F 1 "KY-037" H 2900 6500 50  0000 L CNN
F 2 "" H 2950 6150 50  0001 C CNN
F 3 "" H 2950 6150 50  0001 C CNN
	1    2950 6150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
