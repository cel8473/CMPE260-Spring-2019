# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/DSD-II/proj1/project_1/project_1.cache/wt [current_project]
set_property parent.project_path D:/DSD-II/proj1/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo d:/DSD-II/proj1/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  D:/DSD-II/proj1/sources/ALU.vhd
  D:/DSD-II/proj1/sources/adder.vhd
  D:/DSD-II/proj1/sources/andN.vhd
  D:/DSD-II/proj1/sources/data_mem.vhd
  D:/DSD-II/proj1/sources/execute.vhd
  D:/DSD-II/proj1/sources/fa.vhd
  D:/DSD-II/proj1/sources/instr_decode.vhd
  D:/DSD-II/proj1/sources/instr_fetch.vhd
  D:/DSD-II/proj1/sources/instr_mem.vhd
  D:/DSD-II/proj1/sources/mem_stage.vhd
  D:/DSD-II/proj1/sources/multiU.vhd
  D:/DSD-II/proj1/sources/mux.vhd
  D:/DSD-II/proj1/sources/orN.vhd
  D:/DSD-II/proj1/sources/pc_reg.vhd
  D:/DSD-II/proj1/sources/register_file.vhd
  D:/DSD-II/proj1/sources/ripplecarry_fa.vhd
  D:/DSD-II/proj1/sources/sllN.vhd
  D:/DSD-II/proj1/sources/sraN.vhd
  D:/DSD-II/proj1/sources/srlN.vhd
  D:/DSD-II/proj1/sources/wb_stage.vhd
  D:/DSD-II/proj1/sources/xorN.vhd
  D:/DSD-II/proj1/project_1/project_1.srcs/sources_1/new/microprocessor.vhd
}
read_ip -quiet D:/DSD-II/proj1/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/DSD-II/proj1/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/DSD-II/proj1/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/DSD-II/proj1/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]
set_property is_locked true [get_files D:/DSD-II/proj1/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top microprocessor -part xc7a35tcpg236-1


write_checkpoint -force -noxdef microprocessor.dcp

catch { report_utilization -file microprocessor_utilization_synth.rpt -pb microprocessor_utilization_synth.pb }