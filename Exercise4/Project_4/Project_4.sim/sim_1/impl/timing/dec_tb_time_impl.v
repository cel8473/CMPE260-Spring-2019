// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Feb 28 17:59:37 2019
// Host        : FSL-07 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/DSD-II/Exercise4/Project_4/Project_4.sim/sim_1/impl/timing/dec_tb_time_impl.v
// Design      : instr_decode
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "34401f88" *) 
(* NotValidForBitStream *)
module instr_decode
   (Instr,
    RegDataA,
    RegDataB,
    Jump,
    MemWr,
    MemRd,
    RegEnWb,
    JumpAddr,
    ALUOp,
    ValA,
    ValB,
    RegIdxA,
    RegIdxB,
    RegIdxWb);
  input [31:0]Instr;
  input [31:0]RegDataA;
  input [31:0]RegDataB;
  output Jump;
  output MemWr;
  output MemRd;
  output RegEnWb;
  output [27:0]JumpAddr;
  output [3:0]ALUOp;
  output [31:0]ValA;
  output [31:0]ValB;
  output [4:0]RegIdxA;
  output [4:0]RegIdxB;
  output [4:0]RegIdxWb;

  wire [3:0]ALUOp;
  wire [3:0]ALUOp_OBUF;
  wire \ALUOp_reg[0]_i_1_n_2 ;
  wire \ALUOp_reg[1]_i_1_n_2 ;
  wire \ALUOp_reg[2]_i_1_n_2 ;
  wire \ALUOp_reg[3]_i_1_n_2 ;
  wire [31:0]Instr;
  wire [31:0]Instr_IBUF;
  wire Jump;
  wire Jump07_out;
  wire [27:0]JumpAddr;
  wire Jump_OBUF;
  wire MemRd;
  wire MemRd_reg_i_1_n_2;
  wire MemWr;
  wire MemWr_OBUF;
  wire [31:0]RegDataA;
  wire [31:0]RegDataA_IBUF;
  wire RegEnWb;
  wire RegEnWb_OBUF;
  wire [4:0]RegIdxA;
  wire [4:0]RegIdxA_OBUF;
  wire [4:0]RegIdxB;
  wire [4:0]RegIdxWb;
  wire [4:0]RegIdxWb_OBUF;
  wire [31:0]ValA;
  wire [31:0]ValA_OBUF;
  wire [31:0]ValB;
  wire [16:0]ValB_OBUF;
  wire eqOp;
  wire [15:0]immed;
  wire leqOp2_in;
  wire n_0_5_BUFG;
  wire n_0_5_BUFG_inst_n_1;
  wire n_1_1_BUFG;
  wire n_1_1_BUFG_inst_n_2;
  wire [4:0]rs;
  wire [4:0]rt;
  wire [15:0]var;

