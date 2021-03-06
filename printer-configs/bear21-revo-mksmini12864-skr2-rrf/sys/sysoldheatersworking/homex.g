; homex.g
; called to home the X axis
;
M400					          ; Wait for all moves to stop
G91						          ; Use relative moves
G1 H2 X0.01	Z0.01		    ; Move X a small amount to enable
M400					          ; Wait for all moves to stop
G4 P200					        ; Delay to allow TMC to detect stopped state
M915 P0 S-10 H200 R0	  ; Configure stall detect
M574 X1 S3				      ; Configure X endstop
M913 X50 Z50			      ; Lower X and Z power
G4 P200					        ; Delay to ensure settings are made
G1 H2 Z5 F2500			    ; Lift Z relative to current position
G1 H1 X20 F2000			    ; Back away from endstop
M400					          ; Wait for all moves to stop
M915 P0 S-30 H200 R0	  ; Configure stall detect
G4 P200					        ; Delay to ensure settings are made
G1 H1 X-230 F2000		    ; Move towards endstop until it stalls
M400					          ; Wait for all moves to stop
M915 P0 S-10 H200 R0	  ; Configure stall detect
G4 P200					        ; Delay to ensure settings are made
G1 H1 X10 F2000			    ; Back away from endstop
M400					          ; Wait for all moves to stop
M915 P0 S125 H200 R0	  ; Configure stall detect
G4 P200                 ; Delay to ensure settings are made
G1 H1 X-230 F2000		    ; Move towards endstop until it stalls
M915 P0 S-10 H200 R0	  ; Configure stall detect to be less sensitive
G1 X1 F1000				      ; Move away from stop and clear stall
G1 H2 Z-5 F2500			    ; Return Z to original position
M400					          ; Wait for all moves to stop
G90						          ; Absolute positioning
M913 X100 Z100			    ; Back to full power
M915 P0 S20 H200 R1		  ; Report any stalls