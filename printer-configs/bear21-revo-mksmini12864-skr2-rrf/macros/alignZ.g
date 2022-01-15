; alignZ.g
;G90
;if move.axes[0].homed && move.axes[1].homed && move.axes[2].homed
;	M98 P"homex.g"
;	M98 P"homey.g"
;	M98 P"homez.g" 
;	M564 S0
;	G1 Z210
;else
;	M98 P"homez.g" 
;	M564 S0
;	G1 Z 210
;G90                    ; absolute positioning
G90      
	M98 P"homex.g"
	M98 P"homey.g"
	M98 P"homez.g" 
	M564 S0
	G0 Z205 F900
	G0 Z218 F300
G90
	M98 P"homez.g" 