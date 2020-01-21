onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Clock
add wave -noupdate -label clock /computer_tb/clock_TB
add wave -noupdate -divider {Control Unit}
add wave -noupdate -label current_state /computer_tb/DUT1/CPU_PROC/CU/current_state
add wave -noupdate -divider {Instruction Reg}
add wave -noupdate -label {IR Load} /computer_tb/DUT1/CPU_PROC/IR_Load
add wave -noupdate -label IR -radix hexadecimal /computer_tb/DUT1/CPU_PROC/IR
add wave -noupdate -divider {Memory Address Reg}
add wave -noupdate -label {MAR Load} /computer_tb/DUT1/CPU_PROC/DP/MAR_Load
add wave -noupdate -label MAR -radix decimal /computer_tb/DUT1/CPU_PROC/DP/MAR
add wave -noupdate -divider {Program Counter}
add wave -noupdate -label {PC Load} /computer_tb/DUT1/CPU_PROC/DP/PC_Load
add wave -noupdate -label {PC INC} /computer_tb/DUT1/CPU_PROC/DP/PC_Inc
add wave -noupdate -label PC -radix decimal /computer_tb/DUT1/CPU_PROC/DP/PC
add wave -noupdate -divider {General Purpose Register}
add wave -noupdate -label {A Load} /computer_tb/DUT1/CPU_PROC/DP/A_Load
add wave -noupdate -label A -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/A
add wave -noupdate -label {B Load} /computer_tb/DUT1/CPU_PROC/DP/B_Load
add wave -noupdate -label B -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/B
add wave -noupdate -divider {Bus System}
add wave -noupdate -label from_memory -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/from_memory
add wave -noupdate -label to_memory -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/to_memory
add wave -noupdate -label Bus1_Sel /computer_tb/DUT1/CPU_PROC/DP/Bus1_Sel
add wave -noupdate -label Bus2_Sel /computer_tb/DUT1/CPU_PROC/DP/Bus2_Sel
add wave -noupdate -label Bus1 -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/Bus1
add wave -noupdate -label Bus2 -radix hexadecimal /computer_tb/DUT1/CPU_PROC/DP/Bus2
add wave -noupdate -label rite /computer_tb/DUT1/CPU_PROC/rite
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
WaveRestoreZoom {0 ps} {157500 ps}
