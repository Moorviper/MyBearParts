; 0:/sys/current-sense-homing.g
; Current and Sensitivity for homing routines
 
M915 X S50 F1 H150 R0                                       ; Set X axis Sensitivity
M915 Y S50 F1 H150 R0                                       ; Set y axis Sensitivity
M913 X20 Y20 Z60                                           ; set X Y Z motors to X% of their normal current
