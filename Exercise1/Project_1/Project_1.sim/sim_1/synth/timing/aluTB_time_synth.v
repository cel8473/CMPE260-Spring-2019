// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue Jan 15 19:10:33 2019
// Host        : FSL-10 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/cel8473/Exercise1/Exercise1.sim/sim_1/synth/timing/aluTB_time_synth.v
// Design      : alu4
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N = "4" *) 
(* NotValidForBitStream *)
module alu4
   (A,
    b,
    OP,
    Y);
  input [3:0]A;
  input [3:0]b;
  input OP;
  output [3:0]Y;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire OP;
  wire OP_IBUF;
  wire [3:0]Y;
  wire [3:0]Y_OBUF;
  wire \Y_OBUF[0]_inst_i_2_n_0 ;
  wire \Y_OBUF[0]_inst_i_3_n_0 ;
  wire \Y_OBUF[0]_inst_i_4_n_0 ;
  wire \Y_OBUF[1]_inst_i_2_n_0 ;
  wire \Y_OBUF[1]_inst_i_3_n_0 ;
  wire \Y_OBUF[1]_inst_i_4_n_0 ;
  wire \Y_OBUF[2]_inst_i_2_n_0 ;
  wire \Y_OBUF[2]_inst_i_3_n_0 ;
  wire \Y_OBUF[2]_inst_i_4_n_0 ;
  wire \Y_OBUF[3]_inst_i_2_n_0 ;
  wire [3:0]b;
  wire [3:0]b_IBUF;

