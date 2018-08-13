EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:logo
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:wee_noise_maker
LIBS:nugget-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "Noise Nugget"
Date ""
Rev "Rev-B"
Comp "Fabien Chouteau"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L C C13
U 1 1 5A50B77E
P 6975 1350
F 0 "C13" H 7000 1450 50  0000 L CNN
F 1 "100nF" H 7000 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7013 1200 50  0001 C CNN
F 3 "" H 6975 1350 50  0001 C CNN
	1    6975 1350
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5A50BC51
P 7325 1350
F 0 "C14" H 7350 1450 50  0000 L CNN
F 1 "100nF" H 7350 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7363 1200 50  0001 C CNN
F 3 "" H 7325 1350 50  0001 C CNN
	1    7325 1350
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5A50BC89
P 7625 1350
F 0 "C15" H 7650 1450 50  0000 L CNN
F 1 "100nF" H 7650 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7663 1200 50  0001 C CNN
F 3 "" H 7625 1350 50  0001 C CNN
	1    7625 1350
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5A50BCC2
P 7925 1350
F 0 "C16" H 7950 1450 50  0000 L CNN
F 1 "100nF" H 7950 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7963 1200 50  0001 C CNN
F 3 "" H 7925 1350 50  0001 C CNN
	1    7925 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A50BFDB
P 8575 1275
F 0 "#PWR01" H 8575 1025 50  0001 C CNN
F 1 "GND" H 8575 1125 50  0000 C CNN
F 2 "" H 8575 1275 50  0001 C CNN
F 3 "" H 8575 1275 50  0001 C CNN
	1    8575 1275
	1    0    0    -1  
$EndComp
Text GLabel 6875 1500 0    60   Input ~ 0
3V3
$Comp
L SGTL5000 U1
U 1 1 5A511AF9
P 3225 9425
F 0 "U1" H 3125 9675 60  0000 C CNN
F 1 "SGTL5000" H 3575 7875 60  0000 C CNN
F 2 "Housings_DFN_QFN:UQFN-20-1EP_3x3mm_Pitch0.4mm" H 3225 9375 60  0001 C CNN
F 3 "" H 3225 9375 60  0001 C CNN
	1    3225 9425
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5A512372
P 2525 10875
F 0 "C6" H 2550 10975 50  0000 L CNN
F 1 "100nF" H 2550 10775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2563 10725 50  0001 C CNN
F 3 "" H 2525 10875 50  0001 C CNN
	1    2525 10875
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5A51258A
P 2525 8925
F 0 "C5" H 2550 9025 50  0000 L CNN
F 1 "100nF" H 2550 8825 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2563 8775 50  0001 C CNN
F 3 "" H 2525 8925 50  0001 C CNN
	1    2525 8925
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A512876
P 2175 8925
F 0 "C2" H 2200 9025 50  0000 L CNN
F 1 "100nF" H 2200 8825 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2213 8775 50  0001 C CNN
F 3 "" H 2175 8925 50  0001 C CNN
	1    2175 8925
	1    0    0    -1  
$EndComp
Text GLabel 1875 8775 0    60   Input ~ 0
3V3
$Comp
L GND #PWR02
U 1 1 5A512D32
P 2325 9125
F 0 "#PWR02" H 2325 8875 50  0001 C CNN
F 1 "GND" H 2325 8975 50  0000 C CNN
F 2 "" H 2325 9125 50  0001 C CNN
F 3 "" H 2325 9125 50  0001 C CNN
	1    2325 9125
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5A512F0B
P 2925 10925
F 0 "#PWR03" H 2925 10675 50  0001 C CNN
F 1 "GND" H 2925 10775 50  0000 C CNN
F 2 "" H 2925 10925 50  0001 C CNN
F 3 "" H 2925 10925 50  0001 C CNN
	1    2925 10925
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5A512FDE
P 2525 11025
F 0 "#PWR04" H 2525 10775 50  0001 C CNN
F 1 "GND" H 2525 10875 50  0000 C CNN
F 2 "" H 2525 11025 50  0001 C CNN
F 3 "" H 2525 11025 50  0001 C CNN
	1    2525 11025
	1    0    0    -1  
