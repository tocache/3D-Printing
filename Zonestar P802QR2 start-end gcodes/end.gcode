M117 Finishing print...
M104 S0
M140 S0
;Retract the filament
G92 E1
G1 E-1 F300
G28 X0 Y0
G1 Y180 F5000 ;move completed part out
M84
M117 Finished
