@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim MIPS_tb_behav -key {Behavioral:sim_1:Functional:MIPS_tb} -tclbatch MIPS_tb.tcl -view D:/DSD-II/proj1 - Copy/project_1/microprocessor_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