$EndComp
$Comp
L 3.5_audio_jack U3
U 1 1 5A5135DC
P 4825 10650
F 0 "U3" H 4825 10650 60  0000 C CNN
F 1 "SJ-3523-SMT" H 4825 10650 60  0000 C CNN
F 2 "footprints:SJ-3523-SMT" H 4825 10650 60  0001 C CNN
F 3 "" H 4825 10650 60  0001 C CNN
	1    4825 10650
	-1   0    0    1   
$EndComp
Text GLabel 2975 9675 0    60   Input ~ 0
AUDIO_SCL
Text GLabel 9025 9400 3    60   Input ~ 0
AUDIO_SDA
Text GLabel 2975 9925 0    60   Input ~ 0
I2S_MCLK
Text GLabel 2975 10075 0    60   Input ~ 0
I2S_SCLK
Text GLabel 2975 10225 0    60   Input ~ 0
I2S_LRCLK
Text GLabel 2975 10375 0    60   Input ~ 0
I2S_DIN
Text GLabel 2975 10525 0    60   Input ~ 0
I2S_DOUT
Text GLabel 2975 9525 0    60   Input ~ 0
AUDIO_SDA
Text GLabel 8800 9400 3    60   Input ~ 0
AUDIO_SCL
Text GLabel 11475 7750 0    60   Input ~ 0
3V3
Text GLabel 11975 7850 2    60   Input ~ 0
SWDCLK
Text GLabel 11975 7750 2    60   Input ~ 0
SWDIO
Text GLabel 11975 8150 2    60   Input ~ 0
NRESET
$Comp
L R R4
U 1 1 5A5227C0
P 8800 9250
F 0 "R4" V 8880 9250 50  0000 C CNN
F 1 "10K" V 8800 9250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8730 9250 50  0001 C CNN
F 3 "" H 8800 9250 50  0001 C CNN
	1    8800 9250
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 5A522DD3
P 9025 9250
F 0 "R5" V 9105 9250 50  0000 C CNN
F 1 "10K" V 9025 9250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8955 9250 50  0001 C CNN
F 3 "" H 9025 9250 50  0001 C CNN
	1    9025 9250
	1    0    0    -1  
$EndComp
Text GLabel 8900 9025 1    60   Input ~ 0
3V3
$Comp
L C C1
U 1 1 5A52376E
P 975 9275
F 0 "C1" H 1000 9375 50  0000 L CNN
F 1 "2.2uF" H 1000 9175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1013 9125 50  0001 C CNN
F 3 "" H 975 9275 50  0001 C CNN
	1    975  9275
	1    0    0    -1  
$EndComp
Text GLabel 975  9125 1    60   Input ~ 0
VCAP1
$Comp
L GND #PWR05
U 1 1 5A523B3D
P 975 9425
F 0 "#PWR05" H 975 9175 50  0001 C CNN
F 1 "GND" H 975 9275 50  0000 C CNN
F 2 "" H 975 9425 50  0001 C CNN
F 3 "" H 975 9425 50  0001 C CNN
	1    975  9425
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5A52A006
P 5100 8800
F 0 "C12" H 5125 8900 50  0000 L CNN
F 1 "100nF" H 5125 8700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5138 8650 50  0001 C CNN
F 3 "" H 5100 8800 50  0001 C CNN
	1    5100 8800
	1    0    0    -1  
$EndComp
$Comp
L APE8865N-12-HF-3 U2
U 1 1 5A52A208
P 4550 8700
F 0 "U2" H 4250 8950 50  0000 C CNN
F 1 "AP7313-18SRG-7" H 4550 8900 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4550 8800 50  0001 C CIN
F 3 "" H 4550 8700 50  0001 C CNN
	1    4550 8700
	1    0    0    -1  
$EndComp
Text GLabel 4100 8650 0    60   Input ~ 0
3V3
$Comp
L GND #PWR06
U 1 1 5A52AA0F
P 4850 9000
F 0 "#PWR06" H 4850 8750 50  0001 C CNN
F 1 "GND" H 4850 8850 50  0000 C CNN
F 2 "" H 4850 9000 50  0001 C CNN
F 3 "" H 4850 9000 50  0001 C CNN
	1    4850 9000
	1    0    0    -1  
$EndComp
Text GLabel 5325 8650 2    60   Input ~ 0
1V8
Text GLabel 3875 9125 1    60   Input ~ 0
1V8
$Comp
L C C17
U 1 1 5A52D41F
P 8250 1350
F 0 "C17" H 8275 1450 50  0000 L CNN
F 1 "100nF" H 8275 1250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8288 1200 50  0001 C CNN
F 3 "" H 8250 1350 50  0001 C CNN
	1    8250 1350
	1    0    0    -1  
