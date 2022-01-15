; bed.g
; called to perform automatic bed compensation via G32
;
; generated by RepRapFirmware Configuration Tool v3.3.0-LPC-STM32+10 on Wed Dec 15 2021 14:34:52 GMT+0100 (Mitteleuropäische Normalzeit)
G28 ; home
; -----------------------------------------------------------------------------------------
G30 P0 X20 Y105 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X230 Y105 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
; -----------------------------------------------------------------------------------------
M561 ; clear any bed transform
G29  ; probe the bed and enable compensation
