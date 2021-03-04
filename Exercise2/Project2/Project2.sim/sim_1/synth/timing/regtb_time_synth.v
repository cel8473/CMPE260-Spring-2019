// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Feb 19 19:53:11 2019
// Host        : FSL-12 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/DSD-II/Exercise2/Project2/Project2.sim/sim_1/synth/timing/regtb_time_synth.v
// Design      : reg_file
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module decoder
   (E,
    \stored_reg[7] ,
    \stored_reg[7]_0 ,
    \stored_reg[7]_1 ,
    \stored_reg[7]_2 ,
    \stored_reg[7]_3 ,
    \stored_reg[7]_4 ,
    \stored_reg[7]_5 ,
    WR_IBUF,
    AR,
    CLK,
    we_IBUF);
  output [0:0]E;
  output [0:0]\stored_reg[7] ;
  output [0:0]\stored_reg[7]_0 ;
  output [0:0]\stored_reg[7]_1 ;
  output [0:0]\stored_reg[7]_2 ;
  output [0:0]\stored_reg[7]_3 ;
  output [0:0]\stored_reg[7]_4 ;
  output [0:0]\stored_reg[7]_5 ;
  input [2:0]WR_IBUF;
  input [0:0]AR;
  input CLK;
  input we_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [2:0]WR_IBUF;
  wire [7:0]out_dec;
  wire \output[2]_i_1_n_0 ;
  wire \output[7]_i_1_n_0 ;
  wire [6:0]p_0_out;
  wire [0:0]\stored_reg[7] ;
  wire [0:0]\stored_reg[7]_0 ;
  wire [0:0]\stored_reg[7]_1 ;
  wire [0:0]\stored_reg[7]_2 ;
  wire [0:0]\stored_reg[7]_3 ;
  wire [0:0]\stored_reg[7]_4 ;
  wire [0:0]\stored_reg[7]_5 ;
  wire we_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \output 
       (.I0(WR_IBUF[1]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[2]),
        .O(p_0_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \output[2]_i_1 
       (.I0(WR_IBUF[1]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[2]),
        .O(\output[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \output[7]_i_1 
       (.I0(WR_IBUF[1]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[2]),
        .O(\output[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h02)) 
    output__0
       (.I0(WR_IBUF[0]),
        .I1(WR_IBUF[2]),
        .I2(WR_IBUF[1]),
        .O(p_0_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    output__1
       (.I0(WR_IBUF[2]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[1]),
        .O(p_0_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    output__2
       (.I0(WR_IBUF[2]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[1]),
        .O(p_0_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    output__3
       (.I0(WR_IBUF[1]),
        .I1(WR_IBUF[0]),
        .I2(WR_IBUF[2]),
        .O(p_0_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    output__4
       (.I0(WR_IBUF[0]),
        .I1(WR_IBUF[2]),
        .I2(WR_IBUF[1]),
        .O(p_0_out[6]));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(out_dec[0]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(out_dec[1]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\output[2]_i_1_n_0 ),
        .Q(out_dec[2]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(out_dec[3]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(out_dec[4]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(out_dec[5]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(out_dec[6]),
        .R(AR));
  FDRE #(
    .INIT(1'b0)) 
    \output_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\output[7]_i_1_n_0 ),
        .Q(out_dec[7]),
        .R(AR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1 
       (.I0(out_dec[0]),
        .I1(we_IBUF),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__0 
       (.I0(out_dec[1]),
        .I1(we_IBUF),
        .O(\stored_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__1 
       (.I0(out_dec[2]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__2 
       (.I0(out_dec[3]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__3 
       (.I0(out_dec[4]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__4 
       (.I0(out_dec[5]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__5 
       (.I0(out_dec[6]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \stored[7]_i_1__6 
       (.I0(out_dec[7]),
        .I1(we_IBUF),
        .O(\stored_reg[7]_5 ));
endmodule

(* LOG = "3" *) (* M = "8" *) (* N = "8" *) 
(* NotValidForBitStream *)
module reg_file
   (WR,
    rd1,
    rd2,
    \input ,
    clk,
    we,
    rst,
    out1,
    out2);
  input [2:0]WR;
  input [2:0]rd1;
  input [2:0]rd2;
  input [7:0]\input ;
  input clk;
  input we;
  input rst;
  output [7:0]out1;
  output [7:0]out2;

  wire [2:0]WR;
  wire [2:0]WR_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire in_result0;
  wire in_result1;
  wire in_result2;
  wire in_result3;
  wire in_result4;
  wire in_result5;
  wire in_result6;
  wire in_result7;
  wire [7:0]\input ;
  wire [7:0]out1;
  wire [7:0]out1_OBUF;
  wire [7:0]out2;
  wire [7:0]out2_OBUF;
  wire [2:0]rd1;
  wire [2:0]rd1_IBUF;
  wire [2:0]rd2;
  wire [2:0]rd2_IBUF;
  wire reg_comp2_n_0;
  wire reg_comp2_n_1;
  wire reg_comp2_n_2;
  wire reg_comp2_n_3;
  wire reg_comp2_n_4;
  wire reg_comp2_n_5;
  wire reg_comp2_n_6;
  wire reg_comp2_n_7;
  wire reg_comp3_n_0;
  wire reg_comp3_n_1;
  wire reg_comp3_n_2;
  wire reg_comp3_n_3;
  wire reg_comp3_n_4;
  wire reg_comp3_n_5;
  wire reg_comp3_n_6;
  wire reg_comp3_n_7;
  wire reg_comp5_n_0;
  wire reg_comp5_n_1;
  wire reg_comp5_n_2;
  wire reg_comp5_n_3;
  wire reg_comp5_n_4;
  wire reg_comp5_n_5;
  wire reg_comp5_n_6;
  wire reg_comp5_n_7;
  wire reg_comp6_n_0;
  wire reg_comp6_n_1;
  wire reg_comp6_n_2;
  wire reg_comp6_n_3;
  wire reg_comp6_n_4;
  wire reg_comp6_n_5;
  wire reg_comp6_n_6;
  wire reg_comp6_n_7;
  wire reg_comp7_n_0;
  wire reg_comp7_n_1;
  wire reg_comp7_n_2;
  wire reg_comp7_n_3;
  wire reg_comp7_n_4;
  wire reg_comp7_n_5;
  wire reg_comp7_n_6;
  wire reg_comp7_n_7;
  wire reg_comp8_n_0;
  wire reg_comp8_n_1;
  wire reg_comp8_n_10;
  wire reg_comp8_n_11;
  wire reg_comp8_n_12;
  wire reg_comp8_n_13;
  wire reg_comp8_n_14;
  wire reg_comp8_n_15;
  wire reg_comp8_n_2;
  wire reg_comp8_n_3;
  wire reg_comp8_n_4;
  wire reg_comp8_n_5;
  wire reg_comp8_n_6;
  wire reg_comp8_n_7;
  wire reg_comp8_n_8;
  wire reg_comp8_n_9;
  wire rst;
  wire rst_IBUF;
  wire [7:0]stored;
  wire \stored_reg[0]_i_1_n_0 ;
  wire \stored_reg[1]_i_1_n_0 ;
  wire \stored_reg[2]_i_1_n_0 ;
  wire \stored_reg[3]_i_1_n_0 ;
  wire \stored_reg[4]_i_1_n_0 ;
  wire \stored_reg[5]_i_1_n_0 ;
  wire \stored_reg[6]_i_1_n_0 ;
  wire \stored_reg[7]_i_2_n_0 ;
  wire we;
  wire we_IBUF;

initial begin
 $sdf_annotate("regtb_time_synth.sdf",,,,"tool_control");
end
  IBUF \WR_IBUF[0]_inst 
       (.I(WR[0]),
        .O(WR_IBUF[0]));
  IBUF \WR_IBUF[1]_inst 
       (.I(WR[1]),
        .O(WR_IBUF[1]));
  IBUF \WR_IBUF[2]_inst 
       (.I(WR[2]),
        .O(WR_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  decoder decoder_comp
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .E(in_result0),
        .WR_IBUF(WR_IBUF),
        .\stored_reg[7] (in_result1),
        .\stored_reg[7]_0 (in_result2),
        .\stored_reg[7]_1 (in_result3),
        .\stored_reg[7]_2 (in_result4),
        .\stored_reg[7]_3 (in_result5),
        .\stored_reg[7]_4 (in_result6),
        .\stored_reg[7]_5 (in_result7),
        .we_IBUF(we_IBUF));
  OBUF \out1_OBUF[0]_inst 
       (.I(out1_OBUF[0]),
        .O(out1[0]));
  OBUF \out1_OBUF[1]_inst 
       (.I(out1_OBUF[1]),
        .O(out1[1]));
  OBUF \out1_OBUF[2]_inst 
       (.I(out1_OBUF[2]),
        .O(out1[2]));
  OBUF \out1_OBUF[3]_inst 
       (.I(out1_OBUF[3]),
        .O(out1[3]));
  OBUF \out1_OBUF[4]_inst 
       (.I(out1_OBUF[4]),
        .O(out1[4]));
  OBUF \out1_OBUF[5]_inst 
       (.I(out1_OBUF[5]),
        .O(out1[5]));
  OBUF \out1_OBUF[6]_inst 
       (.I(out1_OBUF[6]),
        .O(out1[6]));
  OBUF \out1_OBUF[7]_inst 
       (.I(out1_OBUF[7]),
        .O(out1[7]));
  OBUF \out2_OBUF[0]_inst 
       (.I(out2_OBUF[0]),
        .O(out2[0]));
  OBUF \out2_OBUF[1]_inst 
       (.I(out2_OBUF[1]),
        .O(out2[1]));
  OBUF \out2_OBUF[2]_inst 
       (.I(out2_OBUF[2]),
        .O(out2[2]));
  OBUF \out2_OBUF[3]_inst 
       (.I(out2_OBUF[3]),
        .O(out2[3]));
  OBUF \out2_OBUF[4]_inst 
       (.I(out2_OBUF[4]),
        .O(out2[4]));
  OBUF \out2_OBUF[5]_inst 
       (.I(out2_OBUF[5]),
        .O(out2[5]));
  OBUF \out2_OBUF[6]_inst 
       (.I(out2_OBUF[6]),
        .O(out2[6]));
  OBUF \out2_OBUF[7]_inst 
       (.I(out2_OBUF[7]),
        .O(out2[7]));
  IBUF \rd1_IBUF[0]_inst 
       (.I(rd1[0]),
        .O(rd1_IBUF[0]));
  IBUF \rd1_IBUF[1]_inst 
       (.I(rd1[1]),
        .O(rd1_IBUF[1]));
  IBUF \rd1_IBUF[2]_inst 
       (.I(rd1[2]),
        .O(rd1_IBUF[2]));
  IBUF \rd2_IBUF[0]_inst 
       (.I(rd2[0]),
        .O(rd2_IBUF[0]));
  IBUF \rd2_IBUF[1]_inst 
       (.I(rd2[1]),
        .O(rd2_IBUF[1]));
  IBUF \rd2_IBUF[2]_inst 
       (.I(rd2[2]),
        .O(rd2_IBUF[2]));
  reg_module reg_comp1
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result0),
        .Q(stored));
  reg_module_0 reg_comp2
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result1),
        .Q({reg_comp2_n_0,reg_comp2_n_1,reg_comp2_n_2,reg_comp2_n_3,reg_comp2_n_4,reg_comp2_n_5,reg_comp2_n_6,reg_comp2_n_7}));
  reg_module_1 reg_comp3
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result2),
        .Q({reg_comp3_n_0,reg_comp3_n_1,reg_comp3_n_2,reg_comp3_n_3,reg_comp3_n_4,reg_comp3_n_5,reg_comp3_n_6,reg_comp3_n_7}));
  reg_module_2 reg_comp4
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result3),
        .Q({reg_comp3_n_0,reg_comp3_n_1,reg_comp3_n_2,reg_comp3_n_3,reg_comp3_n_4,reg_comp3_n_5,reg_comp3_n_6,reg_comp3_n_7}),
        .out1_OBUF(out1_OBUF),
        .out2_OBUF(out2_OBUF),
        .rd1_IBUF(rd1_IBUF),
        .rd2_IBUF(rd2_IBUF),
        .\stored_reg[0]_0 (reg_comp8_n_0),
        .\stored_reg[0]_1 (reg_comp8_n_8),
        .\stored_reg[1]_0 (reg_comp8_n_1),
        .\stored_reg[1]_1 (reg_comp8_n_9),
        .\stored_reg[2]_0 (reg_comp8_n_2),
        .\stored_reg[2]_1 (reg_comp8_n_10),
        .\stored_reg[3]_0 (reg_comp8_n_3),
        .\stored_reg[3]_1 (reg_comp8_n_11),
        .\stored_reg[4]_0 (reg_comp8_n_4),
        .\stored_reg[4]_1 (reg_comp8_n_12),
        .\stored_reg[5]_0 (reg_comp8_n_5),
        .\stored_reg[5]_1 (reg_comp8_n_13),
        .\stored_reg[6]_0 (reg_comp8_n_6),
        .\stored_reg[6]_1 (reg_comp8_n_14),
        .\stored_reg[7]_0 ({reg_comp2_n_0,reg_comp2_n_1,reg_comp2_n_2,reg_comp2_n_3,reg_comp2_n_4,reg_comp2_n_5,reg_comp2_n_6,reg_comp2_n_7}),
        .\stored_reg[7]_1 (stored),
        .\stored_reg[7]_2 (reg_comp8_n_7),
        .\stored_reg[7]_3 (reg_comp8_n_15));
  reg_module_3 reg_comp5
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result4),
        .Q({reg_comp5_n_0,reg_comp5_n_1,reg_comp5_n_2,reg_comp5_n_3,reg_comp5_n_4,reg_comp5_n_5,reg_comp5_n_6,reg_comp5_n_7}));
  reg_module_4 reg_comp6
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result5),
        .Q({reg_comp6_n_0,reg_comp6_n_1,reg_comp6_n_2,reg_comp6_n_3,reg_comp6_n_4,reg_comp6_n_5,reg_comp6_n_6,reg_comp6_n_7}));
  reg_module_5 reg_comp7
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result6),
        .Q({reg_comp7_n_0,reg_comp7_n_1,reg_comp7_n_2,reg_comp7_n_3,reg_comp7_n_4,reg_comp7_n_5,reg_comp7_n_6,reg_comp7_n_7}));
  reg_module_6 reg_comp8
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({\stored_reg[7]_i_2_n_0 ,\stored_reg[6]_i_1_n_0 ,\stored_reg[5]_i_1_n_0 ,\stored_reg[4]_i_1_n_0 ,\stored_reg[3]_i_1_n_0 ,\stored_reg[2]_i_1_n_0 ,\stored_reg[1]_i_1_n_0 ,\stored_reg[0]_i_1_n_0 }),
        .E(in_result7),
        .Q({reg_comp7_n_0,reg_comp7_n_1,reg_comp7_n_2,reg_comp7_n_3,reg_comp7_n_4,reg_comp7_n_5,reg_comp7_n_6,reg_comp7_n_7}),
        .\out1[0] (reg_comp8_n_0),
        .\out1[1] (reg_comp8_n_1),
        .\out1[2] (reg_comp8_n_2),
        .\out1[3] (reg_comp8_n_3),
        .\out1[4] (reg_comp8_n_4),
        .\out1[5] (reg_comp8_n_5),
        .\out1[6] (reg_comp8_n_6),
        .\out1[7] (reg_comp8_n_7),
        .\out2[0] (reg_comp8_n_8),
        .\out2[1] (reg_comp8_n_9),
        .\out2[2] (reg_comp8_n_10),
        .\out2[3] (reg_comp8_n_11),
        .\out2[4] (reg_comp8_n_12),
        .\out2[5] (reg_comp8_n_13),
        .\out2[6] (reg_comp8_n_14),
        .\out2[7] (reg_comp8_n_15),
        .rd1_IBUF(rd1_IBUF[1:0]),
        .rd2_IBUF(rd2_IBUF[1:0]),
        .\stored_reg[7]_0 ({reg_comp6_n_0,reg_comp6_n_1,reg_comp6_n_2,reg_comp6_n_3,reg_comp6_n_4,reg_comp6_n_5,reg_comp6_n_6,reg_comp6_n_7}),
        .\stored_reg[7]_1 ({reg_comp5_n_0,reg_comp5_n_1,reg_comp5_n_2,reg_comp5_n_3,reg_comp5_n_4,reg_comp5_n_5,reg_comp5_n_6,reg_comp5_n_7}));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF \stored_reg[0]_i_1 
       (.I(\input [0]),
        .O(\stored_reg[0]_i_1_n_0 ));
  IBUF \stored_reg[1]_i_1 
       (.I(\input [1]),
        .O(\stored_reg[1]_i_1_n_0 ));
  IBUF \stored_reg[2]_i_1 
       (.I(\input [2]),
        .O(\stored_reg[2]_i_1_n_0 ));
  IBUF \stored_reg[3]_i_1 
       (.I(\input [3]),
        .O(\stored_reg[3]_i_1_n_0 ));
  IBUF \stored_reg[4]_i_1 
       (.I(\input [4]),
        .O(\stored_reg[4]_i_1_n_0 ));
  IBUF \stored_reg[5]_i_1 
       (.I(\input [5]),
        .O(\stored_reg[5]_i_1_n_0 ));
  IBUF \stored_reg[6]_i_1 
       (.I(\input [6]),
        .O(\stored_reg[6]_i_1_n_0 ));
  IBUF \stored_reg[7]_i_2 
       (.I(\input [7]),
        .O(\stored_reg[7]_i_2_n_0 ));
  IBUF we_IBUF_inst
       (.I(we),
        .O(we_IBUF));
endmodule

module reg_module
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_0
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_1
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_2
   (out1_OBUF,
    out2_OBUF,
    rd1_IBUF,
    \stored_reg[0]_0 ,
    Q,
    \stored_reg[7]_0 ,
    \stored_reg[7]_1 ,
    \stored_reg[1]_0 ,
    \stored_reg[2]_0 ,
    \stored_reg[3]_0 ,
    \stored_reg[4]_0 ,
    \stored_reg[5]_0 ,
    \stored_reg[6]_0 ,
    \stored_reg[7]_2 ,
    rd2_IBUF,
    \stored_reg[0]_1 ,
    \stored_reg[1]_1 ,
    \stored_reg[2]_1 ,
    \stored_reg[3]_1 ,
    \stored_reg[4]_1 ,
    \stored_reg[5]_1 ,
    \stored_reg[6]_1 ,
    \stored_reg[7]_3 ,
    E,
    D,
    CLK,
    AR);
  output [7:0]out1_OBUF;
  output [7:0]out2_OBUF;
  input [2:0]rd1_IBUF;
  input \stored_reg[0]_0 ;
  input [7:0]Q;
  input [7:0]\stored_reg[7]_0 ;
  input [7:0]\stored_reg[7]_1 ;
  input \stored_reg[1]_0 ;
  input \stored_reg[2]_0 ;
  input \stored_reg[3]_0 ;
  input \stored_reg[4]_0 ;
  input \stored_reg[5]_0 ;
  input \stored_reg[6]_0 ;
  input \stored_reg[7]_2 ;
  input [2:0]rd2_IBUF;
  input \stored_reg[0]_1 ;
  input \stored_reg[1]_1 ;
  input \stored_reg[2]_1 ;
  input \stored_reg[3]_1 ;
  input \stored_reg[4]_1 ;
  input \stored_reg[5]_1 ;
  input \stored_reg[6]_1 ;
  input \stored_reg[7]_3 ;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]out1_OBUF;
  wire \out1_OBUF[0]_inst_i_2_n_0 ;
  wire \out1_OBUF[1]_inst_i_2_n_0 ;
  wire \out1_OBUF[2]_inst_i_2_n_0 ;
  wire \out1_OBUF[3]_inst_i_2_n_0 ;
  wire \out1_OBUF[4]_inst_i_2_n_0 ;
  wire \out1_OBUF[5]_inst_i_2_n_0 ;
  wire \out1_OBUF[6]_inst_i_2_n_0 ;
  wire \out1_OBUF[7]_inst_i_2_n_0 ;
  wire [7:0]out2_OBUF;
  wire \out2_OBUF[0]_inst_i_2_n_0 ;
  wire \out2_OBUF[1]_inst_i_2_n_0 ;
  wire \out2_OBUF[2]_inst_i_2_n_0 ;
  wire \out2_OBUF[3]_inst_i_2_n_0 ;
  wire \out2_OBUF[4]_inst_i_2_n_0 ;
  wire \out2_OBUF[5]_inst_i_2_n_0 ;
  wire \out2_OBUF[6]_inst_i_2_n_0 ;
  wire \out2_OBUF[7]_inst_i_2_n_0 ;
  wire [2:0]rd1_IBUF;
  wire [2:0]rd2_IBUF;
  wire \stored_reg[0]_0 ;
  wire \stored_reg[0]_1 ;
  wire \stored_reg[1]_0 ;
  wire \stored_reg[1]_1 ;
  wire \stored_reg[2]_0 ;
  wire \stored_reg[2]_1 ;
  wire \stored_reg[3]_0 ;
  wire \stored_reg[3]_1 ;
  wire \stored_reg[4]_0 ;
  wire \stored_reg[4]_1 ;
  wire \stored_reg[5]_0 ;
  wire \stored_reg[5]_1 ;
  wire \stored_reg[6]_0 ;
  wire \stored_reg[6]_1 ;
  wire [7:0]\stored_reg[7]_0 ;
  wire [7:0]\stored_reg[7]_1 ;
  wire \stored_reg[7]_2 ;
  wire \stored_reg[7]_3 ;
  wire \stored_reg_n_0_[0] ;
  wire \stored_reg_n_0_[1] ;
  wire \stored_reg_n_0_[2] ;
  wire \stored_reg_n_0_[3] ;
  wire \stored_reg_n_0_[4] ;
  wire \stored_reg_n_0_[5] ;
  wire \stored_reg_n_0_[6] ;
  wire \stored_reg_n_0_[7] ;

  MUXF7 \out1_OBUF[0]_inst_i_1 
       (.I0(\out1_OBUF[0]_inst_i_2_n_0 ),
        .I1(\stored_reg[0]_0 ),
        .O(out1_OBUF[0]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[0]_inst_i_2 
       (.I0(\stored_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [0]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [0]),
        .O(\out1_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[1]_inst_i_1 
       (.I0(\out1_OBUF[1]_inst_i_2_n_0 ),
        .I1(\stored_reg[1]_0 ),
        .O(out1_OBUF[1]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[1]_inst_i_2 
       (.I0(\stored_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [1]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [1]),
        .O(\out1_OBUF[1]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[2]_inst_i_1 
       (.I0(\out1_OBUF[2]_inst_i_2_n_0 ),
        .I1(\stored_reg[2]_0 ),
        .O(out1_OBUF[2]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[2]_inst_i_2 
       (.I0(\stored_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [2]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [2]),
        .O(\out1_OBUF[2]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[3]_inst_i_1 
       (.I0(\out1_OBUF[3]_inst_i_2_n_0 ),
        .I1(\stored_reg[3]_0 ),
        .O(out1_OBUF[3]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[3]_inst_i_2 
       (.I0(\stored_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [3]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [3]),
        .O(\out1_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[4]_inst_i_1 
       (.I0(\out1_OBUF[4]_inst_i_2_n_0 ),
        .I1(\stored_reg[4]_0 ),
        .O(out1_OBUF[4]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[4]_inst_i_2 
       (.I0(\stored_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [4]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [4]),
        .O(\out1_OBUF[4]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[5]_inst_i_1 
       (.I0(\out1_OBUF[5]_inst_i_2_n_0 ),
        .I1(\stored_reg[5]_0 ),
        .O(out1_OBUF[5]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[5]_inst_i_2 
       (.I0(\stored_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [5]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [5]),
        .O(\out1_OBUF[5]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[6]_inst_i_1 
       (.I0(\out1_OBUF[6]_inst_i_2_n_0 ),
        .I1(\stored_reg[6]_0 ),
        .O(out1_OBUF[6]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[6]_inst_i_2 
       (.I0(\stored_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [6]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [6]),
        .O(\out1_OBUF[6]_inst_i_2_n_0 ));
  MUXF7 \out1_OBUF[7]_inst_i_1 
       (.I0(\out1_OBUF[7]_inst_i_2_n_0 ),
        .I1(\stored_reg[7]_2 ),
        .O(out1_OBUF[7]),
        .S(rd1_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[7]_inst_i_2 
       (.I0(\stored_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [7]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [7]),
        .O(\out1_OBUF[7]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[0]_inst_i_1 
       (.I0(\out2_OBUF[0]_inst_i_2_n_0 ),
        .I1(\stored_reg[0]_1 ),
        .O(out2_OBUF[0]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[0]_inst_i_2 
       (.I0(\stored_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [0]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [0]),
        .O(\out2_OBUF[0]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[1]_inst_i_1 
       (.I0(\out2_OBUF[1]_inst_i_2_n_0 ),
        .I1(\stored_reg[1]_1 ),
        .O(out2_OBUF[1]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[1]_inst_i_2 
       (.I0(\stored_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [1]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [1]),
        .O(\out2_OBUF[1]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[2]_inst_i_1 
       (.I0(\out2_OBUF[2]_inst_i_2_n_0 ),
        .I1(\stored_reg[2]_1 ),
        .O(out2_OBUF[2]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[2]_inst_i_2 
       (.I0(\stored_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [2]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [2]),
        .O(\out2_OBUF[2]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[3]_inst_i_1 
       (.I0(\out2_OBUF[3]_inst_i_2_n_0 ),
        .I1(\stored_reg[3]_1 ),
        .O(out2_OBUF[3]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[3]_inst_i_2 
       (.I0(\stored_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [3]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [3]),
        .O(\out2_OBUF[3]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[4]_inst_i_1 
       (.I0(\out2_OBUF[4]_inst_i_2_n_0 ),
        .I1(\stored_reg[4]_1 ),
        .O(out2_OBUF[4]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[4]_inst_i_2 
       (.I0(\stored_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [4]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [4]),
        .O(\out2_OBUF[4]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[5]_inst_i_1 
       (.I0(\out2_OBUF[5]_inst_i_2_n_0 ),
        .I1(\stored_reg[5]_1 ),
        .O(out2_OBUF[5]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[5]_inst_i_2 
       (.I0(\stored_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [5]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [5]),
        .O(\out2_OBUF[5]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[6]_inst_i_1 
       (.I0(\out2_OBUF[6]_inst_i_2_n_0 ),
        .I1(\stored_reg[6]_1 ),
        .O(out2_OBUF[6]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[6]_inst_i_2 
       (.I0(\stored_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [6]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [6]),
        .O(\out2_OBUF[6]_inst_i_2_n_0 ));
  MUXF7 \out2_OBUF[7]_inst_i_1 
       (.I0(\out2_OBUF[7]_inst_i_2_n_0 ),
        .I1(\stored_reg[7]_3 ),
        .O(out2_OBUF[7]),
        .S(rd2_IBUF[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[7]_inst_i_2 
       (.I0(\stored_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [7]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [7]),
        .O(\out2_OBUF[7]_inst_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\stored_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\stored_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\stored_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\stored_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(\stored_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(\stored_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(\stored_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(\stored_reg_n_0_[7] ));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_3
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_4
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_5
   (Q,
    E,
    D,
    CLK,
    AR);
  output [7:0]Q;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(Q[7]));
endmodule

(* ORIG_REF_NAME = "reg_module" *) 
module reg_module_6
   (\out1[0] ,
    \out1[1] ,
    \out1[2] ,
    \out1[3] ,
    \out1[4] ,
    \out1[5] ,
    \out1[6] ,
    \out1[7] ,
    \out2[0] ,
    \out2[1] ,
    \out2[2] ,
    \out2[3] ,
    \out2[4] ,
    \out2[5] ,
    \out2[6] ,
    \out2[7] ,
    Q,
    rd1_IBUF,
    \stored_reg[7]_0 ,
    \stored_reg[7]_1 ,
    rd2_IBUF,
    E,
    D,
    CLK,
    AR);
  output \out1[0] ;
  output \out1[1] ;
  output \out1[2] ;
  output \out1[3] ;
  output \out1[4] ;
  output \out1[5] ;
  output \out1[6] ;
  output \out1[7] ;
  output \out2[0] ;
  output \out2[1] ;
  output \out2[2] ;
  output \out2[3] ;
  output \out2[4] ;
  output \out2[5] ;
  output \out2[6] ;
  output \out2[7] ;
  input [7:0]Q;
  input [1:0]rd1_IBUF;
  input [7:0]\stored_reg[7]_0 ;
  input [7:0]\stored_reg[7]_1 ;
  input [1:0]rd2_IBUF;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire \out1[0] ;
  wire \out1[1] ;
  wire \out1[2] ;
  wire \out1[3] ;
  wire \out1[4] ;
  wire \out1[5] ;
  wire \out1[6] ;
  wire \out1[7] ;
  wire \out2[0] ;
  wire \out2[1] ;
  wire \out2[2] ;
  wire \out2[3] ;
  wire \out2[4] ;
  wire \out2[5] ;
  wire \out2[6] ;
  wire \out2[7] ;
  wire [1:0]rd1_IBUF;
  wire [1:0]rd2_IBUF;
  wire [7:0]\stored_reg[7]_0 ;
  wire [7:0]\stored_reg[7]_1 ;
  wire \stored_reg_n_0_[0] ;
  wire \stored_reg_n_0_[1] ;
  wire \stored_reg_n_0_[2] ;
  wire \stored_reg_n_0_[3] ;
  wire \stored_reg_n_0_[4] ;
  wire \stored_reg_n_0_[5] ;
  wire \stored_reg_n_0_[6] ;
  wire \stored_reg_n_0_[7] ;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[0]_inst_i_3 
       (.I0(\stored_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [0]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [0]),
        .O(\out1[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[1]_inst_i_3 
       (.I0(\stored_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [1]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [1]),
        .O(\out1[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[2]_inst_i_3 
       (.I0(\stored_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [2]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [2]),
        .O(\out1[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[3]_inst_i_3 
       (.I0(\stored_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [3]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [3]),
        .O(\out1[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[4]_inst_i_3 
       (.I0(\stored_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [4]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [4]),
        .O(\out1[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[5]_inst_i_3 
       (.I0(\stored_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [5]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [5]),
        .O(\out1[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[6]_inst_i_3 
       (.I0(\stored_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [6]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [6]),
        .O(\out1[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out1_OBUF[7]_inst_i_3 
       (.I0(\stored_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(rd1_IBUF[1]),
        .I3(\stored_reg[7]_0 [7]),
        .I4(rd1_IBUF[0]),
        .I5(\stored_reg[7]_1 [7]),
        .O(\out1[7] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[0]_inst_i_3 
       (.I0(\stored_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [0]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [0]),
        .O(\out2[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[1]_inst_i_3 
       (.I0(\stored_reg_n_0_[1] ),
        .I1(Q[1]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [1]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [1]),
        .O(\out2[1] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[2]_inst_i_3 
       (.I0(\stored_reg_n_0_[2] ),
        .I1(Q[2]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [2]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [2]),
        .O(\out2[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[3]_inst_i_3 
       (.I0(\stored_reg_n_0_[3] ),
        .I1(Q[3]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [3]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [3]),
        .O(\out2[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[4]_inst_i_3 
       (.I0(\stored_reg_n_0_[4] ),
        .I1(Q[4]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [4]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [4]),
        .O(\out2[4] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[5]_inst_i_3 
       (.I0(\stored_reg_n_0_[5] ),
        .I1(Q[5]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [5]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [5]),
        .O(\out2[5] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[6]_inst_i_3 
       (.I0(\stored_reg_n_0_[6] ),
        .I1(Q[6]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [6]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [6]),
        .O(\out2[6] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out2_OBUF[7]_inst_i_3 
       (.I0(\stored_reg_n_0_[7] ),
        .I1(Q[7]),
        .I2(rd2_IBUF[1]),
        .I3(\stored_reg[7]_0 [7]),
        .I4(rd2_IBUF[0]),
        .I5(\stored_reg[7]_1 [7]),
        .O(\out2[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\stored_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\stored_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\stored_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\stored_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[4]),
        .Q(\stored_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[5]),
        .Q(\stored_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[6]),
        .Q(\stored_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \stored_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[7]),
        .Q(\stored_reg_n_0_[7] ));
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
