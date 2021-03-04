@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 3636f00db3a0471d9fe4c9c6a46236bc -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot execTB_behav xil_defaultlib.execTB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
