# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7k70tfbv676-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/DSD-II/Exercise6/project_1/project_1.cache/wt [current_project]
set_property parent.project_path F:/DSD-II/Exercise6/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo f:/DSD-II/Exercise6/project_1/project_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  F:/DSD-II/Exercise6/Exercise6/Exercise6.srcs/sources_1/new/WriteBack_Stage.vhd
  F:/DSD-II/Exercise6/Exercise6/Exercise6.srcs/sim_1/new/WriteBack_StageTB.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}

synth_design -top WriteBack_stagetb -part xc7k70tfbv676-1 -mode out_of_context


write_checkpoint -force -noxdef WriteBack_stagetb.dcp

catch { report_utilization -file WriteBack_stagetb_utilization_synth.rpt -pb WriteBack_stagetb_utilization_synth.pb }
