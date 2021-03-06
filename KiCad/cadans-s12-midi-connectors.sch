EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Synthead Cadans S12 MIDI Interface (connectors)"
Date "2020-08-23"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Notes Line
	3450 4000 3450 3000
Wire Notes Line
	3650 4050 4900 4050
Wire Notes Line
	4900 4050 4900 3000
Wire Notes Line
	4900 3000 3650 3000
Wire Notes Line
	3650 3000 3650 4050
Text Notes 3650 3000 0    50   ~ 0
MIDI out
Text Notes 5100 3000 0    50   ~ 0
Cadans S12 KEY
Wire Notes Line
	2250 3000 3450 3000
Text Notes 2250 3000 0    50   ~ 0
MIDI in
Wire Notes Line
	2250 4000 3450 4000
Wire Notes Line
	2250 3000 2250 4000
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5F43AA55
P 4800 3400
F 0 "J4" H 4500 3700 50  0000 L CNN
F 1 "MIDI out" H 4500 3600 50  0000 L CNN
F 2 "" H 4800 3400 50  0001 C CNN
F 3 "~" H 4800 3400 50  0001 C CNN
	1    4800 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J3
U 1 1 5F43B66D
P 4100 3600
F 0 "J3" H 4100 3325 50  0000 C CNN
F 1 "MIDI out" H 4100 3234 50  0000 C CNN
F 2 "cadans-s12-midi:SDS-50J" H 4100 3600 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 4100 3600 50  0001 C CNN
	1    4100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3200 4450 3200
Wire Wire Line
	4450 3200 4450 3400
Wire Wire Line
	4450 3400 4600 3400
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5F4BE8EC
P 7750 3450
F 0 "J8" H 7400 3700 50  0000 L CNN
F 1 "Sustain" H 7400 3600 50  0000 L CNN
F 2 "" H 7750 3450 50  0001 C CNN
F 3 "~" H 7750 3450 50  0001 C CNN
	1    7750 3450
	1    0    0    -1  
$EndComp
$Comp
L Connector:AudioJack2_Ground J7
U 1 1 5F4CF76D
P 7050 3550
F 0 "J7" H 7082 3875 50  0000 C CNN
F 1 "Sustain" H 7082 3784 50  0000 C CNN
F 2 "" H 7050 3550 50  0001 C CNN
F 3 "~" H 7050 3550 50  0001 C CNN
	1    7050 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3450 7300 3450
Wire Wire Line
	7250 3550 7550 3550
Wire Wire Line
	7300 3450 7300 3750
Wire Wire Line
	7300 3750 7050 3750
Connection ~ 7300 3450
Wire Wire Line
	7300 3450 7550 3450
Wire Notes Line
	6800 3000 6800 3900
Wire Notes Line
	6800 3900 7850 3900
Wire Notes Line
	7850 3900 7850 3000
Wire Notes Line
	6800 3000 7850 3000
Text Notes 6800 3000 0    50   ~ 0
Sustain pedal input
$Comp
L Device:LED D1
U 1 1 5F54DC0D
P 8400 3450
F 0 "D1" H 8393 3667 50  0000 C CNN
F 1 "Status" H 8393 3576 50  0000 C CNN
F 2 "" H 8400 3450 50  0001 C CNN
F 3 "~" H 8400 3450 50  0001 C CNN
	1    8400 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5F54DC21
P 8400 3800
F 0 "D2" H 8393 4017 50  0000 C CNN
F 1 "MIDI in" H 8393 3926 50  0000 C CNN
F 2 "" H 8400 3800 50  0001 C CNN
F 3 "~" H 8400 3800 50  0001 C CNN
	1    8400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5F54DC35
P 8400 4150
F 0 "D3" H 8393 4367 50  0000 C CNN
F 1 "MIDI out" H 8393 4276 50  0000 C CNN
F 2 "" H 8400 4150 50  0001 C CNN
F 3 "~" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3450 8150 3450
Wire Wire Line
	8150 3450 8150 3800
Wire Wire Line
	8150 3800 8250 3800
Wire Wire Line
	8150 3800 8150 4150
Wire Wire Line
	8150 4150 8250 4150
Connection ~ 8150 3800
Wire Wire Line
	8550 3800 8600 3800
