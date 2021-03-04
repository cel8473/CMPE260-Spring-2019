# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/DSD-II/Exercise5/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/DSD-II/Exercise5/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo d:/DSD-II/Exercise5/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions disable [current_project]
read_vhdl -library xil_defaultlib {
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/Adder.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/Rip_Car_Adder.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/SLL_ALU.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/SRA_ALU.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/SRL_ALU.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/multu.vhd
  D:/DSD-II/Exercise5/project_1/project_1.srcs/sources_1/new/ALU.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/DSD-II/Exercise5/alu.xdc
set_property used_in_implementation false [get_files D:/DSD-II/Exercise5/alu.xdc]


synth_design -top ALU -part xc7a35tcpg236-1


write_checkpoint -force -noxdef ALU.dcp

catch { report_utilization -file ALU_utilization_synth.rpt -pb ALU_utilization_synth.pb }
