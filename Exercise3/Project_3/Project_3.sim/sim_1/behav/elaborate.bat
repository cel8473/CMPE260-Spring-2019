@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 333af23758cf47abaaf211841e0ea5a0 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot if_tb_behav xil_defaultlib.if_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
