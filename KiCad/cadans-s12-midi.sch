EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Synthead Cadans S12 MIDI Interface"
Date "2020-08-23"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GNDREF #PWR010
U 1 1 5F40BE5C
P 9450 4600
F 0 "#PWR010" H 9450 4350 50  0001 C CNN
F 1 "GNDREF" H 9455 4427 50  0000 C CNN
F 2 "" H 9450 4600 50  0001 C CNN
F 3 "" H 9450 4600 50  0001 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4550 9250 4600
Wire Wire Line
	9250 4600 9350 4600
Wire Wire Line
	9350 4550 9350 4600
Connection ~ 9350 4600
Wire Wire Line
	9350 4600 9450 4600
Wire Wire Line
	9450 4550 9450 4600
Connection ~ 9450 4600
$Comp
L power:+5V #PWR09
U 1 1 5F4E3E35
P 9350 2450
F 0 "#PWR09" H 9350 2300 50  0001 C CNN
F 1 "+5V" H 9365 2623 50  0000 C CNN
F 2 "" H 9350 2450 50  0001 C CNN
F 3 "" H 9350 2450 50  0001 C CNN
	1    9350 2450
	1    0    0    -1  
$EndComp
$Comp
L cadans-s12-midi:ProMicro U2
U 1 1 5F3F2E04
P 9200 3100
F 0 "U2" H 9794 2753 60  0000 L CNN
F 1 "ProMicro" H 9794 2647 60  0000 L CNN
F 2 "cadans-s12-midi:ProMicro" H 9200 3800 60  0001 C CNN
F 3 "" H 9200 3800 60  0001 C CNN
	1    9200 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2400 9250 2450
Wire Wire Line
	8900 3550 8500 3550
Wire Wire Line
	8600 3250 8900 3250
Wire Wire Line
	8700 3450 8900 3450
Wire Wire Line
	8900 3350 8800 3350
Wire Wire Line
	8000 2100 8000 2650
Wire Wire Line
	8000 2650 8900 2650
Wire Notes Line
	7700 2350 8650 2350
Wire Notes Line
	8650 2350 8650 1150
Wire Notes Line
	8650 1150 7700 1150
Wire Notes Line
	7700 1150 7700 2350
Text Notes 7700 1150 0    50   ~ 0
MIDI out
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 5F47BC4D
P 7800 1700
F 0 "J12" H 7950 2000 50  0000 C CNN
F 1 "MIDI out" H 8050 1900 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B3B-XH-A_1x03_P2.50mm_Vertical" H 7800 1700 50  0001 C CNN
F 3 "~" H 7800 1700 50  0001 C CNN
	1    7800 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F47CED8
P 8000 1950
F 0 "R13" H 8070 1996 50  0000 L CNN
F 1 "220" H 8070 1905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 7930 1950 50  0001 C CNN
F 3 "~" H 8000 1950 50  0001 C CNN
	1    8000 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F47F065
P 8400 1550
F 0 "R14" H 8470 1596 50  0000 L CNN
F 1 "220" H 8470 1505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8330 1550 50  0001 C CNN
F 3 "~" H 8400 1550 50  0001 C CNN
	1    8400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5F483556
P 8400 1400
F 0 "#PWR018" H 8400 1250 50  0001 C CNN
F 1 "+5V" H 8415 1573 50  0000 C CNN
F 2 "" H 8400 1400 50  0001 C CNN
F 3 "" H 8400 1400 50  0001 C CNN
	1    8400 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR017
U 1 1 5F483B49
P 8300 2000
F 0 "#PWR017" H 8300 1750 50  0001 C CNN
F 1 "GNDREF" H 8305 1827 50  0000 C CNN
F 2 "" H 8300 2000 50  0001 C CNN
F 3 "" H 8300 2000 50  0001 C CNN
	1    8300 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1600 8300 1600
Wire Wire Line
	8300 1600 8300 2000
Wire Wire Line
	8400 1700 8000 1700
$Comp
L Connector:Conn_01x02_Male J14
U 1 1 5F4E6F17
P 7800 5400
F 0 "J14" H 7850 5650 50  0000 C CNN
F 1 "Sustain" H 7950 5550 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 7800 5400 50  0001 C CNN
F 3 "~" H 7800 5400 50  0001 C CNN
	1    7800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5F4F87A1
