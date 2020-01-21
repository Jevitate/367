onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Clock
add wave -noupdate -label clock /computer_tb/clock_TB
add wave -noupdate -divider {Control Unit}
add wave -noupdate /computer_tb/DUT1/CPU_1/CU/current_state
add wave -noupdate -divider {Instruction Reg}
add wave -noupdate /computer_tb/DUT1/CPU_1/IR_Load
add wave -noupdate /computer_tb/DUT1/CPU_1/IR
add wave -noupdate -divider {Memory Address Reg}
add wave -noupdate /computer_tb/DUT1/CPU_1/MAR_Load
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/MAR
add wave -noupdate -divider {Program Counter}
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/PC_Load
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/PC_Inc
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/CPU_1/DP/PC
add wave -noupdate -divider {General Purpose Register}
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/A_Load
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/A
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/B_Load
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/B
add wave -noupdate -divider {Bus System}
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/from_memory
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/to_memory
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/Bus1_Sel
add wave -noupdate /computer_tb/DUT1/CPU_1/DP/Bus2_Sel
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/CPU_1/DP/Bus1
add wave -noupdate -radix hexadecimal /computer_tb/DUT1/CPU_1/DP/Bus2
add wave -noupdate /computer_tb/DUT1/CPU_1/write
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 290
configure wave -valuecolwidth 105
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {210 ns}