$EndComp
Text GLabel 11975 7950 2    60   Input ~ 0
TDO
Text GLabel 12325 3900 2    60   Input ~ 0
TDO
Text GLabel 8075 9450 0    60   Input ~ 0
SW1
$Comp
L GND #PWR07
U 1 1 5A56EA10
P 8200 9750
F 0 "#PWR07" H 8200 9500 50  0001 C CNN
F 1 "GND" H 8200 9600 50  0000 C CNN
F 2 "" H 8200 9750 50  0001 C CNN
F 3 "" H 8200 9750 50  0001 C CNN
	1    8200 9750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5A56EC09
P 8200 9600
F 0 "R3" V 8280 9600 50  0000 C CNN
F 1 "10K" V 8200 9600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 8130 9600 50  0001 C CNN
F 3 "" H 8200 9600 50  0001 C CNN
	1    8200 9600
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A56F4B5
P 8200 9250
F 0 "SW1" H 8250 9350 50  0000 L CNN
F 1 "EVQ-P2K02Q" H 8200 9190 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P" H 8200 9450 50  0001 C CNN
F 3 "" H 8200 9450 50  0001 C CNN
	1    8200 9250
	0    -1   -1   0   
$EndComp
Text GLabel 8200 9050 1    60   Input ~ 0
3V3
$Comp
L LED_Small D1
U 1 1 5A573321
P 9550 9225
F 0 "D1" H 9500 9350 50  0000 L CNN
F 1 "LED_Small" H 9375 9125 50  0000 L CNN
F 2 "LEDs:LED_0603" V 9550 9225 50  0001 C CNN
F 3 "" V 9550 9225 50  0001 C CNN
	1    9550 9225
	0    -1   -1   0   
$EndComp
Text GLabel 9550 9125 1    60   Input ~ 0
3V3
$Comp
L R R6
U 1 1 5A5763A2
P 9550 9475
F 0 "R6" V 9630 9475 50  0000 C CNN
F 1 "510R" V 9550 9475 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 9480 9475 50  0001 C CNN
F 3 "" H 9550 9475 50  0001 C CNN
	1    9550 9475
	1    0    0    -1  
$EndComp
Text GLabel 9550 9625 3    60   Input ~ 0
LED1
$Comp
L STM32F446RETx U4
U 1 1 5A6DCC72
P 7825 3500
F 0 "U4" H 3425 5425 50  0000 L BNN
F 1 "STM32F446RET" H 12225 5425 50  0000 R BNN
F 2 "kicad-libraries:LQFP64" H 12225 5375 50  0001 R TNN
F 3 "" H 7825 3500 50  0001 C CNN
	1    7825 3500
	1    0    0    -1  
$EndComp
Text GLabel 1625 10125 2    60   Input ~ 0
VBUS
$Comp
L GND #PWR08
U 1 1 5A7CC869
P 1325 10725
F 0 "#PWR08" H 1325 10475 50  0001 C CNN
F 1 "GND" H 1325 10575 50  0000 C CNN
F 2 "" H 1325 10725 50  0001 C CNN
F 3 "" H 1325 10725 50  0001 C CNN
	1    1325 10725
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5A7D145F
P 7625 5400
F 0 "#PWR09" H 7625 5150 50  0001 C CNN
F 1 "GND" H 7625 5250 50  0000 C CNN
F 2 "" H 7625 5400 50  0001 C CNN
F 3 "" H 7625 5400 50  0001 C CNN
	1    7625 5400
	1    0    0    -1  
$EndComp
Text GLabel 2850 1900 0    60   Input ~ 0
NRESET
$Comp
L R R2
U 1 1 5A7D1F13
P 2950 1750
F 0 "R2" V 3030 1750 50  0000 C CNN
F 1 "10K" V 2950 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2880 1750 50  0001 C CNN
F 3 "" H 2950 1750 50  0001 C CNN
	1    2950 1750
	1    0    0    -1  