P 8350 5350
F 0 "R15" H 8280 5304 50  0000 R CNN
F 1 "10K" H 8280 5395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8280 5350 50  0001 C CNN
F 3 "~" H 8350 5350 50  0001 C CNN
	1    8350 5350
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR019
U 1 1 5F4F87AB
P 8350 5200
F 0 "#PWR019" H 8350 5050 50  0001 C CNN
F 1 "+5V" H 8365 5373 50  0000 C CNN
F 2 "" H 8350 5200 50  0001 C CNN
F 3 "" H 8350 5200 50  0001 C CNN
	1    8350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5500 8350 5500
$Comp
L Device:R R16
U 1 1 5F4F87B6
P 8350 5650
F 0 "R16" H 8280 5604 50  0000 R CNN
F 1 "220" H 8280 5695 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8280 5650 50  0001 C CNN
F 3 "~" H 8350 5650 50  0001 C CNN
	1    8350 5650
	-1   0    0    1   
$EndComp
Connection ~ 8350 5500
$Comp
L power:GNDREF #PWR016
U 1 1 5F4FDA62
P 8100 5600
F 0 "#PWR016" H 8100 5350 50  0001 C CNN
F 1 "GNDREF" H 8105 5427 50  0000 C CNN
F 2 "" H 8100 5600 50  0001 C CNN
F 3 "" H 8100 5600 50  0001 C CNN
	1    8100 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5400 8100 5400
Wire Wire Line
	8100 5400 8100 5600
Wire Notes Line
	7700 4950 7700 5850
Text Notes 7700 4950 0    50   ~ 0
Sustain pedal input
Wire Wire Line
	8800 3350 8800 6050
Wire Wire Line
	8350 5800 8350 6050
Wire Wire Line
	8350 6050 8800 6050
$Comp
L Connector:Conn_01x04_Male J10
U 1 1 5F5A7DEA
P 7350 3850
F 0 "J10" H 7400 4200 50  0000 C CNN
F 1 "LEDs" H 7450 4100 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B4B-XH-A_1x04_P2.50mm_Vertical" H 7350 3850 50  0001 C CNN
F 3 "~" H 7350 3850 50  0001 C CNN
	1    7350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3950 7950 3950
Wire Wire Line
	7550 4050 7850 4050
Wire Wire Line
	7850 4050 7850 4450
Wire Wire Line
	7550 3750 7650 3750
Wire Wire Line
	7650 3750 7650 4150
$Comp
L power:GNDREF #PWR015
U 1 1 5F609F3D
P 7650 4150
F 0 "#PWR015" H 7650 3900 50  0001 C CNN
F 1 "GNDREF" H 7655 3977 50  0000 C CNN
F 2 "" H 7650 4150 50  0001 C CNN
F 3 "" H 7650 4150 50  0001 C CNN
	1    7650 4150
	1    0    0    -1  
$EndComp
Wire Notes Line
	7250 3400 7250 4700
Wire Notes Line
	7250 4700 8300 4700
Wire Notes Line
	8300 4700 8300 3400
Wire Notes Line
	7250 3400 8300 3400
Text Notes 7250 3400 0    50   ~ 0
Indicator LEDs
Wire Wire Line
	8500 3550 8500 3850
Wire Wire Line
	8600 3250 8600 4150
Wire Wire Line
	8700 3450 8700 4450
Wire Wire Line
	9250 2400 8850 2400
Wire Wire Line
	8850 2400 8850 2550
Wire Wire Line
	7850 4450 7950 4450
Wire Wire Line
	8700 4450 8250 4450
$Comp
L Device:R R19
U 1 1 5F54DC3F
P 8100 4450
F 0 "R19" V 7893 4450 50  0000 C CNN
F 1 "10K" V 7984 4450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8030 4450 50  0001 C CNN
F 3 "~" H 8100 4450 50  0001 C CNN
	1    8100 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3950 7950 4150
Wire Wire Line
	8600 4150 8250 4150
$Comp
L Device:R R18
U 1 1 5F54DC2B
P 8100 4150
F 0 "R18" V 7893 4150 50  0000 C CNN
F 1 "10K" V 7984 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8030 4150 50  0001 C CNN
F 3 "~" H 8100 4150 50  0001 C CNN
	1    8100 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	7550 3850 7950 3850
