@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 341a082127074a34817f35e5167c0b15 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot Memory_StageTB_behav xil_defaultlib.Memory_StageTB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