$EndComp
Text GLabel 2950 1600 1    60   Input ~ 0
3V3
$Comp
L R R1
U 1 1 5A7D2576
P 2225 2250
F 0 "R1" V 2305 2250 50  0000 C CNN
F 1 "10K" V 2225 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" V 2155 2250 50  0001 C CNN
F 3 "" H 2225 2250 50  0001 C CNN
	1    2225 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5A7D257C
P 2225 2400
F 0 "#PWR010" H 2225 2150 50  0001 C CNN
F 1 "GND" H 2225 2250 50  0000 C CNN
F 2 "" H 2225 2400 50  0001 C CNN
F 3 "" H 2225 2400 50  0001 C CNN
	1    2225 2400
	1    0    0    -1  
$EndComp
Text GLabel 3325 2400 0    60   Input ~ 0
VCAP1
$Comp
L Crystal_GND24 Y1
U 1 1 5A7D445A
P 2775 3100
F 0 "Y1" V 2775 3100 50  0000 L CNN
F 1 "ABM3B-8.000MHZ-B2-T" V 3000 2475 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_0603_4Pads" H 2775 3100 50  0001 C CNN
F 3 "" H 2775 3100 50  0001 C CNN
	1    2775 3100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A7D4460
P 3025 3100
F 0 "#PWR011" H 3025 2850 50  0001 C CNN
F 1 "GND" H 3025 2950 50  0000 C CNN
F 2 "" H 3025 3100 50  0001 C CNN
F 3 "" H 3025 3100 50  0001 C CNN
	1    3025 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A7D4466
P 2525 3100
F 0 "#PWR012" H 2525 2850 50  0001 C CNN
F 1 "GND" H 2525 2950 50  0000 C CNN
F 2 "" H 2525 3100 50  0001 C CNN
F 3 "" H 2525 3100 50  0001 C CNN
	1    2525 3100
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5A7D4473
P 2350 3300
F 0 "C4" V 2400 3100 50  0000 L CNN
F 1 "20pF" V 2525 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2388 3150 50  0001 C CNN
F 3 "" H 2350 3300 50  0001 C CNN
	1    2350 3300
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 5A7D4479
P 2350 2950
F 0 "C3" V 2400 2800 50  0000 L CNN
F 1 "20pF" V 2175 2875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 2388 2800 50  0001 C CNN
F 3 "" H 2350 2950 50  0001 C CNN
	1    2350 2950
	0    1    1    0   
$EndComp
Text GLabel 12325 1900 2    60   Input ~ 0
SW1
$Comp
L USB_OTG J2
U 1 1 5A7DBCCB
P 1325 10325
F 0 "J2" H 1125 10775 50  0000 L CNN
F 1 "10118194" H 1125 10675 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 1475 10275 50  0001 C CNN
F 3 "" H 1475 10275 50  0001 C CNN
	1    1325 10325
	1    0    0    -1  
$EndComp
Text GLabel 1625 10325 2    60   Input ~ 0
USB_D+
Text GLabel 1625 10425 2    60   Input ~ 0
USB_D-
Text GLabel 1625 10525 2    60   Input ~ 0
USB_ID
Text GLabel 12325 2800 2    60   Input ~ 0
VBUS
Text GLabel 12325 2900 2    60   Input ~ 0
USB_ID
Text GLabel 12325 3100 2    60   Input ~ 0
USB_D+
Text GLabel 12325 3000 2    60   Input ~ 0
USB_D-
Text GLabel 12325 2300 2    60   Input ~ 0
I2S_LRCLK
Text GLabel 12325 3300 2    60   Input ~ 0
SWDCLK
Text GLabel 12325 3200 2    60   Input ~ 0
SWDIO
Text GLabel 3325 3900 0    60   Input ~ 0
I2S_MCLK
Text GLabel 3325 3800 0    60   Input ~ 0
I2S_DIN
Text GLabel 12325 2600 2    60   Input ~ 0
I2S_DOUT
Text GLabel 12325 4500 2    60   Input ~ 0
AUDIO_SDA
Text GLabel 12325 4200 2    60   Input ~ 0
QSPI_BK1_NCS
Text GLabel 12325 3800 2    60   Input ~ 0
QSPI_CLK
Text GLabel 3325 4400 0    60   Input ~ 0
QSPI_BK1_IO0
Text GLabel 3325 4500 0    60   Input ~ 0
QSPI_BK1_IO1
$Comp
L QSPI_memory U7
U 1 1 5A7FE372
P 13875 5625
F 0 "U7" H 14525 5225 60  0000 C CNN
F 1 "SST26VF064B-104V/SM" H 14325 5025 60  0000 C CNN
F 2 "Housings_SOIC:SOIJ-8_5.3x5.3mm_Pitch1.27mm" H 13875 5625 60  0001 C CNN
F 3 "" H 13875 5625 60  0001 C CNN
	1    13875 5625
	1    0    0    -1  
