EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Simon Game for Arduino"
Date "2023-10-08"
Rev "Version 1"
Comp "Yongqing Liu"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R2 A1
U 1 1 65238FE3
P 5200 3700
F 0 "A1" H 5200 2419 50  0000 C CNN
F 1 "Arduino_UNO" H 5200 2510 50  0000 C CNN
F 2 "Module:Arduino_UNO_R2" H 5200 3700 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5200 3700 50  0001 C CNN
	1    5200 3700
	-1   0    0    1   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 6523C1F9
P 3200 4000
F 0 "SW3" H 3200 4285 50  0000 C CNN
F 1 "SW_Push" H 3200 4194 50  0000 C CNN
F 2 "" H 3200 4200 50  0001 C CNN
F 3 "~" H 3200 4200 50  0001 C CNN
	1    3200 4000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 6523C772
P 3200 3500
F 0 "SW2" H 3200 3785 50  0000 C CNN
F 1 "SW_Push" H 3200 3694 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3500
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 6523CBE0
P 3200 3000
F 0 "SW1" H 3200 3285 50  0000 C CNN
F 1 "SW_Push" H 3200 3194 50  0000 C CNN
F 2 "" H 3200 3200 50  0001 C CNN
F 3 "~" H 3200 3200 50  0001 C CNN
	1    3200 3000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 6523D14B
P 3200 4500
F 0 "SW4" H 3200 4785 50  0000 C CNN
F 1 "SW_Push" H 3200 4694 50  0000 C CNN
F 2 "" H 3200 4700 50  0001 C CNN
F 3 "~" H 3200 4700 50  0001 C CNN
	1    3200 4500
	1    0    0    -1  
$EndComp
$Comp
L Display_Character:WC1602A DS1
U 1 1 6523DA99
P 7900 3750
F 0 "DS1" H 7900 4731 50  0000 C CNN
F 1 "WC1602A" H 7900 4640 50  0000 C CNN
F 2 "Display:WC1602A" H 7900 2850 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 8600 3750 50  0001 C CNN
	1    7900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2600 5300 2550
Wire Wire Line
	5000 4700 5000 4800
Wire Wire Line
	5000 4800 8600 4800
Wire Wire Line
	8600 4800 8600 2950
Wire Wire Line
	8600 2950 7900 2950
Wire Wire Line
	7500 3350 6500 3350
Wire Wire Line
	6500 3350 6500 3100
Wire Wire Line
	6500 3100 5700 3100
Wire Wire Line
	7500 3150 5900 3150
Wire Wire Line
	5900 3150 5900 3200
Wire Wire Line
	5900 3200 5700 3200
Text Label 5750 3200 0    50   ~ 0
E
Text Label 5750 3100 0    50   ~ 0
RS
Wire Wire Line
	8750 2550 8750 4550
Wire Wire Line
	8750 4550 7900 4550
Wire Wire Line
	5300 2550 7400 2550
Wire Wire Line
	7500 3250 7400 3250
Wire Wire Line
	7400 3250 7400 2550
Connection ~ 7400 2550
Wire Wire Line
	7400 2550 8750 2550
Text Label 7400 2550 0    50   ~ 0
RW
Text Label 7950 4550 0    50   ~ 0
GND
Text Label 7400 4800 0    50   ~ 0
VDD
Wire Wire Line
	7500 4350 6150 4350
Wire Wire Line
	6150 4350 6150 3600
Wire Wire Line
	6150 3600 5700 3600
Wire Wire Line
	7500 4250 6200 4250
Wire Wire Line
	6200 4250 6200 3500
Wire Wire Line
	6200 3500 5700 3500
Wire Wire Line
	7500 4150 6250 4150
Wire Wire Line
	6250 4150 6250 3400
Wire Wire Line
	6250 3400 5700 3400
Wire Wire Line
	7500 4050 6300 4050
Wire Wire Line
	6300 4050 6300 3300
Wire Wire Line
	6300 3300 5700 3300
Text Label 5750 3300 0    50   ~ 0
D4
Text Label 5750 3400 0    50   ~ 0
D5
Text Label 5750 3500 0    50   ~ 0
D6
Text Label 5750 3600 0    50   ~ 0
D7
Text GLabel 8300 3450 2    50   Input ~ 0
+5V
Text GLabel 8300 3550 2    50   Input ~ 0
GND
Wire Wire Line
	3000 3000 2700 3000
Wire Wire Line
	2700 3000 2700 3500
Wire Wire Line
	3000 3500 2700 3500
Connection ~ 2700 3500
Wire Wire Line
	2700 3500 2700 4000
Wire Wire Line
	3000 4000 2700 4000
Connection ~ 2700 4000
Wire Wire Line
	2700 4000 2700 4500
Wire Wire Line
	3000 4500 2700 4500
Wire Wire Line
	5100 2600 2700 2600
Wire Wire Line
	2700 2600 2700 3000
Connection ~ 2700 3000
Wire Wire Line
	5700 4100 5850 4100
Wire Wire Line
	5850 4100 5850 5200
Wire Wire Line
	5850 5200 4350 5200
Wire Wire Line
	4350 5200 4350 3000
Wire Wire Line
	3400 3000 4350 3000
Wire Wire Line
	5700 4000 5900 4000
Wire Wire Line
	5900 4000 5900 5300
Wire Wire Line
	5900 5300 4300 5300
Wire Wire Line
	4300 5300 4300 3500
Wire Wire Line
	3400 3500 4300 3500
Wire Wire Line
	4250 4000 4250 5400
Wire Wire Line
	4250 5400 5950 5400
Wire Wire Line
	5950 5400 5950 3900
Wire Wire Line
	5950 3900 5700 3900
Wire Wire Line
	3400 4000 4250 4000
Wire Wire Line
	5700 3800 6000 3800
Wire Wire Line
	6000 3800 6000 5450
Wire Wire Line
	6000 5450 4100 5450
Wire Wire Line
	4100 5450 4100 4500
Wire Wire Line
	3400 4500 4100 4500
Text Label 3500 3000 0    50   ~ 0
D2
Text Label 3500 3500 0    50   ~ 0
D3
Text Label 3500 4000 0    50   ~ 0
D4
Text Label 3500 4500 0    50   ~ 0
D5
Text Label 5750 3800 0    50   ~ 0
SW4
Text Label 5750 3900 0    50   ~ 0
SW3
Text Label 5750 4000 0    50   ~ 0
SW2
Text Label 5750 4100 0    50   ~ 0
SW1
$EndSCHEMATC
