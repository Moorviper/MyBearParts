; homeall.g
; called to home all axes
;
; generated by RepRapFirmware Configuration Tool v3.3.0-LPC-STM32+10 on Wed Dec 15 2021 14:34:53 GMT+0100 (Mitteleuropäische Normalzeit)
G91                     ; relative positioning
G1 H2 Z5 F6000          ; lift Z relative to current position
G1 H1 X-255 Y-219 F1800 ; move quickly to X and Y axis endstops and stop there (first pass)
G1 H2 X5 Y5 F6000       ; go back a few mm
G1 H1 X-255 Y-219 F360  ; move slowly to X and Y axis endstops once more (second pass)
G1 H1 Z-205 F360        ; move Z down stopping at the endstop
G90                     ; absolute positioning
G92 Z0                  ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91                    ; relative positioning
;G1 Z5 F100             ; lift Z relative to current position
;G90                    ; absolute positioning