initial begin
 $sdf_annotate("dec_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \ALUOp_OBUF[0]_inst 
       (.I(ALUOp_OBUF[0]),
        .O(ALUOp[0]));
  OBUF \ALUOp_OBUF[1]_inst 
       (.I(ALUOp_OBUF[1]),
        .O(ALUOp[1]));
  OBUF \ALUOp_OBUF[2]_inst 
       (.I(ALUOp_OBUF[2]),
        .O(ALUOp[2]));
  OBUF \ALUOp_OBUF[3]_inst 
       (.I(ALUOp_OBUF[3]),
        .O(ALUOp[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUOp_reg[0] 
       (.CLR(eqOp),
        .D(\ALUOp_reg[0]_i_1_n_2 ),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ALUOp_OBUF[0]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \ALUOp_reg[0]_i_1 
       (.I0(Instr_IBUF[26]),
        .I1(Instr_IBUF[31]),
        .I2(Instr_IBUF[27]),
        .I3(Instr_IBUF[30]),
        .I4(Instr_IBUF[28]),
        .I5(Instr_IBUF[29]),
        .O(\ALUOp_reg[0]_i_1_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUOp_reg[1] 
       (.CLR(eqOp),
        .D(\ALUOp_reg[1]_i_1_n_2 ),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ALUOp_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \ALUOp_reg[1]_i_1 
       (.I0(Instr_IBUF[30]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[29]),
        .I3(Instr_IBUF[31]),
        .I4(Instr_IBUF[26]),
        .O(\ALUOp_reg[1]_i_1_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUOp_reg[2] 
       (.CLR(eqOp),
        .D(\ALUOp_reg[2]_i_1_n_2 ),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ALUOp_OBUF[2]));
  LUT6 #(
    .INIT(64'h0008000100000080)) 
    \ALUOp_reg[2]_i_1 
       (.I0(Instr_IBUF[26]),
        .I1(Instr_IBUF[27]),
        .I2(Instr_IBUF[31]),
        .I3(Instr_IBUF[30]),
        .I4(Instr_IBUF[28]),
        .I5(Instr_IBUF[29]),
        .O(\ALUOp_reg[2]_i_1_n_2 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUOp_reg[3] 
       (.CLR(eqOp),
        .D(\ALUOp_reg[3]_i_1_n_2 ),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ALUOp_OBUF[3]));
  LUT6 #(
    .INIT(64'h00000000004000C0)) 
    \ALUOp_reg[3]_i_1 
       (.I0(Instr_IBUF[26]),
        .I1(Instr_IBUF[29]),
        .I2(Instr_IBUF[28]),
        .I3(Instr_IBUF[30]),
        .I4(Instr_IBUF[27]),
        .I5(Instr_IBUF[31]),
        .O(\ALUOp_reg[3]_i_1_n_2 ));
  IBUF \Instr_IBUF[0]_inst 
       (.I(Instr[0]),
        .O(Instr_IBUF[0]));
  IBUF \Instr_IBUF[10]_inst 
       (.I(Instr[10]),
        .O(Instr_IBUF[10]));
  IBUF \Instr_IBUF[11]_inst 
       (.I(Instr[11]),
        .O(Instr_IBUF[11]));
  IBUF \Instr_IBUF[12]_inst 
       (.I(Instr[12]),
        .O(Instr_IBUF[12]));
  IBUF \Instr_IBUF[13]_inst 
       (.I(Instr[13]),
        .O(Instr_IBUF[13]));
  IBUF \Instr_IBUF[14]_inst 
       (.I(Instr[14]),
        .O(Instr_IBUF[14]));
  IBUF \Instr_IBUF[15]_inst 
       (.I(Instr[15]),
        .O(Instr_IBUF[15]));
  IBUF \Instr_IBUF[16]_inst 
       (.I(Instr[16]),
        .O(Instr_IBUF[16]));
  IBUF \Instr_IBUF[17]_inst 
       (.I(Instr[17]),
        .O(Instr_IBUF[17]));
  IBUF \Instr_IBUF[18]_inst 
       (.I(Instr[18]),
        .O(Instr_IBUF[18]));
  IBUF \Instr_IBUF[19]_inst 
       (.I(Instr[19]),
        .O(Instr_IBUF[19]));
  IBUF \Instr_IBUF[1]_inst 
       (.I(Instr[1]),
        .O(Instr_IBUF[1]));
  IBUF \Instr_IBUF[20]_inst 
       (.I(Instr[20]),
        .O(Instr_IBUF[20]));
  IBUF \Instr_IBUF[21]_inst 
       (.I(Instr[21]),
        .O(Instr_IBUF[21]));
  IBUF \Instr_IBUF[22]_inst 
       (.I(Instr[22]),
        .O(Instr_IBUF[22]));
  IBUF \Instr_IBUF[23]_inst 
       (.I(Instr[23]),
        .O(Instr_IBUF[23]));
  IBUF \Instr_IBUF[24]_inst 
       (.I(Instr[24]),
        .O(Instr_IBUF[24]));
  IBUF \Instr_IBUF[25]_inst 
       (.I(Instr[25]),
        .O(Instr_IBUF[25]));
  IBUF \Instr_IBUF[26]_inst 
       (.I(Instr[26]),
        .O(Instr_IBUF[26]));
  IBUF \Instr_IBUF[27]_inst 
       (.I(Instr[27]),
        .O(Instr_IBUF[27]));
  IBUF \Instr_IBUF[28]_inst 
       (.I(Instr[28]),
        .O(Instr_IBUF[28]));
  IBUF \Instr_IBUF[29]_inst 
       (.I(Instr[29]),
        .O(Instr_IBUF[29]));
  IBUF \Instr_IBUF[2]_inst 
       (.I(Instr[2]),
        .O(Instr_IBUF[2]));
  IBUF \Instr_IBUF[30]_inst 
       (.I(Instr[30]),
        .O(Instr_IBUF[30]));
  IBUF \Instr_IBUF[31]_inst 
       (.I(Instr[31]),
        .O(Instr_IBUF[31]));
  IBUF \Instr_IBUF[3]_inst 
       (.I(Instr[3]),
        .O(Instr_IBUF[3]));
  IBUF \Instr_IBUF[4]_inst 
       (.I(Instr[4]),
        .O(Instr_IBUF[4]));
  IBUF \Instr_IBUF[5]_inst 
       (.I(Instr[5]),
        .O(Instr_IBUF[5]));
  IBUF \Instr_IBUF[6]_inst 
       (.I(Instr[6]),
        .O(Instr_IBUF[6]));
  IBUF \Instr_IBUF[7]_inst 
       (.I(Instr[7]),
        .O(Instr_IBUF[7]));
  IBUF \Instr_IBUF[8]_inst 
       (.I(Instr[8]),
        .O(Instr_IBUF[8]));
  IBUF \Instr_IBUF[9]_inst 
       (.I(Instr[9]),
        .O(Instr_IBUF[9]));
  OBUF \JumpAddr_OBUF[0]_inst 
       (.I(1'b0),
        .O(JumpAddr[0]));
  OBUF \JumpAddr_OBUF[10]_inst 
       (.I(1'b0),
        .O(JumpAddr[10]));
  OBUF \JumpAddr_OBUF[11]_inst 
       (.I(1'b0),
        .O(JumpAddr[11]));
  OBUF \JumpAddr_OBUF[12]_inst 
       (.I(1'b0),
        .O(JumpAddr[12]));
  OBUF \JumpAddr_OBUF[13]_inst 
       (.I(1'b0),
        .O(JumpAddr[13]));
  OBUF \JumpAddr_OBUF[14]_inst 
       (.I(1'b0),
        .O(JumpAddr[14]));
  OBUF \JumpAddr_OBUF[15]_inst 
       (.I(1'b0),
        .O(JumpAddr[15]));
  OBUF \JumpAddr_OBUF[16]_inst 
       (.I(1'b0),
        .O(JumpAddr[16]));
  OBUF \JumpAddr_OBUF[17]_inst 
       (.I(1'b0),
        .O(JumpAddr[17]));
  OBUF \JumpAddr_OBUF[18]_inst 
       (.I(1'b0),
        .O(JumpAddr[18]));
  OBUF \JumpAddr_OBUF[19]_inst 
       (.I(1'b0),
        .O(JumpAddr[19]));
  OBUF \JumpAddr_OBUF[1]_inst 
       (.I(1'b0),
        .O(JumpAddr[1]));
  OBUF \JumpAddr_OBUF[20]_inst 
       (.I(1'b0),
        .O(JumpAddr[20]));
  OBUF \JumpAddr_OBUF[21]_inst 
       (.I(1'b0),
        .O(JumpAddr[21]));
  OBUF \JumpAddr_OBUF[22]_inst 
       (.I(1'b0),
        .O(JumpAddr[22]));
  OBUF \JumpAddr_OBUF[23]_inst 
       (.I(1'b0),
        .O(JumpAddr[23]));
  OBUF \JumpAddr_OBUF[24]_inst 
       (.I(1'b0),
        .O(JumpAddr[24]));
  OBUF \JumpAddr_OBUF[25]_inst 
       (.I(1'b0),
        .O(JumpAddr[25]));
  OBUF \JumpAddr_OBUF[26]_inst 
       (.I(1'b0),
        .O(JumpAddr[26]));
  OBUF \JumpAddr_OBUF[27]_inst 
       (.I(1'b0),
        .O(JumpAddr[27]));
  OBUF \JumpAddr_OBUF[2]_inst 
       (.I(1'b0),
        .O(JumpAddr[2]));
  OBUF \JumpAddr_OBUF[3]_inst 
       (.I(1'b0),
        .O(JumpAddr[3]));
  OBUF \JumpAddr_OBUF[4]_inst 
       (.I(1'b0),
        .O(JumpAddr[4]));
  OBUF \JumpAddr_OBUF[5]_inst 
       (.I(1'b0),
        .O(JumpAddr[5]));
  OBUF \JumpAddr_OBUF[6]_inst 
       (.I(1'b0),
        .O(JumpAddr[6]));
  OBUF \JumpAddr_OBUF[7]_inst 
       (.I(1'b0),
        .O(JumpAddr[7]));
  OBUF \JumpAddr_OBUF[8]_inst 
       (.I(1'b0),
        .O(JumpAddr[8]));
  OBUF \JumpAddr_OBUF[9]_inst 
       (.I(1'b0),
        .O(JumpAddr[9]));
  OBUF Jump_OBUF_inst
       (.I(Jump_OBUF),
        .O(Jump));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    Jump_reg
       (.CLR(n_0_5_BUFG),
        .D(Jump07_out),
        .G(Jump07_out),
        .GE(1'b1),
        .Q(Jump_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    Jump_reg_i_1
       (.I0(Instr_IBUF[29]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[30]),
        .I3(Instr_IBUF[31]),
        .O(Jump07_out));
  OBUF MemRd_OBUF_inst
       (.I(RegEnWb_OBUF),
        .O(MemRd));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    MemRd_reg
       (.CLR(eqOp),
        .D(MemRd_reg_i_1_n_2),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegEnWb_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0F10)) 
    MemRd_reg_i_1
       (.I0(Instr_IBUF[29]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[31]),
        .I3(Instr_IBUF[30]),
        .O(MemRd_reg_i_1_n_2));
  OBUF MemWr_OBUF_inst
       (.I(MemWr_OBUF),
        .O(MemWr));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    MemWr_reg
       (.CLR(eqOp),
        .D(leqOp2_in),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(MemWr_OBUF));
  LUT2 #(
    .INIT(4'h1)) 
    MemWr_reg_i_1
       (.I0(Instr_IBUF[30]),
        .I1(Instr_IBUF[31]),
        .O(leqOp2_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    MemWr_reg_i_2
       (.I0(Instr_IBUF[30]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[29]),
        .I3(Instr_IBUF[31]),
        .I4(Instr_IBUF[26]),
        .I5(Instr_IBUF[27]),
        .O(eqOp));
  IBUF \RegDataA_IBUF[0]_inst 
       (.I(RegDataA[0]),
        .O(RegDataA_IBUF[0]));
  IBUF \RegDataA_IBUF[10]_inst 
       (.I(RegDataA[10]),
        .O(RegDataA_IBUF[10]));
  IBUF \RegDataA_IBUF[11]_inst 
       (.I(RegDataA[11]),
        .O(RegDataA_IBUF[11]));
  IBUF \RegDataA_IBUF[12]_inst 
       (.I(RegDataA[12]),
        .O(RegDataA_IBUF[12]));
  IBUF \RegDataA_IBUF[13]_inst 
       (.I(RegDataA[13]),
        .O(RegDataA_IBUF[13]));
  IBUF \RegDataA_IBUF[14]_inst 
       (.I(RegDataA[14]),
        .O(RegDataA_IBUF[14]));
  IBUF \RegDataA_IBUF[15]_inst 
       (.I(RegDataA[15]),
        .O(RegDataA_IBUF[15]));
  IBUF \RegDataA_IBUF[16]_inst 
       (.I(RegDataA[16]),
        .O(RegDataA_IBUF[16]));
  IBUF \RegDataA_IBUF[17]_inst 
       (.I(RegDataA[17]),
        .O(RegDataA_IBUF[17]));
  IBUF \RegDataA_IBUF[18]_inst 
       (.I(RegDataA[18]),
        .O(RegDataA_IBUF[18]));
  IBUF \RegDataA_IBUF[19]_inst 
       (.I(RegDataA[19]),
        .O(RegDataA_IBUF[19]));
  IBUF \RegDataA_IBUF[1]_inst 
       (.I(RegDataA[1]),
        .O(RegDataA_IBUF[1]));
  IBUF \RegDataA_IBUF[20]_inst 
       (.I(RegDataA[20]),
        .O(RegDataA_IBUF[20]));
  IBUF \RegDataA_IBUF[21]_inst 
       (.I(RegDataA[21]),
        .O(RegDataA_IBUF[21]));
  IBUF \RegDataA_IBUF[22]_inst 
       (.I(RegDataA[22]),
        .O(RegDataA_IBUF[22]));
  IBUF \RegDataA_IBUF[23]_inst 
       (.I(RegDataA[23]),
        .O(RegDataA_IBUF[23]));
  IBUF \RegDataA_IBUF[24]_inst 
       (.I(RegDataA[24]),
        .O(RegDataA_IBUF[24]));
  IBUF \RegDataA_IBUF[25]_inst 
       (.I(RegDataA[25]),
        .O(RegDataA_IBUF[25]));
  IBUF \RegDataA_IBUF[26]_inst 
       (.I(RegDataA[26]),
        .O(RegDataA_IBUF[26]));
  IBUF \RegDataA_IBUF[27]_inst 
       (.I(RegDataA[27]),
        .O(RegDataA_IBUF[27]));
  IBUF \RegDataA_IBUF[28]_inst 
       (.I(RegDataA[28]),
        .O(RegDataA_IBUF[28]));
  IBUF \RegDataA_IBUF[29]_inst 
       (.I(RegDataA[29]),
        .O(RegDataA_IBUF[29]));
  IBUF \RegDataA_IBUF[2]_inst 
       (.I(RegDataA[2]),
        .O(RegDataA_IBUF[2]));
  IBUF \RegDataA_IBUF[30]_inst 
       (.I(RegDataA[30]),
        .O(RegDataA_IBUF[30]));
  IBUF \RegDataA_IBUF[31]_inst 
       (.I(RegDataA[31]),
        .O(RegDataA_IBUF[31]));
  IBUF \RegDataA_IBUF[3]_inst 
       (.I(RegDataA[3]),
        .O(RegDataA_IBUF[3]));
  IBUF \RegDataA_IBUF[4]_inst 
       (.I(RegDataA[4]),
        .O(RegDataA_IBUF[4]));
  IBUF \RegDataA_IBUF[5]_inst 
       (.I(RegDataA[5]),
        .O(RegDataA_IBUF[5]));
  IBUF \RegDataA_IBUF[6]_inst 
       (.I(RegDataA[6]),
        .O(RegDataA_IBUF[6]));
  IBUF \RegDataA_IBUF[7]_inst 
       (.I(RegDataA[7]),
        .O(RegDataA_IBUF[7]));
  IBUF \RegDataA_IBUF[8]_inst 
       (.I(RegDataA[8]),
        .O(RegDataA_IBUF[8]));
  IBUF \RegDataA_IBUF[9]_inst 
       (.I(RegDataA[9]),
        .O(RegDataA_IBUF[9]));
  OBUF RegEnWb_OBUF_inst
       (.I(RegEnWb_OBUF),
        .O(RegEnWb));
  OBUF \RegIdxA_OBUF[0]_inst 
       (.I(RegIdxA_OBUF[0]),
        .O(RegIdxA[0]));
  OBUF \RegIdxA_OBUF[1]_inst 
       (.I(RegIdxA_OBUF[1]),
        .O(RegIdxA[1]));
  OBUF \RegIdxA_OBUF[2]_inst 
       (.I(RegIdxA_OBUF[2]),
        .O(RegIdxA[2]));
  OBUF \RegIdxA_OBUF[3]_inst 
       (.I(RegIdxA_OBUF[3]),
        .O(RegIdxA[3]));
  OBUF \RegIdxA_OBUF[4]_inst 
       (.I(RegIdxA_OBUF[4]),
        .O(RegIdxA[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxA_reg[0] 
       (.CLR(eqOp),
        .D(rs[0]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxA_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxA_reg[1] 
       (.CLR(eqOp),
        .D(rs[1]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxA_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxA_reg[2] 
       (.CLR(eqOp),
        .D(rs[2]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxA_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxA_reg[3] 
       (.CLR(eqOp),
        .D(rs[3]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxA_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxA_reg[4] 
       (.CLR(eqOp),
        .D(rs[4]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxA_OBUF[4]));
  OBUF \RegIdxB_OBUF[0]_inst 
       (.I(1'b0),
        .O(RegIdxB[0]));
  OBUF \RegIdxB_OBUF[1]_inst 
       (.I(1'b0),
        .O(RegIdxB[1]));
  OBUF \RegIdxB_OBUF[2]_inst 
       (.I(1'b0),
        .O(RegIdxB[2]));
  OBUF \RegIdxB_OBUF[3]_inst 
       (.I(1'b0),
        .O(RegIdxB[3]));
  OBUF \RegIdxB_OBUF[4]_inst 
       (.I(1'b0),
        .O(RegIdxB[4]));
  OBUF \RegIdxWb_OBUF[0]_inst 
       (.I(RegIdxWb_OBUF[0]),
        .O(RegIdxWb[0]));
  OBUF \RegIdxWb_OBUF[1]_inst 
       (.I(RegIdxWb_OBUF[1]),
        .O(RegIdxWb[1]));
  OBUF \RegIdxWb_OBUF[2]_inst 
       (.I(RegIdxWb_OBUF[2]),
        .O(RegIdxWb[2]));
  OBUF \RegIdxWb_OBUF[3]_inst 
       (.I(RegIdxWb_OBUF[3]),
        .O(RegIdxWb[3]));
  OBUF \RegIdxWb_OBUF[4]_inst 
       (.I(RegIdxWb_OBUF[4]),
        .O(RegIdxWb[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxWb_reg[0] 
       (.CLR(eqOp),
        .D(rt[0]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxWb_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxWb_reg[1] 
       (.CLR(eqOp),
        .D(rt[1]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxWb_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxWb_reg[2] 
       (.CLR(eqOp),
        .D(rt[2]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxWb_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxWb_reg[3] 
       (.CLR(eqOp),
        .D(rt[3]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxWb_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \RegIdxWb_reg[4] 
       (.CLR(eqOp),
        .D(rt[4]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(RegIdxWb_OBUF[4]));
  OBUF \ValA_OBUF[0]_inst 
       (.I(ValA_OBUF[0]),
        .O(ValA[0]));
  OBUF \ValA_OBUF[10]_inst 
       (.I(ValA_OBUF[10]),
        .O(ValA[10]));
  OBUF \ValA_OBUF[11]_inst 
       (.I(ValA_OBUF[11]),
        .O(ValA[11]));
  OBUF \ValA_OBUF[12]_inst 
       (.I(ValA_OBUF[12]),
        .O(ValA[12]));
  OBUF \ValA_OBUF[13]_inst 
       (.I(ValA_OBUF[13]),
        .O(ValA[13]));
  OBUF \ValA_OBUF[14]_inst 
       (.I(ValA_OBUF[14]),
        .O(ValA[14]));
  OBUF \ValA_OBUF[15]_inst 
       (.I(ValA_OBUF[15]),
        .O(ValA[15]));
  OBUF \ValA_OBUF[16]_inst 
       (.I(ValA_OBUF[16]),
        .O(ValA[16]));
  OBUF \ValA_OBUF[17]_inst 
       (.I(ValA_OBUF[17]),
        .O(ValA[17]));
  OBUF \ValA_OBUF[18]_inst 
       (.I(ValA_OBUF[18]),
        .O(ValA[18]));
  OBUF \ValA_OBUF[19]_inst 
       (.I(ValA_OBUF[19]),
        .O(ValA[19]));
  OBUF \ValA_OBUF[1]_inst 
       (.I(ValA_OBUF[1]),
        .O(ValA[1]));
  OBUF \ValA_OBUF[20]_inst 
       (.I(ValA_OBUF[20]),
        .O(ValA[20]));
  OBUF \ValA_OBUF[21]_inst 
       (.I(ValA_OBUF[21]),
        .O(ValA[21]));
  OBUF \ValA_OBUF[22]_inst 
       (.I(ValA_OBUF[22]),
        .O(ValA[22]));
  OBUF \ValA_OBUF[23]_inst 
       (.I(ValA_OBUF[23]),
        .O(ValA[23]));
  OBUF \ValA_OBUF[24]_inst 
       (.I(ValA_OBUF[24]),
        .O(ValA[24]));
  OBUF \ValA_OBUF[25]_inst 
       (.I(ValA_OBUF[25]),
        .O(ValA[25]));
  OBUF \ValA_OBUF[26]_inst 
       (.I(ValA_OBUF[26]),
        .O(ValA[26]));
  OBUF \ValA_OBUF[27]_inst 
       (.I(ValA_OBUF[27]),
        .O(ValA[27]));
  OBUF \ValA_OBUF[28]_inst 
       (.I(ValA_OBUF[28]),
        .O(ValA[28]));
  OBUF \ValA_OBUF[29]_inst 
       (.I(ValA_OBUF[29]),
        .O(ValA[29]));
  OBUF \ValA_OBUF[2]_inst 
       (.I(ValA_OBUF[2]),
        .O(ValA[2]));
  OBUF \ValA_OBUF[30]_inst 
       (.I(ValA_OBUF[30]),
        .O(ValA[30]));
  OBUF \ValA_OBUF[31]_inst 
       (.I(ValA_OBUF[31]),
        .O(ValA[31]));
  OBUF \ValA_OBUF[3]_inst 
       (.I(ValA_OBUF[3]),
        .O(ValA[3]));
  OBUF \ValA_OBUF[4]_inst 
       (.I(ValA_OBUF[4]),
        .O(ValA[4]));
  OBUF \ValA_OBUF[5]_inst 
       (.I(ValA_OBUF[5]),
        .O(ValA[5]));
  OBUF \ValA_OBUF[6]_inst 
       (.I(ValA_OBUF[6]),
        .O(ValA[6]));
  OBUF \ValA_OBUF[7]_inst 
       (.I(ValA_OBUF[7]),
        .O(ValA[7]));
  OBUF \ValA_OBUF[8]_inst 
       (.I(ValA_OBUF[8]),
        .O(ValA[8]));
  OBUF \ValA_OBUF[9]_inst 
       (.I(ValA_OBUF[9]),
        .O(ValA[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[0] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[0]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[10] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[10]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[11] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[11]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[12] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[12]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[13] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[13]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[14] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[14]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[15] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[15]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[16] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[16]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[17] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[17]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[17]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[18] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[18]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[18]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[19] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[19]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[19]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[1] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[1]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[20] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[20]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[20]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[21] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[21]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[21]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[22] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[22]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[22]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[23] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[23]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[23]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[24] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[24]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[24]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[25] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[25]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[25]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[26] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[26]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[26]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[27] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[27]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[27]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[28] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[28]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[28]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[29] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[29]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[29]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[2] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[2]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[30] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[30]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[30]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[31] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[31]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[31]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[3] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[3]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[4] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[4]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[5] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[5]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[6] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[6]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[7] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[7]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[8] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[8]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValA_reg[9] 
       (.CLR(eqOp),
        .D(RegDataA_IBUF[9]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValA_OBUF[9]));
  OBUF \ValB_OBUF[0]_inst 
       (.I(ValB_OBUF[0]),
        .O(ValB[0]));
  OBUF \ValB_OBUF[10]_inst 
       (.I(ValB_OBUF[10]),
        .O(ValB[10]));
  OBUF \ValB_OBUF[11]_inst 
       (.I(ValB_OBUF[11]),
        .O(ValB[11]));
  OBUF \ValB_OBUF[12]_inst 
       (.I(ValB_OBUF[12]),
        .O(ValB[12]));
  OBUF \ValB_OBUF[13]_inst 
       (.I(ValB_OBUF[13]),
        .O(ValB[13]));
  OBUF \ValB_OBUF[14]_inst 
       (.I(ValB_OBUF[14]),
        .O(ValB[14]));
  OBUF \ValB_OBUF[15]_inst 
       (.I(ValB_OBUF[15]),
        .O(ValB[15]));
  OBUF \ValB_OBUF[16]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[16]));
  OBUF \ValB_OBUF[17]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[17]));
  OBUF \ValB_OBUF[18]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[18]));
  OBUF \ValB_OBUF[19]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[19]));
  OBUF \ValB_OBUF[1]_inst 
       (.I(ValB_OBUF[1]),
        .O(ValB[1]));
  OBUF \ValB_OBUF[20]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[20]));
  OBUF \ValB_OBUF[21]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[21]));
  OBUF \ValB_OBUF[22]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[22]));
  OBUF \ValB_OBUF[23]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[23]));
  OBUF \ValB_OBUF[24]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[24]));
  OBUF \ValB_OBUF[25]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[25]));
  OBUF \ValB_OBUF[26]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[26]));
  OBUF \ValB_OBUF[27]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[27]));
  OBUF \ValB_OBUF[28]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[28]));
  OBUF \ValB_OBUF[29]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[29]));
  OBUF \ValB_OBUF[2]_inst 
       (.I(ValB_OBUF[2]),
        .O(ValB[2]));
  OBUF \ValB_OBUF[30]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[30]));
  OBUF \ValB_OBUF[31]_inst 
       (.I(ValB_OBUF[16]),
        .O(ValB[31]));
  OBUF \ValB_OBUF[3]_inst 
       (.I(ValB_OBUF[3]),
        .O(ValB[3]));
  OBUF \ValB_OBUF[4]_inst 
       (.I(ValB_OBUF[4]),
        .O(ValB[4]));
  OBUF \ValB_OBUF[5]_inst 
       (.I(ValB_OBUF[5]),
        .O(ValB[5]));
  OBUF \ValB_OBUF[6]_inst 
       (.I(ValB_OBUF[6]),
        .O(ValB[6]));
  OBUF \ValB_OBUF[7]_inst 
       (.I(ValB_OBUF[7]),
        .O(ValB[7]));
  OBUF \ValB_OBUF[8]_inst 
       (.I(ValB_OBUF[8]),
        .O(ValB[8]));
  OBUF \ValB_OBUF[9]_inst 
       (.I(ValB_OBUF[9]),
        .O(ValB[9]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[0] 
       (.CLR(eqOp),
        .D(var[0]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[0]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[10] 
       (.CLR(eqOp),
        .D(var[10]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[10]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[11] 
       (.CLR(eqOp),
        .D(var[11]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[11]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[12] 
       (.CLR(eqOp),
        .D(var[12]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[12]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[13] 
       (.CLR(eqOp),
        .D(var[13]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[13]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[14] 
       (.CLR(eqOp),
        .D(var[14]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[14]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[15] 
       (.CLR(eqOp),
        .D(var[15]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[15]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[1] 
       (.CLR(eqOp),
        .D(var[1]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[2] 
       (.CLR(eqOp),
        .D(var[2]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[31] 
       (.CLR(eqOp),
        .D(1'b1),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[16]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[3] 
       (.CLR(eqOp),
        .D(var[3]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[4] 
       (.CLR(eqOp),
        .D(var[4]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[4]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[5] 
       (.CLR(eqOp),
        .D(var[5]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[5]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[6] 
       (.CLR(eqOp),
        .D(var[6]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[6]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[7] 
       (.CLR(eqOp),
        .D(var[7]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[7]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[8] 
       (.CLR(eqOp),
        .D(var[8]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[8]));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ValB_reg[9] 
       (.CLR(eqOp),
        .D(var[9]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(ValB_OBUF[9]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[0] 
       (.CLR(1'b0),
        .D(Instr_IBUF[0]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[10] 
       (.CLR(1'b0),
        .D(Instr_IBUF[10]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[11] 
       (.CLR(1'b0),
        .D(Instr_IBUF[11]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[12] 
       (.CLR(1'b0),
        .D(Instr_IBUF[12]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[13] 
       (.CLR(1'b0),
        .D(Instr_IBUF[13]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[14] 
       (.CLR(1'b0),
        .D(Instr_IBUF[14]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[15] 
       (.CLR(1'b0),
        .D(Instr_IBUF[15]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[1] 
       (.CLR(1'b0),
        .D(Instr_IBUF[1]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[2] 
       (.CLR(1'b0),
        .D(Instr_IBUF[2]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[3] 
       (.CLR(1'b0),
        .D(Instr_IBUF[3]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[4] 
       (.CLR(1'b0),
        .D(Instr_IBUF[4]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[5] 
       (.CLR(1'b0),
        .D(Instr_IBUF[5]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[6] 
       (.CLR(1'b0),
        .D(Instr_IBUF[6]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[7] 
       (.CLR(1'b0),
        .D(Instr_IBUF[7]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[8] 
       (.CLR(1'b0),
        .D(Instr_IBUF[8]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \immed_reg[9] 
       (.CLR(1'b0),
        .D(Instr_IBUF[9]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(immed[9]));
  BUFG n_0_5_BUFG_inst
       (.I(n_0_5_BUFG_inst_n_1),
        .O(n_0_5_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01FF)) 
    n_0_5_BUFG_inst_i_1
       (.I0(Instr_IBUF[29]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[30]),
        .I3(Instr_IBUF[31]),
        .O(n_0_5_BUFG_inst_n_1));
  BUFG n_1_1_BUFG_inst
       (.I(n_1_1_BUFG_inst_n_2),
        .O(n_1_1_BUFG));
  LUT6 #(
    .INIT(64'h01FF01FF01FF01FE)) 
    n_1_1_BUFG_inst_i_1
       (.I0(Instr_IBUF[30]),
        .I1(Instr_IBUF[28]),
        .I2(Instr_IBUF[29]),
        .I3(Instr_IBUF[31]),
        .I4(Instr_IBUF[26]),
        .I5(Instr_IBUF[27]),
        .O(n_1_1_BUFG_inst_n_2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[0] 
       (.CLR(1'b0),
        .D(Instr_IBUF[21]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rs[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[1] 
       (.CLR(1'b0),
        .D(Instr_IBUF[22]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rs[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[2] 
       (.CLR(1'b0),
        .D(Instr_IBUF[23]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rs[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[3] 
       (.CLR(1'b0),
        .D(Instr_IBUF[24]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rs[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rs_reg[4] 
       (.CLR(1'b0),
        .D(Instr_IBUF[25]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rs[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rt_reg[0] 
       (.CLR(1'b0),
        .D(Instr_IBUF[16]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rt[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rt_reg[1] 
       (.CLR(1'b0),
        .D(Instr_IBUF[17]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rt[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rt_reg[2] 
       (.CLR(1'b0),
        .D(Instr_IBUF[18]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rt[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rt_reg[3] 
       (.CLR(1'b0),
        .D(Instr_IBUF[19]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rt[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \rt_reg[4] 
       (.CLR(1'b0),
        .D(Instr_IBUF[20]),
        .G(n_0_5_BUFG),
        .GE(1'b1),
        .Q(rt[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[0] 
       (.CLR(1'b0),
        .D(immed[0]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[10] 
       (.CLR(1'b0),
        .D(immed[10]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[10]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[11] 
       (.CLR(1'b0),
        .D(immed[11]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[11]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[12] 
       (.CLR(1'b0),
        .D(immed[12]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[12]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[13] 
       (.CLR(1'b0),
        .D(immed[13]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[13]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[14] 
       (.CLR(1'b0),
        .D(immed[14]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[14]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[15] 
       (.CLR(1'b0),
        .D(immed[15]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[15]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[1] 
       (.CLR(1'b0),
        .D(immed[1]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[2] 
       (.CLR(1'b0),
        .D(immed[2]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[3] 
       (.CLR(1'b0),
        .D(immed[3]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[4] 
       (.CLR(1'b0),
        .D(immed[4]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[4]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[5] 
       (.CLR(1'b0),
        .D(immed[5]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[5]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[6] 
       (.CLR(1'b0),
        .D(immed[6]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[6]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[7] 
       (.CLR(1'b0),
        .D(immed[7]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[8] 
       (.CLR(1'b0),
        .D(immed[8]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[8]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \var_reg[9] 
       (.CLR(1'b0),
        .D(immed[9]),
        .G(n_1_1_BUFG),
        .GE(1'b1),
        .Q(var[9]));
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
