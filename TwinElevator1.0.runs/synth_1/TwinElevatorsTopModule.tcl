# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.cache/wt [current_project]
set_property parent.project_path C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions disable [current_project]
read_verilog -library xil_defaultlib -sv {
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/MotorStarter.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/MotorController.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/RGBClockDivider.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/QUEUE.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/DriverController.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/KeyboardController.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/Comparator.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/SegmentDisplay.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/clockDivider.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/RGBDisplay.sv
  C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/sources_1/new/TwinElevatorsTopModule.sv
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/Users/Argert/Desktop/TwinElevator1.0/TwinElevator1.0.srcs/constrs_1/new/constraints.xdc]


synth_design -top TwinElevatorsTopModule -part xc7a35tcpg236-1


write_checkpoint -force -noxdef TwinElevatorsTopModule.dcp

catch { report_utilization -file TwinElevatorsTopModule_utilization_synth.rpt -pb TwinElevatorsTopModule_utilization_synth.pb }