Wire Wire Line
	8500 3850 8250 3850
$Comp
L Device:R R17
U 1 1 5F54DC17
P 8100 3850
F 0 "R17" V 7893 3850 50  0000 C CNN
F 1 "2.2K" V 7984 3850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 8030 3850 50  0001 C CNN
F 3 "~" H 8100 3850 50  0001 C CNN
	1    8100 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	4200 6350 4200 7100
Wire Wire Line
	4100 6350 4200 6350
Wire Wire Line
	4100 6250 4350 6250
Wire Wire Line
	7050 2550 7050 5000
Wire Wire Line
	8850 2550 7050 2550
Wire Notes Line
	3850 5200 5550 5200
Wire Notes Line
	5550 6900 5550 5200
Wire Notes Line
	3850 6900 5550 6900
Wire Notes Line
	3850 5200 3850 6900
$Comp
L power:GNDREF #PWR014
U 1 1 5FA6EF8E
P 5100 6500
F 0 "#PWR014" H 5100 6250 50  0001 C CNN
F 1 "GNDREF" H 5105 6327 50  0000 C CNN
F 2 "" H 5100 6500 50  0001 C CNN
F 3 "" H 5100 6500 50  0001 C CNN
	1    5100 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5F7379FA
P 4350 5600
F 0 "R9" H 4450 5650 50  0000 L CNN
F 1 "10K" H 4450 5550 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4280 5600 50  0001 C CNN
F 3 "~" H 4350 5600 50  0001 C CNN
	1    4350 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6250 4350 5850
$Comp
L power:+5V #PWR08
U 1 1 5F74CD59
P 4350 5450
F 0 "#PWR08" H 4350 5300 50  0001 C CNN
F 1 "+5V" H 4365 5623 50  0000 C CNN
F 2 "" H 4350 5450 50  0001 C CNN
F 3 "" H 4350 5450 50  0001 C CNN
	1    4350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5850 4700 5850
Connection ~ 4350 5850
Wire Wire Line
	4350 5850 4350 5750
Wire Wire Line
	4100 5950 4750 5950
Wire Wire Line
	4100 6150 4500 6150
$Comp
L Connector:Conn_01x05_Male J4
U 1 1 5F72CDB0
P 3900 6150
F 0 "J4" H 4000 6600 50  0000 C CNN
F 1 "KEY" H 4000 6500 50  0000 C CNN
F 2 "Connector_JST:JST_XH_B5B-XH-A_1x05_P2.50mm_Vertical" H 3900 6150 50  0001 C CNN
F 3 "~" H 3900 6150 50  0001 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5F74D897
P 4900 5950
F 0 "R11" V 4693 5950 50  0000 C CNN
F 1 "22" V 4784 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4830 5950 50  0001 C CNN
F 3 "~" H 4900 5950 50  0001 C CNN
	1    4900 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 6150 4500 6200
Wire Wire Line
	4100 6050 4200 6050
Wire Wire Line
	5050 5950 5100 5950
Wire Wire Line
	4700 4900 4700 5850
Connection ~ 4700 4900
Wire Wire Line
	4200 4900 3400 4900
Wire Wire Line
	4200 4900 4200 6050
Wire Wire Line
	2100 4650 2100 7100
Wire Wire Line
	2100 7100 4200 7100
Wire Wire Line
	3400 4650 3400 4900
Wire Wire Line
	5100 5000 7050 5000
Wire Wire Line
	5100 5950 5100 6200
Connection ~ 5100 5950
Wire Wire Line
	5100 5950 5100 5000
$Comp
L power:GNDREF #PWR011
U 1 1 5F76B7CB
P 4500 6500
F 0 "#PWR011" H 4500 6250 50  0001 C CNN
F 1 "GNDREF" H 4505 6327 50  0000 C CNN
F 2 "" H 4500 6500 50  0001 C CNN
F 3 "" H 4500 6500 50  0001 C CNN
	1    4500 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5F75C193
