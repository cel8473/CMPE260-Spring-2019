@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto fdd2668e040d4b18a4452ccbdcbf07d1 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot aluTB32_behav xil_defaultlib.aluTB32 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
