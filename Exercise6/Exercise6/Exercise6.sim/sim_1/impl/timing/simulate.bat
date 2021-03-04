@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim Memory_StageTB_time_impl -key {Post-Implementation:sim_1:Timing:Memory_StageTB} -tclbatch Memory_StageTB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