initial begin
 $sdf_annotate("aluTB_time_synth.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF OP_IBUF_inst
       (.I(OP),
        .O(OP_IBUF));
  OBUF \Y_OBUF[0]_inst 
       (.I(Y_OBUF[0]),
        .O(Y[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0246FFFF)) 
    \Y_OBUF[0]_inst_i_2 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(A_IBUF[3]),
        .I3(A_IBUF[2]),
        .I4(OP_IBUF),
        .O(\Y_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \Y_OBUF[0]_inst_i_3 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .O(\Y_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h01A1)) 
    \Y_OBUF[0]_inst_i_4 
       (.I0(b_IBUF[1]),
        .I1(A_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Y_OBUF[0]_inst_i_4_n_0 ));
  OBUF \Y_OBUF[1]_inst 
       (.I(Y_OBUF[1]),
        .O(Y[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1015FFFF)) 
    \Y_OBUF[1]_inst_i_2 
       (.I0(b_IBUF[1]),
        .I1(A_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(A_IBUF[1]),
        .I4(OP_IBUF),
        .O(\Y_OBUF[1]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \Y_OBUF[1]_inst_i_3 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[2]),
        .O(\Y_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h02A2)) 
    \Y_OBUF[1]_inst_i_4 
       (.I0(b_IBUF[1]),
        .I1(A_IBUF[3]),
        .I2(b_IBUF[0]),
        .I3(A_IBUF[2]),
        .O(\Y_OBUF[1]_inst_i_4_n_0 ));
  OBUF \Y_OBUF[2]_inst 
       (.I(Y_OBUF[2]),
        .O(Y[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0819FFFF)) 
    \Y_OBUF[2]_inst_i_2 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(A_IBUF[3]),
        .I3(A_IBUF[2]),
        .I4(OP_IBUF),
        .O(\Y_OBUF[2]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Y_OBUF[2]_inst_i_3 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(\Y_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0252)) 
    \Y_OBUF[2]_inst_i_4 
       (.I0(b_IBUF[1]),
        .I1(A_IBUF[0]),
        .I2(b_IBUF[0]),
        .I3(A_IBUF[1]),
        .O(\Y_OBUF[2]_inst_i_4_n_0 ));
  OBUF \Y_OBUF[3]_inst 
       (.I(Y_OBUF[3]),
        .O(Y[3]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \Y_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[0]),
        .I1(A_IBUF[1]),
        .I2(b_IBUF[1]),
        .I3(A_IBUF[2]),
        .I4(b_IBUF[0]),
        .I5(A_IBUF[3]),
        .O(\Y_OBUF[3]_inst_i_2_n_0 ));
  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(b_IBUF[3]));
  sllN sll_comp
       (.\A[1] (\Y_OBUF[0]_inst_i_4_n_0 ),
        .\A[1]_0 (\Y_OBUF[2]_inst_i_4_n_0 ),
        .\A[2] (\Y_OBUF[1]_inst_i_4_n_0 ),
        .\A[3] (\Y_OBUF[3]_inst_i_2_n_0 ),
        .A_IBUF(A_IBUF),
        .OP(\Y_OBUF[0]_inst_i_2_n_0 ),
        .OP_0(\Y_OBUF[2]_inst_i_2_n_0 ),
        .OP_1(\Y_OBUF[1]_inst_i_2_n_0 ),
        .OP_IBUF(OP_IBUF),
        .Y_OBUF(Y_OBUF),
        .\b[2] (\Y_OBUF[0]_inst_i_3_n_0 ),
        .\b[2]_0 (\Y_OBUF[2]_inst_i_3_n_0 ),
        .\b[2]_1 (\Y_OBUF[1]_inst_i_3_n_0 ),
        .b_IBUF(b_IBUF));
endmodule

module sllN
   (Y_OBUF,
    A_IBUF,
    OP_IBUF,
    OP,
    \b[2] ,
    \A[1] ,
    b_IBUF,
    OP_0,
    \b[2]_0 ,
    \A[1]_0 ,
    OP_1,
    \b[2]_1 ,
    \A[2] ,
    \A[3] );
  output [3:0]Y_OBUF;
  input [3:0]A_IBUF;
  input OP_IBUF;
  input OP;
  input \b[2] ;
  input \A[1] ;
  input [3:0]b_IBUF;
  input OP_0;
  input \b[2]_0 ;
  input \A[1]_0 ;
  input OP_1;
  input \b[2]_1 ;
  input \A[2] ;
  input \A[3] ;

  wire \A[1] ;
  wire \A[1]_0 ;
  wire \A[2] ;
  wire \A[3] ;
  wire [3:0]A_IBUF;
  wire OP;
  wire OP_0;
  wire OP_1;
  wire OP_IBUF;
  wire Y11_in;
  wire Y14_in;
  wire Y17_in;
  wire Y1__15_carry__0_i_1_n_0;
  wire Y1__15_carry__0_i_2_n_0;
  wire Y1__15_carry__0_i_3_n_0;
  wire Y1__15_carry__0_i_4_n_0;
  wire Y1__15_carry__0_i_5_n_0;
  wire Y1__15_carry__0_i_6_n_0;
  wire Y1__15_carry__0_i_7_n_0;
  wire Y1__15_carry__0_i_8_n_0;
  wire Y1__15_carry__0_n_0;
  wire Y1__15_carry__0_n_1;
  wire Y1__15_carry__0_n_2;
  wire Y1__15_carry__0_n_3;
  wire Y1__15_carry__1_i_1_n_0;
  wire Y1__15_carry__1_i_2_n_0;
  wire Y1__15_carry__1_i_3_n_0;
  wire Y1__15_carry__1_i_4_n_0;
  wire Y1__15_carry__1_i_5_n_0;
  wire Y1__15_carry__1_i_6_n_0;
  wire Y1__15_carry__1_i_7_n_0;
  wire Y1__15_carry__1_i_8_n_0;
  wire Y1__15_carry__1_n_0;
  wire Y1__15_carry__1_n_1;
  wire Y1__15_carry__1_n_2;
  wire Y1__15_carry__1_n_3;
  wire Y1__15_carry__2_i_1_n_0;
  wire Y1__15_carry__2_i_2_n_0;
  wire Y1__15_carry__2_i_3_n_0;
  wire Y1__15_carry__2_i_4_n_0;
  wire Y1__15_carry__2_i_5_n_0;
  wire Y1__15_carry__2_i_6_n_0;
  wire Y1__15_carry__2_i_7_n_0;
  wire Y1__15_carry__2_n_1;
  wire Y1__15_carry__2_n_2;
  wire Y1__15_carry__2_n_3;
  wire Y1__15_carry_i_1_n_0;
  wire Y1__15_carry_i_2_n_0;
  wire Y1__15_carry_i_3_n_0;
  wire Y1__15_carry_i_4_n_0;
  wire Y1__15_carry_i_5_n_0;
  wire Y1__15_carry_i_6_n_0;
  wire Y1__15_carry_i_7_n_0;
  wire Y1__15_carry_i_8_n_0;
  wire Y1__15_carry_n_0;
  wire Y1__15_carry_n_1;
  wire Y1__15_carry_n_2;
  wire Y1__15_carry_n_3;
  wire Y1__31_carry__0_i_1_n_0;
  wire Y1__31_carry__0_i_2_n_0;
  wire Y1__31_carry__0_i_3_n_0;
  wire Y1__31_carry__0_i_4_n_0;
  wire Y1__31_carry__0_i_5_n_0;
  wire Y1__31_carry__0_i_6_n_0;
  wire Y1__31_carry__0_i_7_n_0;
  wire Y1__31_carry__0_i_8_n_0;
  wire Y1__31_carry__0_n_0;
  wire Y1__31_carry__0_n_1;
  wire Y1__31_carry__0_n_2;
  wire Y1__31_carry__0_n_3;
  wire Y1__31_carry__1_i_1_n_0;
  wire Y1__31_carry__1_i_2_n_0;
  wire Y1__31_carry__1_i_3_n_0;
  wire Y1__31_carry__1_i_4_n_0;
  wire Y1__31_carry__1_i_5_n_0;
  wire Y1__31_carry__1_i_6_n_0;
  wire Y1__31_carry__1_i_7_n_0;
  wire Y1__31_carry__1_i_8_n_0;
  wire Y1__31_carry__1_n_0;
  wire Y1__31_carry__1_n_1;
  wire Y1__31_carry__1_n_2;
  wire Y1__31_carry__1_n_3;
  wire Y1__31_carry__2_i_1_n_0;
  wire Y1__31_carry__2_i_2_n_0;
  wire Y1__31_carry__2_i_3_n_0;
  wire Y1__31_carry__2_i_4_n_0;
  wire Y1__31_carry__2_i_5_n_0;
  wire Y1__31_carry__2_i_6_n_0;
  wire Y1__31_carry__2_i_7_n_0;
  wire Y1__31_carry__2_n_1;
  wire Y1__31_carry__2_n_2;
  wire Y1__31_carry__2_n_3;
  wire Y1__31_carry_i_1_n_0;
  wire Y1__31_carry_i_2_n_0;
  wire Y1__31_carry_i_3_n_0;
  wire Y1__31_carry_i_4_n_0;
  wire Y1__31_carry_i_5_n_0;
  wire Y1__31_carry_i_6_n_0;
  wire Y1__31_carry_i_7_n_0;
  wire Y1__31_carry_i_8_n_0;
  wire Y1__31_carry_n_0;
  wire Y1__31_carry_n_1;
  wire Y1__31_carry_n_2;
  wire Y1__31_carry_n_3;
  wire Y1__47_carry__0_n_0;
  wire Y1__47_carry__0_n_1;
  wire Y1__47_carry__0_n_2;
  wire Y1__47_carry__0_n_3;
  wire Y1__47_carry__1_n_0;
  wire Y1__47_carry__1_n_1;
  wire Y1__47_carry__1_n_2;
  wire Y1__47_carry__1_n_3;
  wire Y1__47_carry__2_n_1;
  wire Y1__47_carry__2_n_2;
  wire Y1__47_carry__2_n_3;
  wire Y1__47_carry_i_1__0_n_0;
  wire Y1__47_carry_i_1__1_n_0;
  wire Y1__47_carry_i_1__2_n_0;
  wire Y1__47_carry_i_1_n_0;
  wire Y1__47_carry_i_2__0_n_0;
  wire Y1__47_carry_i_2__1_n_0;
  wire Y1__47_carry_i_2__2_n_0;
  wire Y1__47_carry_i_2_n_0;
  wire Y1__47_carry_i_3__0_n_0;
  wire Y1__47_carry_i_3__1_n_0;
  wire Y1__47_carry_i_3__2_n_0;
  wire Y1__47_carry_i_3_n_0;
  wire Y1__47_carry_i_4__0_n_0;
  wire Y1__47_carry_i_4__1_n_0;
  wire Y1__47_carry_i_4__2_n_0;
  wire Y1__47_carry_i_4_n_0;
  wire Y1__47_carry_i_5__0_n_0;
  wire Y1__47_carry_i_5__1_n_0;
  wire Y1__47_carry_i_5__2_n_0;
  wire Y1__47_carry_i_5_n_0;
  wire Y1__47_carry_i_6__0_n_0;
  wire Y1__47_carry_i_6__1_n_0;
  wire Y1__47_carry_i_6__2_n_0;
  wire Y1__47_carry_i_6_n_0;
  wire Y1__47_carry_i_7__0_n_0;
  wire Y1__47_carry_i_7__1_n_0;
  wire Y1__47_carry_i_7__2_n_0;
  wire Y1__47_carry_i_7_n_0;
  wire Y1__47_carry_i_8__0_n_0;
  wire Y1__47_carry_i_8__1_n_0;
  wire Y1__47_carry_i_8_n_0;
  wire Y1__47_carry_n_0;
  wire Y1__47_carry_n_1;
  wire Y1__47_carry_n_2;
  wire Y1__47_carry_n_3;
  wire Y1__63;
  wire Y1_carry__0_i_1_n_0;
  wire Y1_carry__0_i_2_n_0;
  wire Y1_carry__0_i_3_n_0;
  wire Y1_carry__0_i_4_n_0;
  wire Y1_carry__0_i_5_n_0;
  wire Y1_carry__0_i_6_n_0;
  wire Y1_carry__0_i_7_n_0;
  wire Y1_carry__0_i_8_n_0;
  wire Y1_carry__0_n_0;
  wire Y1_carry__0_n_1;
  wire Y1_carry__0_n_2;
  wire Y1_carry__0_n_3;
  wire Y1_carry__1_i_1_n_0;
  wire Y1_carry__1_i_2_n_0;
  wire Y1_carry__1_i_3_n_0;
  wire Y1_carry__1_i_4_n_0;
  wire Y1_carry__1_i_5_n_0;
  wire Y1_carry__1_i_6_n_0;
  wire Y1_carry__1_i_7_n_0;
  wire Y1_carry__1_i_8_n_0;
  wire Y1_carry__1_n_0;
  wire Y1_carry__1_n_1;
  wire Y1_carry__1_n_2;
  wire Y1_carry__1_n_3;
  wire Y1_carry__2_i_1_n_0;
  wire Y1_carry__2_i_2_n_0;
  wire Y1_carry__2_i_3_n_0;
  wire Y1_carry__2_i_4_n_0;
  wire Y1_carry__2_i_5_n_0;
  wire Y1_carry__2_i_6_n_0;
  wire Y1_carry__2_i_7_n_0;
  wire Y1_carry__2_n_1;
  wire Y1_carry__2_n_2;
  wire Y1_carry__2_n_3;
  wire Y1_carry_i_1_n_0;
  wire Y1_carry_i_2_n_0;
  wire Y1_carry_i_3_n_0;
  wire Y1_carry_i_4_n_0;
  wire Y1_carry_i_5_n_0;
  wire Y1_carry_i_6_n_0;
  wire Y1_carry_i_7_n_0;
  wire Y1_carry_i_8_n_0;
  wire Y1_carry_n_0;
  wire Y1_carry_n_1;
  wire Y1_carry_n_2;
  wire Y1_carry_n_3;
  wire [3:0]Y_OBUF;
  wire \b[2] ;
  wire \b[2]_0 ;
  wire \b[2]_1 ;
  wire [3:0]b_IBUF;
  wire [3:0]NLW_Y1__15_carry_O_UNCONNECTED;
  wire [3:0]NLW_Y1__15_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Y1__15_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Y1__15_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_Y1__31_carry_O_UNCONNECTED;
  wire [3:0]NLW_Y1__31_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Y1__31_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Y1__31_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_Y1__47_carry_O_UNCONNECTED;
  wire [3:0]NLW_Y1__47_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Y1__47_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Y1__47_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_Y1_carry_O_UNCONNECTED;
  wire [3:0]NLW_Y1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_Y1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_Y1_carry__2_O_UNCONNECTED;

  CARRY4 Y1__15_carry
       (.CI(1'b0),
        .CO({Y1__15_carry_n_0,Y1__15_carry_n_1,Y1__15_carry_n_2,Y1__15_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Y1__15_carry_i_1_n_0,Y1__15_carry_i_2_n_0,Y1__15_carry_i_3_n_0,Y1__15_carry_i_4_n_0}),
        .O(NLW_Y1__15_carry_O_UNCONNECTED[3:0]),
        .S({Y1__15_carry_i_5_n_0,Y1__15_carry_i_6_n_0,Y1__15_carry_i_7_n_0,Y1__15_carry_i_8_n_0}));
  CARRY4 Y1__15_carry__0
       (.CI(Y1__15_carry_n_0),
        .CO({Y1__15_carry__0_n_0,Y1__15_carry__0_n_1,Y1__15_carry__0_n_2,Y1__15_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__15_carry__0_i_1_n_0,Y1__15_carry__0_i_2_n_0,Y1__15_carry__0_i_3_n_0,Y1__15_carry__0_i_4_n_0}),
        .O(NLW_Y1__15_carry__0_O_UNCONNECTED[3:0]),
        .S({Y1__15_carry__0_i_5_n_0,Y1__15_carry__0_i_6_n_0,Y1__15_carry__0_i_7_n_0,Y1__15_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__0_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__0_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__0_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__0_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__0_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__0_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__0_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__0_i_8
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__0_i_8_n_0));
  CARRY4 Y1__15_carry__1
       (.CI(Y1__15_carry__0_n_0),
        .CO({Y1__15_carry__1_n_0,Y1__15_carry__1_n_1,Y1__15_carry__1_n_2,Y1__15_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__15_carry__1_i_1_n_0,Y1__15_carry__1_i_2_n_0,Y1__15_carry__1_i_3_n_0,Y1__15_carry__1_i_4_n_0}),
        .O(NLW_Y1__15_carry__1_O_UNCONNECTED[3:0]),
        .S({Y1__15_carry__1_i_5_n_0,Y1__15_carry__1_i_6_n_0,Y1__15_carry__1_i_7_n_0,Y1__15_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__1_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__1_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__1_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__1_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__1_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__1_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__1_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__1_i_8
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__1_i_8_n_0));
  CARRY4 Y1__15_carry__2
       (.CI(Y1__15_carry__1_n_0),
        .CO({Y14_in,Y1__15_carry__2_n_1,Y1__15_carry__2_n_2,Y1__15_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Y1__15_carry__2_i_1_n_0,Y1__15_carry__2_i_2_n_0,Y1__15_carry__2_i_3_n_0}),
        .O(NLW_Y1__15_carry__2_O_UNCONNECTED[3:0]),
        .S({Y1__15_carry__2_i_4_n_0,Y1__15_carry__2_i_5_n_0,Y1__15_carry__2_i_6_n_0,Y1__15_carry__2_i_7_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__2_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__2_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry__2_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__2_i_4
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__2_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__2_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry__2_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry__2_i_7_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    Y1__15_carry_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .O(Y1__15_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    Y1__15_carry_i_3
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    Y1__15_carry_i_4
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .O(Y1__15_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    Y1__15_carry_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[3]),
        .O(Y1__15_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    Y1__15_carry_i_7
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[1]),
        .O(Y1__15_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Y1__15_carry_i_8
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(Y1__15_carry_i_8_n_0));
  CARRY4 Y1__31_carry
       (.CI(1'b0),
        .CO({Y1__31_carry_n_0,Y1__31_carry_n_1,Y1__31_carry_n_2,Y1__31_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Y1__31_carry_i_1_n_0,Y1__31_carry_i_2_n_0,Y1__31_carry_i_3_n_0,Y1__31_carry_i_4_n_0}),
        .O(NLW_Y1__31_carry_O_UNCONNECTED[3:0]),
        .S({Y1__31_carry_i_5_n_0,Y1__31_carry_i_6_n_0,Y1__31_carry_i_7_n_0,Y1__31_carry_i_8_n_0}));
  CARRY4 Y1__31_carry__0
       (.CI(Y1__31_carry_n_0),
        .CO({Y1__31_carry__0_n_0,Y1__31_carry__0_n_1,Y1__31_carry__0_n_2,Y1__31_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__31_carry__0_i_1_n_0,Y1__31_carry__0_i_2_n_0,Y1__31_carry__0_i_3_n_0,Y1__31_carry__0_i_4_n_0}),
        .O(NLW_Y1__31_carry__0_O_UNCONNECTED[3:0]),
        .S({Y1__31_carry__0_i_5_n_0,Y1__31_carry__0_i_6_n_0,Y1__31_carry__0_i_7_n_0,Y1__31_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__0_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__0_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__0_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__0_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__0_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__0_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__0_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__0_i_8
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__0_i_8_n_0));
  CARRY4 Y1__31_carry__1
       (.CI(Y1__31_carry__0_n_0),
        .CO({Y1__31_carry__1_n_0,Y1__31_carry__1_n_1,Y1__31_carry__1_n_2,Y1__31_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__31_carry__1_i_1_n_0,Y1__31_carry__1_i_2_n_0,Y1__31_carry__1_i_3_n_0,Y1__31_carry__1_i_4_n_0}),
        .O(NLW_Y1__31_carry__1_O_UNCONNECTED[3:0]),
        .S({Y1__31_carry__1_i_5_n_0,Y1__31_carry__1_i_6_n_0,Y1__31_carry__1_i_7_n_0,Y1__31_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__1_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__1_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__1_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__1_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__1_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__1_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__1_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__1_i_8
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__1_i_8_n_0));
  CARRY4 Y1__31_carry__2
       (.CI(Y1__31_carry__1_n_0),
        .CO({Y11_in,Y1__31_carry__2_n_1,Y1__31_carry__2_n_2,Y1__31_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Y1__31_carry__2_i_1_n_0,Y1__31_carry__2_i_2_n_0,Y1__31_carry__2_i_3_n_0}),
        .O(NLW_Y1__31_carry__2_O_UNCONNECTED[3:0]),
        .S({Y1__31_carry__2_i_4_n_0,Y1__31_carry__2_i_5_n_0,Y1__31_carry__2_i_6_n_0,Y1__31_carry__2_i_7_n_0}));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__2_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__2_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry__2_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__2_i_4
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__2_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__2_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry__2_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEA)) 
    Y1__31_carry_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[2]),
        .O(Y1__31_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FF8)) 
    Y1__31_carry_i_3
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    Y1__31_carry_i_4
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(Y1__31_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry_i_5
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    Y1__31_carry_i_6
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[1]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[3]),
        .O(Y1__31_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8111)) 
    Y1__31_carry_i_7
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[1]),
        .I3(b_IBUF[0]),
        .O(Y1__31_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    Y1__31_carry_i_8
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .O(Y1__31_carry_i_8_n_0));
  CARRY4 Y1__47_carry
       (.CI(1'b0),
        .CO({Y1__47_carry_n_0,Y1__47_carry_n_1,Y1__47_carry_n_2,Y1__47_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Y1__47_carry_i_1__0_n_0,Y1__47_carry_i_2_n_0,Y1__47_carry_i_3_n_0,Y1__47_carry_i_4_n_0}),
        .O(NLW_Y1__47_carry_O_UNCONNECTED[3:0]),
        .S({Y1__47_carry_i_5_n_0,Y1__47_carry_i_6_n_0,Y1__47_carry_i_7_n_0,Y1__47_carry_i_8_n_0}));
  CARRY4 Y1__47_carry__0
       (.CI(Y1__47_carry_n_0),
        .CO({Y1__47_carry__0_n_0,Y1__47_carry__0_n_1,Y1__47_carry__0_n_2,Y1__47_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__47_carry_i_1__1_n_0,Y1__47_carry_i_2__0_n_0,Y1__47_carry_i_3__0_n_0,Y1__47_carry_i_4__1_n_0}),
        .O(NLW_Y1__47_carry__0_O_UNCONNECTED[3:0]),
        .S({Y1__47_carry_i_5__0_n_0,Y1__47_carry_i_6__0_n_0,Y1__47_carry_i_7__0_n_0,Y1__47_carry_i_8__0_n_0}));
  CARRY4 Y1__47_carry__1
       (.CI(Y1__47_carry__0_n_0),
        .CO({Y1__47_carry__1_n_0,Y1__47_carry__1_n_1,Y1__47_carry__1_n_2,Y1__47_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Y1__47_carry_i_1__2_n_0,Y1__47_carry_i_2__1_n_0,Y1__47_carry_i_3__1_n_0,Y1__47_carry_i_4__2_n_0}),
        .O(NLW_Y1__47_carry__1_O_UNCONNECTED[3:0]),
        .S({Y1__47_carry_i_5__1_n_0,Y1__47_carry_i_6__1_n_0,Y1__47_carry_i_7__1_n_0,Y1__47_carry_i_8__1_n_0}));
  CARRY4 Y1__47_carry__2
       (.CI(Y1__47_carry__1_n_0),
        .CO({Y1__63,Y1__47_carry__2_n_1,Y1__47_carry__2_n_2,Y1__47_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Y1__47_carry_i_1_n_0,Y1__47_carry_i_2__2_n_0,Y1__47_carry_i_3__2_n_0}),
        .O(NLW_Y1__47_carry__2_O_UNCONNECTED[3:0]),
        .S({Y1__47_carry_i_4__0_n_0,Y1__47_carry_i_5__2_n_0,Y1__47_carry_i_6__2_n_0,Y1__47_carry_i_7__2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_1
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_1__0
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_1__1
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_1__2
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_2
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_2__0
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_2__1
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_2__2
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_3__0
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_3__1
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_3__2
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    Y1__47_carry_i_4
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .O(Y1__47_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_4__0
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_4__1
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1__47_carry_i_4__2
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_5
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_5__0
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_5__1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_5__2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_6
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_6__0
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_6__1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_6__2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_7
       (.I0(b_IBUF[2]),
        .I1(b_IBUF[3]),
        .O(Y1__47_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_7__0
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_7__1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_7__2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    Y1__47_carry_i_8
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(Y1__47_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_8__0
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1__47_carry_i_8__1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .O(Y1__47_carry_i_8__1_n_0));
  CARRY4 Y1_carry
       (.CI(1'b0),
        .CO({Y1_carry_n_0,Y1_carry_n_1,Y1_carry_n_2,Y1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({Y1_carry_i_1_n_0,Y1_carry_i_2_n_0,Y1_carry_i_3_n_0,Y1_carry_i_4_n_0}),
        .O(NLW_Y1_carry_O_UNCONNECTED[3:0]),
        .S({Y1_carry_i_5_n_0,Y1_carry_i_6_n_0,Y1_carry_i_7_n_0,Y1_carry_i_8_n_0}));
  CARRY4 Y1_carry__0
       (.CI(Y1_carry_n_0),
        .CO({Y1_carry__0_n_0,Y1_carry__0_n_1,Y1_carry__0_n_2,Y1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({Y1_carry__0_i_1_n_0,Y1_carry__0_i_2_n_0,Y1_carry__0_i_3_n_0,Y1_carry__0_i_4_n_0}),
        .O(NLW_Y1_carry__0_O_UNCONNECTED[3:0]),
        .S({Y1_carry__0_i_5_n_0,Y1_carry__0_i_6_n_0,Y1_carry__0_i_7_n_0,Y1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__0_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__0_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__0_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__0_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__0_i_5
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__0_i_6
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__0_i_7
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__0_i_8
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__0_i_8_n_0));
  CARRY4 Y1_carry__1
       (.CI(Y1_carry__0_n_0),
        .CO({Y1_carry__1_n_0,Y1_carry__1_n_1,Y1_carry__1_n_2,Y1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Y1_carry__1_i_1_n_0,Y1_carry__1_i_2_n_0,Y1_carry__1_i_3_n_0,Y1_carry__1_i_4_n_0}),
        .O(NLW_Y1_carry__1_O_UNCONNECTED[3:0]),
        .S({Y1_carry__1_i_5_n_0,Y1_carry__1_i_6_n_0,Y1_carry__1_i_7_n_0,Y1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__1_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__1_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__1_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__1_i_4
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__1_i_5
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__1_i_6
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__1_i_7
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__1_i_8
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__1_i_8_n_0));
  CARRY4 Y1_carry__2
       (.CI(Y1_carry__1_n_0),
        .CO({Y17_in,Y1_carry__2_n_1,Y1_carry__2_n_2,Y1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Y1_carry__2_i_1_n_0,Y1_carry__2_i_2_n_0,Y1_carry__2_i_3_n_0}),
        .O(NLW_Y1_carry__2_O_UNCONNECTED[3:0]),
        .S({Y1_carry__2_i_4_n_0,Y1_carry__2_i_5_n_0,Y1_carry__2_i_6_n_0,Y1_carry__2_i_7_n_0}));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__2_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__2_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry__2_i_3
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__2_i_4
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__2_i_5
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__2_i_6
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry__2_i_7
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry_i_1
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Y1_carry_i_2
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h1FFE)) 
    Y1_carry_i_3
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    Y1_carry_i_4
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(Y1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry_i_5
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    Y1_carry_i_6
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .I2(b_IBUF[2]),
        .I3(b_IBUF[3]),
        .O(Y1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8881)) 
    Y1_carry_i_7
       (.I0(b_IBUF[3]),
        .I1(b_IBUF[2]),
        .I2(b_IBUF[0]),
        .I3(b_IBUF[1]),
        .O(Y1_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    Y1_carry_i_8
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[0]),
        .O(Y1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h111111111F111111)) 
    \Y_OBUF[0]_inst_i_1 
       (.I0(A_IBUF[0]),
        .I1(OP_IBUF),
        .I2(OP),
        .I3(\b[2] ),
        .I4(Y17_in),
        .I5(\A[1] ),
        .O(Y_OBUF[0]));
  LUT6 #(
    .INIT(64'h1111111111111F11)) 
    \Y_OBUF[1]_inst_i_1 
       (.I0(A_IBUF[1]),
        .I1(OP_IBUF),
        .I2(OP_1),
        .I3(Y14_in),
        .I4(\b[2]_1 ),
        .I5(\A[2] ),
        .O(Y_OBUF[1]));
  LUT6 #(
    .INIT(64'h1111111111111F11)) 
    \Y_OBUF[2]_inst_i_1 
       (.I0(A_IBUF[2]),
        .I1(OP_IBUF),
        .I2(OP_0),
        .I3(Y11_in),
        .I4(\b[2]_0 ),
        .I5(\A[1]_0 ),
        .O(Y_OBUF[2]));
  LUT5 #(
    .INIT(32'h00550C55)) 
    \Y_OBUF[3]_inst_i_1 
       (.I0(A_IBUF[3]),
        .I1(Y1__63),
        .I2(b_IBUF[2]),
        .I3(OP_IBUF),
        .I4(\A[3] ),
        .O(Y_OBUF[3]));
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
