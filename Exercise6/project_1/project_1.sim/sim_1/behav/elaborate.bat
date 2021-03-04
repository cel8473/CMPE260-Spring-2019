@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto e55a3592fd974f01bc89986ee7ef75ef -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot WriteBack_stagetb_behav xil_defaultlib.WriteBack_stagetb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
