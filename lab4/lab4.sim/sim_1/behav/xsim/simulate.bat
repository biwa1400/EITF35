@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Fri Oct 28 13:52:51 +0200 2022
REM SW Build 3526262 on Mon Apr 18 15:48:16 MDT 2022
REM
REM IP Build 3524634 on Mon Apr 18 20:55:01 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim tb_TOP_TOP_behav -key {Behavioral:sim_1:Functional:tb_TOP_TOP} -tclbatch tb_TOP_TOP.tcl -view C:/study/vlsi/try1/EITF35/lab4/PE_TOP_DABIN.wcfg -view C:/study/vlsi/try1/EITF35/lab4/accumulator.wcfg -view C:/study/vlsi/try1/EITF35/lab4/RELU.wcfg -view C:/study/vlsi/try1/EITF35/lab4/POOLING.wcfg -view C:/study/vlsi/try1/EITF35/lab4/pooling_dabin_tb_behav.wcfg -view C:/study/vlsi/try1/EITF35/lab4/FC.wcfg -view C:/study/vlsi/try1/EITF35/lab4/tb_TOP_TOP_behav.wcfg -view C:/study/vlsi/try1/EITF35/lab4/conv_control.wcfg -view C:/study/vlsi/try1/EITF35/lab4/top.wcfg -log simulate.log"
call xsim  tb_TOP_TOP_behav -key {Behavioral:sim_1:Functional:tb_TOP_TOP} -tclbatch tb_TOP_TOP.tcl -view C:/study/vlsi/try1/EITF35/lab4/PE_TOP_DABIN.wcfg -view C:/study/vlsi/try1/EITF35/lab4/accumulator.wcfg -view C:/study/vlsi/try1/EITF35/lab4/RELU.wcfg -view C:/study/vlsi/try1/EITF35/lab4/POOLING.wcfg -view C:/study/vlsi/try1/EITF35/lab4/pooling_dabin_tb_behav.wcfg -view C:/study/vlsi/try1/EITF35/lab4/FC.wcfg -view C:/study/vlsi/try1/EITF35/lab4/tb_TOP_TOP_behav.wcfg -view C:/study/vlsi/try1/EITF35/lab4/conv_control.wcfg -view C:/study/vlsi/try1/EITF35/lab4/top.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
