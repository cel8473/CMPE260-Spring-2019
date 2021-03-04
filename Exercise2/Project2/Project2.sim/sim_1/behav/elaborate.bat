@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 2051263948274bee9b9f606b93940ae8 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot regtb_behav xil_defaultlib.regtb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