$EndComp
Text GLabel 13525 5925 0    60   Input ~ 0
QSPI_BK1_NCS
Text GLabel 13525 6925 0    60   Input ~ 0
QSPI_CLK
Text GLabel 13525 6125 0    60   Input ~ 0
QSPI_BK1_IO0
Text GLabel 13525 6325 0    60   Input ~ 0
QSPI_BK1_IO1
NoConn ~ 13525 6525
NoConn ~ 13525 6725
$Comp
L GND #PWR013
U 1 1 5A800845
P 14225 7225
F 0 "#PWR013" H 14225 6975 50  0001 C CNN
F 1 "GND" H 14225 7075 50  0000 C CNN
F 2 "" H 14225 7225 50  0001 C CNN
F 3 "" H 14225 7225 50  0001 C CNN
	1    14225 7225
	1    0    0    -1  
$EndComp
$Comp
L C C20
U 1 1 5A801070
P 15325 6225
F 0 "C20" H 15350 6325 50  0000 L CNN
F 1 "100nF" H 15350 6125 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 15363 6075 50  0001 C CNN
F 3 "" H 15325 6225 50  0001 C CNN
	1    15325 6225
	1    0    0    -1  
$EndComp
Text GLabel 14225 5625 1    60   Input ~ 0
3V3
Text GLabel 12325 4600 2    60   Input ~ 0
I2S_SCLK
Text GLabel 12325 4700 2    60   Input ~ 0
I2S_LRCLK
NoConn ~ 4225 10625
NoConn ~ 4225 10775
$Comp
L C_Small C8
U 1 1 5A808DED
P 4500 9525
F 0 "C8" H 4510 9595 50  0000 L CNN
F 1 "2.2uF" H 4510 9445 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 9525 50  0001 C CNN
F 3 "" H 4500 9525 50  0001 C CNN
	1    4500 9525
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C9
U 1 1 5A809030
P 4500 9675
F 0 "C9" H 4510 9745 50  0000 L CNN
F 1 "2.2uF" H 4510 9595 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 9675 50  0001 C CNN
F 3 "" H 4500 9675 50  0001 C CNN
	1    4500 9675
	0    -1   -1   0   
$EndComp
Text GLabel 4700 9525 2    60   Input ~ 0
LINE_IN_L
Text GLabel 4700 9675 2    60   Input ~ 0
LINE_IN_R
$Comp
L C_Small C10
U 1 1 5A809BF2
P 4500 9825
F 0 "C10" H 4510 9895 50  0000 L CNN
F 1 "2.2uF" H 4510 9745 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 9825 50  0001 C CNN
F 3 "" H 4500 9825 50  0001 C CNN
	1    4500 9825
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C11
U 1 1 5A809BF8
P 4500 9975
F 0 "C11" H 4510 10045 50  0000 L CNN
F 1 "2.2uF" H 4510 9895 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4500 9975 50  0001 C CNN
F 3 "" H 4500 9975 50  0001 C CNN
	1    4500 9975
	0    -1   -1   0   
$EndComp
Text GLabel 4700 9825 2    60   Input ~ 0
LINE_OUT_L
Text GLabel 4700 9975 2    60   Input ~ 0
LINE_OUT_R
$Comp
L GND #PWR014
U 1 1 5A80A8ED
P 1075 7925
F 0 "#PWR014" H 1075 7675 50  0001 C CNN
F 1 "GND" H 1075 7775 50  0000 C CNN
F 2 "" H 1075 7925 50  0001 C CNN
F 3 "" H 1075 7925 50  0001 C CNN
	1    1075 7925
	1    0    0    -1  
