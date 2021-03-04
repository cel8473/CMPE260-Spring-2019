// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Mar  5 17:16:29 2019
// Host        : FSL-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/DSD-II/Exercise3/Project_3/Project_3.sim/sim_1/impl/timing/if_tb_time_impl.v
// Design      : instruction_fetch
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module adder
   (PCNext_OBUF,
    address);
  output [27:0]PCNext_OBUF;
  input [27:0]address;

  wire [27:0]PCNext_OBUF;
  wire \PCNext_OBUF[12]_inst_i_1_n_0 ;
  wire \PCNext_OBUF[16]_inst_i_1_n_0 ;
  wire \PCNext_OBUF[20]_inst_i_1_n_0 ;
  wire \PCNext_OBUF[24]_inst_i_1_n_0 ;
  wire \PCNext_OBUF[4]_inst_i_1_n_0 ;
  wire \PCNext_OBUF[8]_inst_i_1_n_0 ;
  wire [27:0]address;
  wire [2:0]\NLW_PCNext_OBUF[12]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PCNext_OBUF[16]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PCNext_OBUF[20]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PCNext_OBUF[24]_inst_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_PCNext_OBUF[27]_inst_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_PCNext_OBUF[27]_inst_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_PCNext_OBUF[4]_inst_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_PCNext_OBUF[8]_inst_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \PCNext_OBUF[0]_inst_i_1 
       (.I0(address[0]),
        .O(PCNext_OBUF[0]));
  CARRY4 \PCNext_OBUF[12]_inst_i_1 
       (.CI(\PCNext_OBUF[8]_inst_i_1_n_0 ),
        .CO({\PCNext_OBUF[12]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[12]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[12:9]),
        .S(address[12:9]));
  CARRY4 \PCNext_OBUF[16]_inst_i_1 
       (.CI(\PCNext_OBUF[12]_inst_i_1_n_0 ),
        .CO({\PCNext_OBUF[16]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[16]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[16:13]),
        .S(address[16:13]));
  CARRY4 \PCNext_OBUF[20]_inst_i_1 
       (.CI(\PCNext_OBUF[16]_inst_i_1_n_0 ),
        .CO({\PCNext_OBUF[20]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[20]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[20:17]),
        .S(address[20:17]));
  CARRY4 \PCNext_OBUF[24]_inst_i_1 
       (.CI(\PCNext_OBUF[20]_inst_i_1_n_0 ),
        .CO({\PCNext_OBUF[24]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[24]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[24:21]),
        .S(address[24:21]));
  CARRY4 \PCNext_OBUF[27]_inst_i_1 
       (.CI(\PCNext_OBUF[24]_inst_i_1_n_0 ),
        .CO(\NLW_PCNext_OBUF[27]_inst_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_PCNext_OBUF[27]_inst_i_1_O_UNCONNECTED [3],PCNext_OBUF[27:25]}),
        .S({1'b0,address[27:25]}));
  CARRY4 \PCNext_OBUF[4]_inst_i_1 
       (.CI(1'b0),
        .CO({\PCNext_OBUF[4]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[4]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(address[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[4:1]),
        .S(address[4:1]));
  CARRY4 \PCNext_OBUF[8]_inst_i_1 
       (.CI(\PCNext_OBUF[4]_inst_i_1_n_0 ),
        .CO({\PCNext_OBUF[8]_inst_i_1_n_0 ,\NLW_PCNext_OBUF[8]_inst_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(PCNext_OBUF[8:5]),
        .S(address[8:5]));
endmodule

(* ECO_CHECKSUM = "5afb9b1a" *) 
(* NotValidForBitStream *)
module instruction_fetch
   (clk,
    rst,
    Jump,
    JumpAddr,
    PCSrc,
    PCNext,
    Instruction);
  input clk;
  input rst;
  input Jump;
  input [27:0]JumpAddr;
  input [27:0]PCSrc;
  output [27:0]PCNext;
  output [31:0]Instruction;

  wire [31:0]Instruction;
  wire [31:0]Instruction_OBUF;
  wire Jump;
  wire [27:0]JumpAddr;
  wire [27:0]JumpAddr_IBUF;
  wire Jump_IBUF;
  wire [27:0]PCNext;
  wire [27:0]PCNext_OBUF;
  wire [27:0]PCSrc;
  wire [27:0]PCSrc_IBUF;
  wire PC_comp_n_0;
  wire PC_comp_n_1;
  wire PC_comp_n_10;
  wire PC_comp_n_11;
  wire PC_comp_n_12;
  wire PC_comp_n_13;
  wire PC_comp_n_14;
  wire PC_comp_n_15;
  wire PC_comp_n_16;
  wire PC_comp_n_17;
  wire PC_comp_n_18;
  wire PC_comp_n_19;
  wire PC_comp_n_2;
  wire PC_comp_n_20;
  wire PC_comp_n_21;
  wire PC_comp_n_22;
  wire PC_comp_n_23;
  wire PC_comp_n_24;
  wire PC_comp_n_25;
  wire PC_comp_n_26;
  wire PC_comp_n_3;
  wire PC_comp_n_4;
  wire PC_comp_n_5;
  wire PC_comp_n_6;
  wire PC_comp_n_7;
  wire PC_comp_n_8;
  wire PC_comp_n_9;
  wire [0:0]address;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [27:0]pcAddr;
  wire rst;
  wire rst_IBUF;

initial begin
 $sdf_annotate("if_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \Instruction_OBUF[0]_inst 
       (.I(Instruction_OBUF[0]),
        .O(Instruction[0]));
  OBUF \Instruction_OBUF[10]_inst 
       (.I(Instruction_OBUF[10]),
        .O(Instruction[10]));
  OBUF \Instruction_OBUF[11]_inst 
       (.I(1'b0),
        .O(Instruction[11]));
  OBUF \Instruction_OBUF[12]_inst 
       (.I(Instruction_OBUF[12]),
        .O(Instruction[12]));
  OBUF \Instruction_OBUF[13]_inst 
       (.I(Instruction_OBUF[13]),
        .O(Instruction[13]));
  OBUF \Instruction_OBUF[14]_inst 
       (.I(Instruction_OBUF[14]),
        .O(Instruction[14]));
  OBUF \Instruction_OBUF[15]_inst 
       (.I(1'b0),
        .O(Instruction[15]));
  OBUF \Instruction_OBUF[16]_inst 
       (.I(Instruction_OBUF[16]),
        .O(Instruction[16]));
  OBUF \Instruction_OBUF[17]_inst 
       (.I(Instruction_OBUF[17]),
        .O(Instruction[17]));
  OBUF \Instruction_OBUF[18]_inst 
       (.I(Instruction_OBUF[18]),
        .O(Instruction[18]));
  OBUF \Instruction_OBUF[19]_inst 
       (.I(1'b0),
        .O(Instruction[19]));
  OBUF \Instruction_OBUF[1]_inst 
       (.I(Instruction_OBUF[1]),
        .O(Instruction[1]));
  OBUF \Instruction_OBUF[20]_inst 
       (.I(Instruction_OBUF[20]),
        .O(Instruction[20]));
  OBUF \Instruction_OBUF[21]_inst 
       (.I(Instruction_OBUF[9]),
        .O(Instruction[21]));
  OBUF \Instruction_OBUF[22]_inst 
       (.I(Instruction_OBUF[22]),
        .O(Instruction[22]));
  OBUF \Instruction_OBUF[23]_inst 
       (.I(1'b0),
        .O(Instruction[23]));
  OBUF \Instruction_OBUF[24]_inst 
       (.I(Instruction_OBUF[24]),
        .O(Instruction[24]));
  OBUF \Instruction_OBUF[25]_inst 
       (.I(Instruction_OBUF[25]),
        .O(Instruction[25]));
  OBUF \Instruction_OBUF[26]_inst 
       (.I(Instruction_OBUF[22]),
        .O(Instruction[26]));
  OBUF \Instruction_OBUF[27]_inst 
       (.I(1'b0),
        .O(Instruction[27]));
  OBUF \Instruction_OBUF[28]_inst 
       (.I(Instruction_OBUF[12]),
        .O(Instruction[28]));
  OBUF \Instruction_OBUF[29]_inst 
       (.I(Instruction_OBUF[17]),
        .O(Instruction[29]));
  OBUF \Instruction_OBUF[2]_inst 
       (.I(Instruction_OBUF[2]),
        .O(Instruction[2]));
  OBUF \Instruction_OBUF[30]_inst 
       (.I(Instruction_OBUF[30]),
        .O(Instruction[30]));
  OBUF \Instruction_OBUF[31]_inst 
       (.I(Instruction_OBUF[31]),
        .O(Instruction[31]));
  OBUF \Instruction_OBUF[3]_inst 
       (.I(Instruction_OBUF[3]),
        .O(Instruction[3]));
  OBUF \Instruction_OBUF[4]_inst 
       (.I(Instruction_OBUF[4]),
        .O(Instruction[4]));
  OBUF \Instruction_OBUF[5]_inst 
       (.I(Instruction_OBUF[5]),
        .O(Instruction[5]));
  OBUF \Instruction_OBUF[6]_inst 
       (.I(Instruction_OBUF[6]),
        .O(Instruction[6]));
  OBUF \Instruction_OBUF[7]_inst 
       (.I(Instruction_OBUF[7]),
        .O(Instruction[7]));
  OBUF \Instruction_OBUF[8]_inst 
       (.I(Instruction_OBUF[8]),
        .O(Instruction[8]));
  OBUF \Instruction_OBUF[9]_inst 
       (.I(Instruction_OBUF[9]),
        .O(Instruction[9]));
  IBUF \JumpAddr_IBUF[0]_inst 
       (.I(JumpAddr[0]),
        .O(JumpAddr_IBUF[0]));
  IBUF \JumpAddr_IBUF[10]_inst 
       (.I(JumpAddr[10]),
        .O(JumpAddr_IBUF[10]));
  IBUF \JumpAddr_IBUF[11]_inst 
       (.I(JumpAddr[11]),
        .O(JumpAddr_IBUF[11]));
  IBUF \JumpAddr_IBUF[12]_inst 
       (.I(JumpAddr[12]),
        .O(JumpAddr_IBUF[12]));
  IBUF \JumpAddr_IBUF[13]_inst 
       (.I(JumpAddr[13]),
        .O(JumpAddr_IBUF[13]));
  IBUF \JumpAddr_IBUF[14]_inst 
       (.I(JumpAddr[14]),
        .O(JumpAddr_IBUF[14]));
  IBUF \JumpAddr_IBUF[15]_inst 
       (.I(JumpAddr[15]),
        .O(JumpAddr_IBUF[15]));
  IBUF \JumpAddr_IBUF[16]_inst 
       (.I(JumpAddr[16]),
        .O(JumpAddr_IBUF[16]));
  IBUF \JumpAddr_IBUF[17]_inst 
       (.I(JumpAddr[17]),
        .O(JumpAddr_IBUF[17]));
  IBUF \JumpAddr_IBUF[18]_inst 
       (.I(JumpAddr[18]),
        .O(JumpAddr_IBUF[18]));
  IBUF \JumpAddr_IBUF[19]_inst 
       (.I(JumpAddr[19]),
        .O(JumpAddr_IBUF[19]));
  IBUF \JumpAddr_IBUF[1]_inst 
       (.I(JumpAddr[1]),
        .O(JumpAddr_IBUF[1]));
  IBUF \JumpAddr_IBUF[20]_inst 
       (.I(JumpAddr[20]),
        .O(JumpAddr_IBUF[20]));
  IBUF \JumpAddr_IBUF[21]_inst 
       (.I(JumpAddr[21]),
        .O(JumpAddr_IBUF[21]));
  IBUF \JumpAddr_IBUF[22]_inst 
       (.I(JumpAddr[22]),
        .O(JumpAddr_IBUF[22]));
  IBUF \JumpAddr_IBUF[23]_inst 
       (.I(JumpAddr[23]),
        .O(JumpAddr_IBUF[23]));
  IBUF \JumpAddr_IBUF[24]_inst 
       (.I(JumpAddr[24]),
        .O(JumpAddr_IBUF[24]));
  IBUF \JumpAddr_IBUF[25]_inst 
       (.I(JumpAddr[25]),
        .O(JumpAddr_IBUF[25]));
  IBUF \JumpAddr_IBUF[26]_inst 
       (.I(JumpAddr[26]),
        .O(JumpAddr_IBUF[26]));
  IBUF \JumpAddr_IBUF[27]_inst 
       (.I(JumpAddr[27]),
        .O(JumpAddr_IBUF[27]));
  IBUF \JumpAddr_IBUF[2]_inst 
       (.I(JumpAddr[2]),
        .O(JumpAddr_IBUF[2]));
  IBUF \JumpAddr_IBUF[3]_inst 
       (.I(JumpAddr[3]),
        .O(JumpAddr_IBUF[3]));
  IBUF \JumpAddr_IBUF[4]_inst 
       (.I(JumpAddr[4]),
        .O(JumpAddr_IBUF[4]));
  IBUF \JumpAddr_IBUF[5]_inst 
       (.I(JumpAddr[5]),
        .O(JumpAddr_IBUF[5]));
  IBUF \JumpAddr_IBUF[6]_inst 
       (.I(JumpAddr[6]),
        .O(JumpAddr_IBUF[6]));
  IBUF \JumpAddr_IBUF[7]_inst 
       (.I(JumpAddr[7]),
        .O(JumpAddr_IBUF[7]));
  IBUF \JumpAddr_IBUF[8]_inst 
       (.I(JumpAddr[8]),
        .O(JumpAddr_IBUF[8]));
  IBUF \JumpAddr_IBUF[9]_inst 
       (.I(JumpAddr[9]),
        .O(JumpAddr_IBUF[9]));
  IBUF Jump_IBUF_inst
       (.I(Jump),
        .O(Jump_IBUF));
  OBUF \PCNext_OBUF[0]_inst 
       (.I(PCNext_OBUF[0]),
        .O(PCNext[0]));
  OBUF \PCNext_OBUF[10]_inst 
       (.I(PCNext_OBUF[10]),
        .O(PCNext[10]));
  OBUF \PCNext_OBUF[11]_inst 
       (.I(PCNext_OBUF[11]),
        .O(PCNext[11]));
  OBUF \PCNext_OBUF[12]_inst 
       (.I(PCNext_OBUF[12]),
        .O(PCNext[12]));
  OBUF \PCNext_OBUF[13]_inst 
       (.I(PCNext_OBUF[13]),
        .O(PCNext[13]));
  OBUF \PCNext_OBUF[14]_inst 
       (.I(PCNext_OBUF[14]),
        .O(PCNext[14]));
  OBUF \PCNext_OBUF[15]_inst 
       (.I(PCNext_OBUF[15]),
        .O(PCNext[15]));
  OBUF \PCNext_OBUF[16]_inst 
       (.I(PCNext_OBUF[16]),
        .O(PCNext[16]));
  OBUF \PCNext_OBUF[17]_inst 
       (.I(PCNext_OBUF[17]),
        .O(PCNext[17]));
  OBUF \PCNext_OBUF[18]_inst 
       (.I(PCNext_OBUF[18]),
        .O(PCNext[18]));
  OBUF \PCNext_OBUF[19]_inst 
       (.I(PCNext_OBUF[19]),
        .O(PCNext[19]));
  OBUF \PCNext_OBUF[1]_inst 
       (.I(PCNext_OBUF[1]),
        .O(PCNext[1]));
  OBUF \PCNext_OBUF[20]_inst 
       (.I(PCNext_OBUF[20]),
        .O(PCNext[20]));
  OBUF \PCNext_OBUF[21]_inst 
       (.I(PCNext_OBUF[21]),
        .O(PCNext[21]));
  OBUF \PCNext_OBUF[22]_inst 
       (.I(PCNext_OBUF[22]),
        .O(PCNext[22]));
  OBUF \PCNext_OBUF[23]_inst 
       (.I(PCNext_OBUF[23]),
        .O(PCNext[23]));
  OBUF \PCNext_OBUF[24]_inst 
       (.I(PCNext_OBUF[24]),
        .O(PCNext[24]));
  OBUF \PCNext_OBUF[25]_inst 
       (.I(PCNext_OBUF[25]),
        .O(PCNext[25]));
  OBUF \PCNext_OBUF[26]_inst 
       (.I(PCNext_OBUF[26]),
        .O(PCNext[26]));
  OBUF \PCNext_OBUF[27]_inst 
       (.I(PCNext_OBUF[27]),
        .O(PCNext[27]));
  OBUF \PCNext_OBUF[2]_inst 
       (.I(PCNext_OBUF[2]),
        .O(PCNext[2]));
  OBUF \PCNext_OBUF[3]_inst 
       (.I(PCNext_OBUF[3]),
        .O(PCNext[3]));
  OBUF \PCNext_OBUF[4]_inst 
       (.I(PCNext_OBUF[4]),
        .O(PCNext[4]));
  OBUF \PCNext_OBUF[5]_inst 
       (.I(PCNext_OBUF[5]),
        .O(PCNext[5]));
  OBUF \PCNext_OBUF[6]_inst 
       (.I(PCNext_OBUF[6]),
        .O(PCNext[6]));
  OBUF \PCNext_OBUF[7]_inst 
       (.I(PCNext_OBUF[7]),
        .O(PCNext[7]));
  OBUF \PCNext_OBUF[8]_inst 
       (.I(PCNext_OBUF[8]),
        .O(PCNext[8]));
  OBUF \PCNext_OBUF[9]_inst 
       (.I(PCNext_OBUF[9]),
        .O(PCNext[9]));
  IBUF \PCSrc_IBUF[0]_inst 
       (.I(PCSrc[0]),
        .O(PCSrc_IBUF[0]));
  IBUF \PCSrc_IBUF[10]_inst 
       (.I(PCSrc[10]),
        .O(PCSrc_IBUF[10]));
  IBUF \PCSrc_IBUF[11]_inst 
       (.I(PCSrc[11]),
        .O(PCSrc_IBUF[11]));
  IBUF \PCSrc_IBUF[12]_inst 
       (.I(PCSrc[12]),
        .O(PCSrc_IBUF[12]));
  IBUF \PCSrc_IBUF[13]_inst 
       (.I(PCSrc[13]),
        .O(PCSrc_IBUF[13]));
  IBUF \PCSrc_IBUF[14]_inst 
       (.I(PCSrc[14]),
        .O(PCSrc_IBUF[14]));
  IBUF \PCSrc_IBUF[15]_inst 
       (.I(PCSrc[15]),
        .O(PCSrc_IBUF[15]));
  IBUF \PCSrc_IBUF[16]_inst 
       (.I(PCSrc[16]),
        .O(PCSrc_IBUF[16]));
  IBUF \PCSrc_IBUF[17]_inst 
       (.I(PCSrc[17]),
        .O(PCSrc_IBUF[17]));
  IBUF \PCSrc_IBUF[18]_inst 
       (.I(PCSrc[18]),
        .O(PCSrc_IBUF[18]));
  IBUF \PCSrc_IBUF[19]_inst 
       (.I(PCSrc[19]),
        .O(PCSrc_IBUF[19]));
  IBUF \PCSrc_IBUF[1]_inst 
       (.I(PCSrc[1]),
        .O(PCSrc_IBUF[1]));
  IBUF \PCSrc_IBUF[20]_inst 
       (.I(PCSrc[20]),
        .O(PCSrc_IBUF[20]));
  IBUF \PCSrc_IBUF[21]_inst 
       (.I(PCSrc[21]),
        .O(PCSrc_IBUF[21]));
  IBUF \PCSrc_IBUF[22]_inst 
       (.I(PCSrc[22]),
        .O(PCSrc_IBUF[22]));
  IBUF \PCSrc_IBUF[23]_inst 
       (.I(PCSrc[23]),
        .O(PCSrc_IBUF[23]));
  IBUF \PCSrc_IBUF[24]_inst 
       (.I(PCSrc[24]),
        .O(PCSrc_IBUF[24]));
  IBUF \PCSrc_IBUF[25]_inst 
       (.I(PCSrc[25]),
        .O(PCSrc_IBUF[25]));
  IBUF \PCSrc_IBUF[26]_inst 
       (.I(PCSrc[26]),
        .O(PCSrc_IBUF[26]));
  IBUF \PCSrc_IBUF[27]_inst 
       (.I(PCSrc[27]),
        .O(PCSrc_IBUF[27]));
  IBUF \PCSrc_IBUF[2]_inst 
       (.I(PCSrc[2]),
        .O(PCSrc_IBUF[2]));
  IBUF \PCSrc_IBUF[3]_inst 
       (.I(PCSrc[3]),
        .O(PCSrc_IBUF[3]));
  IBUF \PCSrc_IBUF[4]_inst 
       (.I(PCSrc[4]),
        .O(PCSrc_IBUF[4]));
  IBUF \PCSrc_IBUF[5]_inst 
       (.I(PCSrc[5]),
        .O(PCSrc_IBUF[5]));
  IBUF \PCSrc_IBUF[6]_inst 
       (.I(PCSrc[6]),
        .O(PCSrc_IBUF[6]));
  IBUF \PCSrc_IBUF[7]_inst 
       (.I(PCSrc[7]),
        .O(PCSrc_IBUF[7]));
  IBUF \PCSrc_IBUF[8]_inst 
       (.I(PCSrc[8]),
        .O(PCSrc_IBUF[8]));
  IBUF \PCSrc_IBUF[9]_inst 
       (.I(PCSrc[9]),
        .O(PCSrc_IBUF[9]));
  program_counter PC_comp
       (.AR(rst_IBUF),
        .D(pcAddr),
        .Instruction_OBUF({Instruction_OBUF[31:30],Instruction_OBUF[25:24],Instruction_OBUF[22],Instruction_OBUF[20],Instruction_OBUF[18:16],Instruction_OBUF[14:12],Instruction_OBUF[10:0]}),
        .\PCNext[25] ({PC_comp_n_0,PC_comp_n_1,PC_comp_n_2,PC_comp_n_3,PC_comp_n_4,PC_comp_n_5,PC_comp_n_6,PC_comp_n_7,PC_comp_n_8,PC_comp_n_9,PC_comp_n_10,PC_comp_n_11,PC_comp_n_12,PC_comp_n_13,PC_comp_n_14,PC_comp_n_15,PC_comp_n_16,PC_comp_n_17,PC_comp_n_18,PC_comp_n_19,PC_comp_n_20,PC_comp_n_21,PC_comp_n_22,PC_comp_n_23,PC_comp_n_24,PC_comp_n_25,PC_comp_n_26,address}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  adder add_comp
       (.PCNext_OBUF(PCNext_OBUF),
        .address({PC_comp_n_0,PC_comp_n_1,PC_comp_n_2,PC_comp_n_3,PC_comp_n_4,PC_comp_n_5,PC_comp_n_6,PC_comp_n_7,PC_comp_n_8,PC_comp_n_9,PC_comp_n_10,PC_comp_n_11,PC_comp_n_12,PC_comp_n_13,PC_comp_n_14,PC_comp_n_15,PC_comp_n_16,PC_comp_n_17,PC_comp_n_18,PC_comp_n_19,PC_comp_n_20,PC_comp_n_21,PC_comp_n_22,PC_comp_n_23,PC_comp_n_24,PC_comp_n_25,PC_comp_n_26,address}));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  mux2 mux_comp
       (.D(pcAddr),
        .JumpAddr_IBUF(JumpAddr_IBUF),
        .Jump_IBUF(Jump_IBUF),
        .PCSrc_IBUF(PCSrc_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module mux2
   (D,
    JumpAddr_IBUF,
    PCSrc_IBUF,
    Jump_IBUF);
  output [27:0]D;
  input [27:0]JumpAddr_IBUF;
  input [27:0]PCSrc_IBUF;
  input Jump_IBUF;

  wire [27:0]D;
  wire [27:0]JumpAddr_IBUF;
  wire Jump_IBUF;
  wire [27:0]PCSrc_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[10]_i_1 
       (.I0(JumpAddr_IBUF[10]),
        .I1(PCSrc_IBUF[10]),
        .I2(Jump_IBUF),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[11]_i_1 
       (.I0(JumpAddr_IBUF[11]),
        .I1(PCSrc_IBUF[11]),
        .I2(Jump_IBUF),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[12]_i_1 
       (.I0(JumpAddr_IBUF[12]),
        .I1(PCSrc_IBUF[12]),
        .I2(Jump_IBUF),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[13]_i_1 
       (.I0(JumpAddr_IBUF[13]),
        .I1(PCSrc_IBUF[13]),
        .I2(Jump_IBUF),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[14]_i_1 
       (.I0(JumpAddr_IBUF[14]),
        .I1(PCSrc_IBUF[14]),
        .I2(Jump_IBUF),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[15]_i_1 
       (.I0(JumpAddr_IBUF[15]),
        .I1(PCSrc_IBUF[15]),
        .I2(Jump_IBUF),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[16]_i_1 
       (.I0(JumpAddr_IBUF[16]),
        .I1(PCSrc_IBUF[16]),
        .I2(Jump_IBUF),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[17]_i_1 
       (.I0(JumpAddr_IBUF[17]),
        .I1(PCSrc_IBUF[17]),
        .I2(Jump_IBUF),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[18]_i_1 
       (.I0(JumpAddr_IBUF[18]),
        .I1(PCSrc_IBUF[18]),
        .I2(Jump_IBUF),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[19]_i_1 
       (.I0(JumpAddr_IBUF[19]),
        .I1(PCSrc_IBUF[19]),
        .I2(Jump_IBUF),
        .O(D[19]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[20]_i_1 
       (.I0(JumpAddr_IBUF[20]),
        .I1(PCSrc_IBUF[20]),
        .I2(Jump_IBUF),
        .O(D[20]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[21]_i_1 
       (.I0(JumpAddr_IBUF[21]),
        .I1(PCSrc_IBUF[21]),
        .I2(Jump_IBUF),
        .O(D[21]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[22]_i_1 
       (.I0(JumpAddr_IBUF[22]),
        .I1(PCSrc_IBUF[22]),
        .I2(Jump_IBUF),
        .O(D[22]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[23]_i_1 
       (.I0(JumpAddr_IBUF[23]),
        .I1(PCSrc_IBUF[23]),
        .I2(Jump_IBUF),
        .O(D[23]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[24]_i_1 
       (.I0(JumpAddr_IBUF[24]),
        .I1(PCSrc_IBUF[24]),
        .I2(Jump_IBUF),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[25]_i_1 
       (.I0(JumpAddr_IBUF[25]),
        .I1(PCSrc_IBUF[25]),
        .I2(Jump_IBUF),
        .O(D[25]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[26]_i_1 
       (.I0(JumpAddr_IBUF[26]),
        .I1(PCSrc_IBUF[26]),
        .I2(Jump_IBUF),
        .O(D[26]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address[27]_i_1 
       (.I0(JumpAddr_IBUF[27]),
        .I1(PCSrc_IBUF[27]),
        .I2(Jump_IBUF),
        .O(D[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[0]_i_1 
       (.I0(JumpAddr_IBUF[0]),
        .I1(PCSrc_IBUF[0]),
        .I2(Jump_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[1]_i_1 
       (.I0(JumpAddr_IBUF[1]),
        .I1(PCSrc_IBUF[1]),
        .I2(Jump_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[2]_i_1 
       (.I0(JumpAddr_IBUF[2]),
        .I1(PCSrc_IBUF[2]),
        .I2(Jump_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[3]_i_1 
       (.I0(JumpAddr_IBUF[3]),
        .I1(PCSrc_IBUF[3]),
        .I2(Jump_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[4]_i_1 
       (.I0(JumpAddr_IBUF[4]),
        .I1(PCSrc_IBUF[4]),
        .I2(Jump_IBUF),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[5]_i_1 
       (.I0(JumpAddr_IBUF[5]),
        .I1(PCSrc_IBUF[5]),
        .I2(Jump_IBUF),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[6]_i_1 
       (.I0(JumpAddr_IBUF[6]),
        .I1(PCSrc_IBUF[6]),
        .I2(Jump_IBUF),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[7]_i_1 
       (.I0(JumpAddr_IBUF[7]),
        .I1(PCSrc_IBUF[7]),
        .I2(Jump_IBUF),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[8]_i_1 
       (.I0(JumpAddr_IBUF[8]),
        .I1(PCSrc_IBUF[8]),
        .I2(Jump_IBUF),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \address_rep[9]_i_1 
       (.I0(JumpAddr_IBUF[9]),
        .I1(PCSrc_IBUF[9]),
        .I2(Jump_IBUF),
        .O(D[9]));
endmodule

module program_counter
   (\PCNext[25] ,
    Instruction_OBUF,
    D,
    clk_IBUF_BUFG,
    AR);
  output [27:0]\PCNext[25] ;
  output [22:0]Instruction_OBUF;
  input [27:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire [27:0]D;
  wire [22:0]Instruction_OBUF;
  wire \Instruction_OBUF[31]_inst_i_2_n_0 ;
  wire [27:0]\^PCNext[25] ;
  wire [27:1]address;
  wire \address_reg_rep_n_0_[0] ;
  wire \address_reg_rep_n_0_[1] ;
  wire \address_reg_rep_n_0_[2] ;
  wire \address_reg_rep_n_0_[3] ;
  wire \address_reg_rep_n_0_[4] ;
  wire \address_reg_rep_n_0_[5] ;
  wire \address_reg_rep_n_0_[6] ;
  wire \address_reg_rep_n_0_[7] ;
  wire \address_reg_rep_n_0_[8] ;
  wire \address_reg_rep_n_0_[9] ;
  wire clk_IBUF_BUFG;

  assign \PCNext[25] [27:1] = address;
  assign \PCNext[25] [0] = \^PCNext[25] [0];
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h07003800)) 
    \Instruction_OBUF[0]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\address_reg_rep_n_0_[2] ),
        .I2(\address_reg_rep_n_0_[3] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[0] ),
        .O(Instruction_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000444)) 
    \Instruction_OBUF[10]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[3] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[1] ),
        .I3(\address_reg_rep_n_0_[0] ),
        .I4(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[10]));
  LUT3 #(
    .INIT(8'h40)) 
    \Instruction_OBUF[13]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[3] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01950000)) 
    \Instruction_OBUF[14]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .O(Instruction_OBUF[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h05006000)) 
    \Instruction_OBUF[16]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[3] ),
        .O(Instruction_OBUF[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h019D0000)) 
    \Instruction_OBUF[18]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .O(Instruction_OBUF[16]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \Instruction_OBUF[1]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[3] ),
        .I3(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00002F00)) 
    \Instruction_OBUF[20]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[0] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[2] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[3] ),
        .O(Instruction_OBUF[17]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01B70000)) 
    \Instruction_OBUF[21]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .O(Instruction_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h01006000)) 
    \Instruction_OBUF[24]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[3] ),
        .O(Instruction_OBUF[19]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h01BF0000)) 
    \Instruction_OBUF[25]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .O(Instruction_OBUF[20]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h20000040)) 
    \Instruction_OBUF[26]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[3] ),
        .I2(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I3(\address_reg_rep_n_0_[0] ),
        .I4(\address_reg_rep_n_0_[1] ),
        .O(Instruction_OBUF[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h14F50000)) 
    \Instruction_OBUF[28]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .O(Instruction_OBUF[11]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h44040000)) 
    \Instruction_OBUF[29]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[3] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[1] ),
        .I3(\address_reg_rep_n_0_[0] ),
        .I4(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \Instruction_OBUF[2]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\address_reg_rep_n_0_[0] ),
        .I2(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \Instruction_OBUF[30]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[3] ),
        .I3(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \Instruction_OBUF[31]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\address_reg_rep_n_0_[0] ),
        .I2(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[22]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Instruction_OBUF[31]_inst_i_2 
       (.I0(\address_reg_rep_n_0_[6] ),
        .I1(\address_reg_rep_n_0_[4] ),
        .I2(\address_reg_rep_n_0_[8] ),
        .I3(\address_reg_rep_n_0_[9] ),
        .I4(\address_reg_rep_n_0_[5] ),
        .I5(\address_reg_rep_n_0_[7] ),
        .O(\Instruction_OBUF[31]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h04000300)) 
    \Instruction_OBUF[3]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[0] ),
        .I1(\address_reg_rep_n_0_[2] ),
        .I2(\address_reg_rep_n_0_[3] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[1] ),
        .O(Instruction_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00004D00)) 
    \Instruction_OBUF[4]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[0] ),
        .I2(\address_reg_rep_n_0_[1] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[3] ),
        .O(Instruction_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08080C4C)) 
    \Instruction_OBUF[5]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I2(\address_reg_rep_n_0_[3] ),
        .I3(\address_reg_rep_n_0_[0] ),
        .I4(\address_reg_rep_n_0_[1] ),
        .O(Instruction_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2010)) 
    \Instruction_OBUF[6]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[3] ),
        .I2(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I3(\address_reg_rep_n_0_[1] ),
        .O(Instruction_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Instruction_OBUF[7]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[1] ),
        .I1(\address_reg_rep_n_0_[0] ),
        .I2(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I3(\address_reg_rep_n_0_[3] ),
        .I4(\address_reg_rep_n_0_[2] ),
        .O(Instruction_OBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0100E000)) 
    \Instruction_OBUF[8]_inst_i_1 
       (.I0(\address_reg_rep_n_0_[2] ),
        .I1(\address_reg_rep_n_0_[1] ),
        .I2(\address_reg_rep_n_0_[0] ),
        .I3(\Instruction_OBUF[31]_inst_i_2_n_0 ),
        .I4(\address_reg_rep_n_0_[3] ),
        .O(Instruction_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\^PCNext[25] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[10]),
        .Q(address[10]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[11]),
        .Q(address[11]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[12]),
        .Q(address[12]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[13]),
        .Q(address[13]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[14]),
        .Q(address[14]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[15]),
        .Q(address[15]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[16]),
        .Q(address[16]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[17]),
        .Q(address[17]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[18]),
        .Q(address[18]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[19]),
        .Q(address[19]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(address[1]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[20]),
        .Q(address[20]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[21]),
        .Q(address[21]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[22]),
        .Q(address[22]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[23]),
        .Q(address[23]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[24]),
        .Q(address[24]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[25]),
        .Q(address[25]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[26]),
        .Q(address[26]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[27]),
        .Q(address[27]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(address[2]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(address[3]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(address[4]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(address[5]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(address[6]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(address[7]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(address[8]));
  FDCE #(
    .INIT(1'b0)) 
    \address_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(address[9]));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[0]),
        .Q(\address_reg_rep_n_0_[0] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[1]),
        .Q(\address_reg_rep_n_0_[1] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[2]),
        .Q(\address_reg_rep_n_0_[2] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[3]),
        .Q(\address_reg_rep_n_0_[3] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[4]),
        .Q(\address_reg_rep_n_0_[4] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[5]),
        .Q(\address_reg_rep_n_0_[5] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[6]),
        .Q(\address_reg_rep_n_0_[6] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[7]),
        .Q(\address_reg_rep_n_0_[7] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[8]),
        .Q(\address_reg_rep_n_0_[8] ));
  (* equivalent_register_removal = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \address_reg_rep[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D[9]),
        .Q(\address_reg_rep_n_0_[9] ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