P 4500 6350
F 0 "D2" V 4450 6450 50  0000 L CNN
F 1 "1N4001" V 4550 6450 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4500 6350 50  0001 C CNN
F 3 "~" H 4500 6350 50  0001 C CNN
	1    4500 6350
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5F7A2EE3
P 5100 6350
F 0 "D3" V 5054 6430 50  0000 L CNN
F 1 "1N4733" V 5145 6430 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5100 6350 50  0001 C CNN
F 3 "~" H 5100 6350 50  0001 C CNN
	1    5100 6350
	0    1    1    0   
$EndComp
Connection ~ 5200 2100
Wire Wire Line
	5600 2100 5600 2000
Wire Wire Line
	5200 2100 5600 2100
Wire Wire Line
	4900 2000 4900 1800
Wire Wire Line
	4700 2000 4900 2000
Wire Wire Line
	4700 2100 5200 2100
Wire Notes Line
	4400 1350 4400 2650
Wire Notes Line
	4400 2650 6650 2650
Text Notes 4400 1350 0    50   ~ 0
MIDI in
Wire Notes Line
	4400 1350 6650 1350
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5F4120D4
P 4500 2000
F 0 "J5" H 4700 2250 50  0000 R CNN
F 1 "MIDI in" H 4850 2150 50  0000 R CNN
F 2 "Connector_JST:JST_XH_B2B-XH-A_1x02_P2.50mm_Vertical" H 4500 2000 50  0001 C CNN
F 3 "~" H 4500 2000 50  0001 C CNN
	1    4500 2000
	1    0    0    -1  
$EndComp
Text Notes 5550 7000 2    50   ~ 0
Cadans S12 KEY
Wire Wire Line
	5700 3150 8900 3150
Wire Wire Line
	5700 4000 5700 3150
Wire Wire Line
	4700 4650 4700 4900
Wire Wire Line
	4700 4250 4800 4250
Wire Wire Line
	4700 4350 4700 4250
Wire Wire Line
	5100 4000 5100 4050
Connection ~ 5100 4000
Wire Wire Line
	5700 4000 5100 4000
Wire Wire Line
	5100 3950 5100 4000
Text Notes 4600 3400 0    50   ~ 0
Key data input
Wire Notes Line
	4600 3400 4600 4700
Wire Notes Line
	5500 4700 4600 4700
Wire Notes Line
	5500 3400 5500 4700
Wire Notes Line
	4600 3400 5500 3400
$Comp
L Device:R R10
U 1 1 5F4474D1
P 4700 4500
F 0 "R10" H 4770 4546 50  0000 L CNN
F 1 "1K" H 4770 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4630 4500 50  0001 C CNN
F 3 "~" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR013
U 1 1 5F4474C7
P 5100 4450
F 0 "#PWR013" H 5100 4200 50  0001 C CNN
F 1 "GNDREF" H 5105 4277 50  0000 C CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	1    5100 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 5F4474BD
P 5100 3650
F 0 "#PWR012" H 5100 3500 50  0001 C CNN
F 1 "+5V" H 5115 3823 50  0000 C CNN
F 2 "" H 5100 3650 50  0001 C CNN
F 3 "" H 5100 3650 50  0001 C CNN
	1    5100 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F4474B3
P 5100 3800
F 0 "R12" H 5170 3846 50  0000 L CNN
F 1 "1K" H 5170 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5030 3800 50  0001 C CNN
F 3 "~" H 5100 3800 50  0001 C CNN
	1    5100 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q4
U 1 1 5F4474A9
P 5000 4250
F 0 "Q4" H 5191 4296 50  0000 L CNN
F 1 "BC547" H 5191 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 5200 4350 50  0001 C CNN
F 3 "~" H 5000 4250 50  0001 C CNN
	1    5000 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4000 2500 4050
Connection ~ 2500 4000
Wire Wire Line
	3100 2850 8900 2850
Wire Wire Line
	3100 4000 3100 2850
Wire Wire Line
	2500 4000 3100 4000
Wire Wire Line
	2500 3950 2500 4000
Wire Wire Line
	2100 4250 2100 4350
Wire Wire Line
	2200 4250 2100 4250
Wire Wire Line
	3400 4250 3500 4250
Wire Wire Line
	3400 4350 3400 4250
Wire Wire Line
	3800 4000 3800 4050
