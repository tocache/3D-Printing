G28 ; home all axes
M117 Purge extruder...
G92 E0 ; reset extruder G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X0.1 Y20 Z0.3 F5000.0 ; move to start-line position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; draw 1st line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
M117 Printing now...