Wire Wire Line
	8550 4150 8700 4150
Wire Wire Line
	8150 3450 8150 3150
Wire Wire Line
	8150 3150 8600 3150
Wire Wire Line
	8600 3150 8600 3350
Wire Wire Line
	8600 3350 8700 3350
Connection ~ 8150 3450
Wire Wire Line
	8550 3450 8700 3450
Wire Wire Line
	8600 3800 8600 3550
Wire Wire Line
	8600 3550 8700 3550
Wire Wire Line
	8700 4150 8700 3650
$Comp
L Connector:Conn_01x04_Female J9
U 1 1 5F54D4E3
P 8900 3450
F 0 "J9" H 8700 3800 50  0000 L CNN
F 1 "LEDs" H 8700 3700 50  0000 L CNN
F 2 "" H 8900 3450 50  0001 C CNN
F 3 "~" H 8900 3450 50  0001 C CNN
	1    8900 3450
	1    0    0    -1  
$EndComp
Wire Notes Line
	8050 3000 8050 4300
Wire Notes Line
	8050 4300 9000 4300
Wire Notes Line
	9000 4300 9000 3000
Wire Notes Line
	8050 3000 9000 3000
Text Notes 8050 3000 0    50   ~ 0
Indicator LEDs
$Comp
L Connector:DIN-5_180degree J5
U 1 1 5F6A1E21
P 5650 3850
F 0 "J5" H 5650 3575 50  0000 C CNN
F 1 "Cadans S12 KEY" H 5650 3484 50  0000 C CNN
F 2 "cadans-s12-midi:SDS-50J" H 5650 3850 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 5650 3850 50  0001 C CNN
	1    5650 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Female J6
U 1 1 5F6A3204
P 6500 3550
F 0 "J6" H 6350 4000 50  0000 L CNN
F 1 "KEY" H 6300 3900 50  0000 L CNN
F 2 "" H 6500 3550 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3850 5200 3850
Wire Wire Line
	5200 3850 5200 3250
Wire Wire Line
	5200 3250 6200 3250
Wire Wire Line
	6200 3250 6200 3350
Wire Wire Line
	6200 3350 6300 3350
Wire Wire Line
	6100 3350 6100 3650
Wire Wire Line
	6100 3650 6300 3650
Wire Notes Line
	5100 3000 5100 4300
Wire Notes Line
	5100 4300 6600 4300
Wire Notes Line
	6600 4300 6600 3000
Wire Notes Line
	5100 3000 6600 3000
Wire Wire Line
	4400 3500 4600 3500
Wire Wire Line
	4100 3300 4600 3300
Wire Wire Line
	3750 3200 3750 3500
Wire Wire Line
	3750 3500 3800 3500
Wire Wire Line
	5300 3350 5300 3750
Wire Wire Line
	5300 3750 5350 3750
Wire Wire Line
	5300 3350 6100 3350
Wire Wire Line
	6000 3550 6300 3550
Wire Wire Line
	5950 3850 6000 3850
Wire Wire Line
	6000 3850 6000 3550
Wire Wire Line
	5950 3750 6300 3750
Wire Wire Line
	6300 3450 5650 3450
Wire Wire Line
	5650 3450 5650 3550
Wire Wire Line
	2350 3150 3050 3150
Wire Wire Line
	2350 3450 2400 3450
Wire Wire Line
	2350 3150 2350 3450
Wire Wire Line
	3000 3450 3150 3450
Wire Wire Line
	3050 3350 3150 3350
Wire Wire Line
	3050 3150 3050 3350
$Comp
L Connector:Conn_01x02_Female J2
U 1 1 5F41F4E5
P 3350 3350
F 0 "J2" H 3100 3600 50  0000 L CNN
F 1 "MIDI in" H 3100 3500 50  0000 L CNN
F 2 "" H 3350 3350 50  0001 C CNN
F 3 "~" H 3350 3350 50  0001 C CNN
	1    3350 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J1
U 1 1 5F412B73
P 2700 3550
F 0 "J1" H 2700 3275 50  0000 C CNN
F 1 "MIDI in" H 2700 3184 50  0000 C CNN
F 2 "cadans-s12-midi:SDS-50J" H 2700 3550 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 2700 3550 50  0001 C CNN
	1    2700 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