Connection ~ 3800 4000
Wire Wire Line
	4400 4000 3800 4000
Wire Wire Line
	4400 2950 4400 4000
Wire Wire Line
	3800 3950 3800 4000
Wire Wire Line
	6950 4900 4700 4900
Wire Wire Line
	6950 3650 6950 4900
Wire Wire Line
	6300 3650 6950 3650
Text Notes 6750 3400 2    50   ~ 0
Key data output
Text Notes 3300 3400 0    50   ~ 0
Reset input
Text Notes 2000 3400 0    50   ~ 0
Clock input
Wire Notes Line
	5900 3400 5900 4300
Wire Notes Line
	6750 3400 5900 3400
Wire Notes Line
	6750 4300 6750 3400
Wire Notes Line
	5900 4300 6750 4300
Wire Notes Line
	3300 3400 3300 4700
Wire Notes Line
	4200 4700 3300 4700
Wire Notes Line
	4200 3400 4200 4700
Wire Notes Line
	3300 3400 4200 3400
Wire Notes Line
	2900 3400 2900 4700
Wire Notes Line
	2000 4700 2900 4700
Wire Notes Line
	2000 3400 2000 4700
Wire Notes Line
	2900 3400 2000 3400
Wire Wire Line
	6000 3050 6000 3450
Wire Wire Line
	8900 3050 6000 3050
Wire Wire Line
	8900 2950 4400 2950
$Comp
L Device:Q_NPN_CBE Q1
U 1 1 5F41A427
P 2400 4250
F 0 "Q1" H 2591 4296 50  0000 L CNN
F 1 "BC547" H 2591 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 2600 4350 50  0001 C CNN
F 3 "~" H 2400 4250 50  0001 C CNN
	1    2400 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F41AA9A
P 2500 3800
F 0 "R2" H 2570 3846 50  0000 L CNN
F 1 "1K" H 2570 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2430 3800 50  0001 C CNN
F 3 "~" H 2500 3800 50  0001 C CNN
	1    2500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5F420085
P 2500 3650
F 0 "#PWR01" H 2500 3500 50  0001 C CNN
F 1 "+5V" H 2515 3823 50  0000 C CNN
F 2 "" H 2500 3650 50  0001 C CNN
F 3 "" H 2500 3650 50  0001 C CNN
	1    2500 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR02
U 1 1 5F420F51
P 2500 4450
F 0 "#PWR02" H 2500 4200 50  0001 C CNN
F 1 "GNDREF" H 2505 4277 50  0000 C CNN
F 2 "" H 2500 4450 50  0001 C CNN
F 3 "" H 2500 4450 50  0001 C CNN
	1    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F4218EE
P 2100 4500
F 0 "R1" H 2170 4546 50  0000 L CNN
F 1 "10K" H 2170 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 2030 4500 50  0001 C CNN
F 3 "~" H 2100 4500 50  0001 C CNN
	1    2100 4500
	1    0    0    -1  
$EndComp
Connection ~ 6400 2000
Wire Wire Line
	6850 2000 6400 2000
Wire Wire Line
	6850 2750 6850 2000
Wire Wire Line
	8900 2750 6850 2750
Wire Notes Line
	6650 2650 6650 1350
Wire Wire Line
	6000 3750 6000 3850
$Comp
L Device:R R6
U 1 1 5F42E466
P 6000 3600
F 0 "R6" H 6070 3646 50  0000 L CNN
F 1 "10K" H 6070 3555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5930 3600 50  0001 C CNN
F 3 "~" H 6000 3600 50  0001 C CNN
	1    6000 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR05
U 1 1 5F42E45C
P 6300 4050
F 0 "#PWR05" H 6300 3800 50  0001 C CNN
F 1 "GNDREF" H 6305 3877 50  0000 C CNN
F 2 "" H 6300 4050 50  0001 C CNN
F 3 "" H 6300 4050 50  0001 C CNN
	1    6300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q3
U 1 1 5F42E43E
P 6200 3850
F 0 "Q3" H 6391 3896 50  0000 L CNN
F 1 "BC547" H 6391 3805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 6400 3950 50  0001 C CNN
F 3 "~" H 6200 3850 50  0001 C CNN
	1    6200 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F425780