$EndComp
Text GLabel 1075 7125 2    60   Input ~ 0
LINE_IN_L
Text GLabel 1075 7225 2    60   Input ~ 0
LINE_IN_R
Text GLabel 1075 7325 2    60   Input ~ 0
LINE_OUT_L
Text GLabel 1075 7425 2    60   Input ~ 0
LINE_OUT_R
Text GLabel 12325 4400 2    60   Input ~ 0
AUDIO_SCL
Text GLabel 12325 3400 2    60   Input ~ 0
LED1
Text GLabel 1075 7025 2    60   Input ~ 0
VBUS
$Comp
L SW_Push DFU1
U 1 1 5B6D8011
P 2225 1900
F 0 "DFU1" H 2275 2000 50  0000 L CNN
F 1 "EVQ-P2K02Q" H 2225 1840 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3U-1000P" H 2225 2100 50  0001 C CNN
F 3 "" H 2225 2100 50  0001 C CNN
	1    2225 1900
	0    -1   -1   0   
$EndComp
Text GLabel 10350 6125 2    60   Input ~ 0
3V3
$Comp
L AP131-35 U5
U 1 1 5B6DC68B
P 9625 6225
F 0 "U5" H 9425 6475 50  0000 L CNN
F 1 "AP2112K-3.3TRG1" H 9975 6475 50  0000 R CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 9625 5825 50  0001 C CNN
F 3 "" H 9625 6225 50  0001 C CNN
	1    9625 6225
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5B6DC692
P 9625 6525
F 0 "#PWR015" H 9625 6275 50  0001 C CNN
F 1 "GND" H 9625 6375 50  0000 C CNN
F 2 "" H 9625 6525 50  0001 C CNN
F 3 "" H 9625 6525 50  0001 C CNN
	1    9625 6525
	1    0    0    -1  
$EndComp
Text GLabel 8575 6125 0    60   Input ~ 0
VBUS
$Comp
L C C18
U 1 1 5B6DC699
P 8575 6275
F 0 "C18" H 8600 6375 50  0000 L CNN
F 1 "2.2uF" H 8600 6175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8613 6125 50  0001 C CNN
F 3 "" H 8575 6275 50  0001 C CNN
	1    8575 6275
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 5B6DC6A0
P 10200 6275
F 0 "C19" H 10225 6375 50  0000 L CNN
F 1 "2.2uF" H 10225 6175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10238 6125 50  0001 C CNN
F 3 "" H 10200 6275 50  0001 C CNN
	1    10200 6275
	1    0    0    -1  
$EndComp
NoConn ~ 9925 6225
Connection ~ 7625 1200
Connection ~ 7325 1200
Connection ~ 6975 1200
Wire Wire Line
	3375 9125 3375 8775
Wire Wire Line
	1875 8775 3625 8775
Wire Wire Line
	3625 8775 3625 9125
Connection ~ 3375 8775
Connection ~ 2525 8775
Connection ~ 2175 8775
Wire Wire Line
	2175 9075 2525 9075
Wire Wire Line
	2325 9075 2325 9125
Connection ~ 2325 9075
Wire Wire Line
	2975 10875 2925 10875
Wire Wire Line
	2925 10875 2925 10925
Wire Wire Line
	2975 10725 2525 10725
Connection ~ 7925 1200
Wire Wire Line
	9025 9100 8800 9100
Wire Wire Line
	8900 9025 8900 9100
Connection ~ 8900 9100
Wire Wire Line
	4550 9000 5100 9000
Wire Wire Line
	5100 9000 5100 8950
Connection ~ 4850 9000
Wire Wire Line
	5000 8650 5325 8650
Connection ~ 5100 8650
Wire Wire Line
	8575 1200 8575 1275
Wire Wire Line
	6975 1200 8575 1200
Connection ~ 8250 1200
Wire Wire Line
	8075 9450 8200 9450
Wire Wire Line
	1225 10725 1325 10725
Wire Wire Line
	7625 5400 8025 5400
Connection ~ 7925 5400
Connection ~ 7825 5400
Connection ~ 7725 5400
Wire Wire Line
	2225 2100 3325 2100
Wire Wire Line
	2200 3100 2575 3100
Wire Wire Line
	2975 3100 3025 3100
Wire Wire Line
	3325 3000 3225 3000
Wire Wire Line
	3225 3000 3225 2950
Wire Wire Line
	3225 2950 2500 2950
Wire Wire Line
	2775 3300 2775 3250
Connection ~ 2775 3300
Wire Wire Line
	3225 3300 3225 3100
Wire Wire Line
	3225 3100 3325 3100
Connection ~ 2775 2950
Wire Wire Line
	2200 2950 2200 3300
