M575 P2 S2 57600
; MKS DISPLAY
M950 P1 C"E.10"
M42 P1 S0
G4 P500
M42 P1 S1
M918 P2 C30 F1000000 E4

; Fade in backlight
while iterations < 256
    m150 X2 R255 U255 B255 P{iterations} S1 F0
    G4 P20
; flash Button 3 times
while iterations < 3
    m150 X2 R255 U255 B255 P255 S1 F1
    m150 X2 R0 U255 B0 P255 S2 F0
    G4 P250
    m150 X2 R255 U255 B255 P255 S1 F1
    m150 X2 R0 U255 B0 P0 S2 F0
    G4 P250
; Display "ready" button state  
m150 X2 R255 U255 B255 P255 S1 F1
m150 X2 R255 U0 B0 P255 S2 F0