P 3400 4500
F 0 "R3" H 3470 4546 50  0000 L CNN
F 1 "10K" H 3470 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3330 4500 50  0001 C CNN
F 3 "~" H 3400 4500 50  0001 C CNN
	1    3400 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR04
U 1 1 5F425776
P 3800 4450
F 0 "#PWR04" H 3800 4200 50  0001 C CNN
F 1 "GNDREF" H 3805 4277 50  0000 C CNN
F 2 "" H 3800 4450 50  0001 C CNN
F 3 "" H 3800 4450 50  0001 C CNN
	1    3800 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5F42576C
P 3800 3650
F 0 "#PWR03" H 3800 3500 50  0001 C CNN
F 1 "+5V" H 3815 3823 50  0000 C CNN
F 2 "" H 3800 3650 50  0001 C CNN
F 3 "" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F425762
P 3800 3800
F 0 "R4" H 3870 3846 50  0000 L CNN
F 1 "1K" H 3870 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3730 3800 50  0001 C CNN
F 3 "~" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q2
U 1 1 5F425758
P 3700 4250
F 0 "Q2" H 3891 4296 50  0000 L CNN
F 1 "BC547" H 3891 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92L_HandSolder" H 3900 4350 50  0001 C CNN
F 3 "~" H 3700 4250 50  0001 C CNN
	1    3700 4250
	1    0    0    -1  
$EndComp
Connection ~ 5200 1800
Wire Wire Line
	5600 1800 5200 1800
Connection ~ 6400 1700
$Comp
L power:+5V #PWR07
U 1 1 5F4056E7
P 6400 1700
F 0 "#PWR07" H 6400 1550 50  0001 C CNN
F 1 "+5V" H 6415 1873 50  0000 C CNN
F 2 "" H 6400 1700 50  0001 C CNN
F 3 "" H 6400 1700 50  0001 C CNN
	1    6400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1700 6400 1700
Wire Wire Line
	6200 2000 6400 2000
$Comp
L Device:R R8
U 1 1 5F403B84
P 6400 1850
F 0 "R8" H 6470 1896 50  0000 L CNN
F 1 "220" H 6470 1805 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6330 1850 50  0001 C CNN
F 3 "~" H 6400 1850 50  0001 C CNN
	1    6400 1850
	1    0    0    -1  
$EndComp
Connection ~ 6300 2350
Wire Wire Line
	6200 2100 6200 2350
Wire Wire Line
	6300 2350 6200 2350
$Comp
L power:GNDREF #PWR06
U 1 1 5F3FDD38
P 6300 2350
F 0 "#PWR06" H 6300 2100 50  0001 C CNN
F 1 "GNDREF" H 6305 2177 50  0000 C CNN
F 2 "" H 6300 2350 50  0001 C CNN
F 3 "" H 6300 2350 50  0001 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1800 6300 2050
Wire Wire Line
	6200 1800 6300 1800
$Comp
L Device:R R7
U 1 1 5F3FBE32
P 6300 2200
F 0 "R7" H 6370 2246 50  0000 L CNN
F 1 "4.7K" H 6370 2155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 6230 2200 50  0001 C CNN
F 3 "~" H 6300 2200 50  0001 C CNN
	1    6300 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F3EBD8F
P 5200 1950
F 0 "D1" V 5154 2030 50  0000 L CNN
F 1 "1N4148" V 5245 2030 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5200 1950 50  0001 C CNN
F 3 "~" H 5200 1950 50  0001 C CNN
	1    5200 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5F3E936F
P 5050 1800
F 0 "R5" V 4843 1800 50  0000 C CNN
F 1 "220" V 4934 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4980 1800 50  0001 C CNN
F 3 "~" H 5050 1800 50  0001 C CNN
	1    5050 1800
	0    1    1    0   
$EndComp
$Comp
L Isolator:6N138 U1
U 1 1 5F3E852A
P 5900 1900
F 0 "U1" H 5900 2367 50  0000 C CNN
F 1 "6N138" H 5900 2276 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6190 1600 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 6190 1600 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
Wire Notes Line
	7700 5850 8600 5850
Wire Notes Line
	8600 5850 8600 4950
Wire Notes Line
	7700 4950 8600 4950
$EndSCHEMATC