Connection ~ 2200 3100
Connection ~ 2525 3100
Wire Wire Line
	2500 3300 3225 3300
Wire Wire Line
	6875 1500 8250 1500
Connection ~ 6975 1500
Connection ~ 7325 1500
Connection ~ 7625 1500
Connection ~ 7725 1500
Connection ~ 7825 1500
Connection ~ 7925 1500
Connection ~ 8025 1500
Wire Wire Line
	14225 5625 15325 5625
Wire Wire Line
	15325 5625 15325 6075
Wire Wire Line
	15325 6375 15325 7225
Wire Wire Line
	15325 7225 14225 7225
Wire Wire Line
	4225 10125 4450 10125
Wire Wire Line
	4450 10275 4225 10275
Wire Wire Line
	4225 10425 4450 10425
Wire Wire Line
	4400 9525 4225 9525
Wire Wire Line
	4225 9675 4400 9675
Wire Wire Line
	4600 9525 4700 9525
Wire Wire Line
	4600 9675 4700 9675
Wire Wire Line
	4400 9825 4225 9825
Wire Wire Line
	4225 9975 4400 9975
Wire Wire Line
	4600 9825 4700 9825
Wire Wire Line
	4600 9975 4700 9975
Wire Wire Line
	2850 1900 3325 1900
Wire Wire Line
	8575 6525 10200 6525
Wire Wire Line
	9925 6125 10350 6125
Wire Wire Line
	10200 6525 10200 6425
Connection ~ 9625 6525
Connection ~ 10200 6125
Wire Wire Line
	8575 6125 9325 6125
Wire Wire Line
	8575 6525 8575 6425
$Comp
L CONN_01X10 J1
U 1 1 5B6E99A9
P 875 7475
F 0 "J1" H 875 8025 50  0000 C CNN
F 1 "CONN_01X10" V 975 7475 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 875 7475 50  0001 C CNN
F 3 "" H 875 7475 50  0001 C CNN
	1    875  7475
	-1   0    0    1   
$EndComp
Connection ~ 2950 1900
Text GLabel 2225 1700 1    60   Input ~ 0
3V3
Wire Wire Line
	9325 6225 9125 6225
Wire Wire Line
	9125 6225 9125 6125
Connection ~ 9125 6125
Text GLabel 12325 2400 2    60   Input ~ 0
I2S_SCLK
$Comp
L CONN_02X05 J3
U 1 1 5B705279
P 11725 7950
F 0 "J3" H 11725 8250 50  0000 C CNN
F 1 "CONN_02X05" H 11725 7650 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05_Pitch1.27mm_SMD" H 11725 6750 50  0001 C CNN
F 3 "" H 11725 6750 50  0001 C CNN
	1    11725 7950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5B7061FA
P 11475 7850
F 0 "#PWR016" H 11475 7600 50  0001 C CNN
F 1 "GND" H 11475 7700 50  0000 C CNN
F 2 "" H 11475 7850 50  0001 C CNN
F 3 "" H 11475 7850 50  0001 C CNN
	1    11475 7850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR017
U 1 1 5B70627A
P 11475 7950
F 0 "#PWR017" H 11475 7700 50  0001 C CNN
F 1 "GND" H 11475 7800 50  0000 C CNN
F 2 "" H 11475 7950 50  0001 C CNN
F 3 "" H 11475 7950 50  0001 C CNN
	1    11475 7950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 5B7062FA
P 11475 8150
F 0 "#PWR018" H 11475 7900 50  0001 C CNN
F 1 "GND" H 11475 8000 50  0000 C CNN
F 2 "" H 11475 8150 50  0001 C CNN
F 3 "" H 11475 8150 50  0001 C CNN
	1    11475 8150
	0    1    1    0   
$EndComp
NoConn ~ 11475 8050
NoConn ~ 11975 8050
Text GLabel 1075 7625 2    60   Input ~ 0
UART_TX
Text GLabel 1075 7525 2    60   Input ~ 0
UART_RX
Text GLabel 1075 7725 2    60   Input ~ 0
AUDIO_SDA
Text GLabel 1075 7825 2    60   Input ~ 0
AUDIO_SCL
Text GLabel 12325 2200 2    60   Input ~ 0
UART_RX
Text GLabel 12325 2100 2    60   Input ~ 0
UART_TX
$EndSCHEMATC