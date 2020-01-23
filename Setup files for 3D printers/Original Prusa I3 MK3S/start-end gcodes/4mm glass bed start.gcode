;star gcode script for Prusa I3 MK3S BMG MMU2S single filament with 4mm glass bed

M115 U3.7.1 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
Tx
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 ; mesh bed leveling

G21 ; set units to millimeters

;go outside print area
G1 Y-3.0 F1000.0
G1 Z0.4 F1000.0
; select extruder
Tc

G1 Z100 F1000; raise nozzle 100mm
G1 Y200 F6000; bring bed to the front
; M117 Replace sheet w/glass 
G4 S60; wait 60 seconds for glass to be placed on the print bed
; if you'd like more time here, you can pause the print
; or extend the wait time in the G4 command
G1 Y0 F6000; move bed back
G1 Z2.75 F800; lower nozzle back down over glass
; IMPORTANT: replace the hashes above with the thickness of your glass
G92 Z0; set as zero position for z axis
; M117 Purge started
; purge line
G1 X55.0 E8.0 F2000.0
G1 Z0.3 F1000.0
G92 E0.0
G1 X240.0 E25.0 F2200.0
G1 Y-2.0 F1000.0
G1 X55.0 E25 F1400.0
G1 Z0.20 F1000.0
G1 X5.0 E4.0 F1000.0

M221 S{if layer_height<0.075}100{else}95{endif}
G92 E0.0
; M117 Print started
