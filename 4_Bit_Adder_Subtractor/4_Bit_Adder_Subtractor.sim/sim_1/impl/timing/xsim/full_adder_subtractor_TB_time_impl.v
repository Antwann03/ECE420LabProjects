// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Oct 16 21:30:22 2024
// Host        : DESKTOP-8R40T2G running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/ECE420/4_Bit_Adder_Subtractor/4_Bit_Adder_Subtractor.sim/sim_1/impl/timing/xsim/full_adder_subtractor_TB_time_impl.v
// Design      : full_adder_subtractor
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "f604e02f" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module full_adder_subtractor
   (A,
    B,
    K,
    Cin,
    Sum,
    Cout);
  input [3:0]A;
  input [3:0]B;
  input K;
  input Cin;
  output [3:0]Sum;
  output Cout;

  wire [3:0]A;
  wire [3:0]A_IBUF;
  wire [3:0]B;
  wire [3:0]B_IBUF;
  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire Cout_temp_1;
  wire K;
  wire K_IBUF;
  wire [3:0]Sum;
  wire [3:0]Sum_OBUF;

initial begin
 $sdf_annotate("full_adder_subtractor_TB_time_impl.sdf",,,,"tool_control");
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
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    Cout_OBUF_inst_i_1
       (.I0(A_IBUF[3]),
        .I1(K_IBUF),
        .I2(B_IBUF[2]),
        .I3(Cout_temp_1),
        .I4(A_IBUF[2]),
        .I5(B_IBUF[3]),
        .O(Cout_OBUF));
  IBUF K_IBUF_inst
       (.I(K),
        .O(K_IBUF));
  OBUF \Sum_OBUF[0]_inst 
       (.I(Sum_OBUF[0]),
        .O(Sum[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \Sum_OBUF[0]_inst_i_1 
       (.I0(B_IBUF[0]),
        .I1(K_IBUF),
        .I2(A_IBUF[0]),
        .I3(Cin_IBUF),
        .O(Sum_OBUF[0]));
  OBUF \Sum_OBUF[1]_inst 
       (.I(Sum_OBUF[1]),
        .O(Sum[1]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \Sum_OBUF[1]_inst_i_1 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(A_IBUF[0]),
        .I3(Cin_IBUF),
        .I4(B_IBUF[0]),
        .I5(K_IBUF),
        .O(Sum_OBUF[1]));
  OBUF \Sum_OBUF[2]_inst 
       (.I(Sum_OBUF[2]),
        .O(Sum[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \Sum_OBUF[2]_inst_i_1 
       (.I0(B_IBUF[2]),
        .I1(K_IBUF),
        .I2(A_IBUF[2]),
        .I3(Cout_temp_1),
        .O(Sum_OBUF[2]));
  OBUF \Sum_OBUF[3]_inst 
       (.I(Sum_OBUF[3]),
        .O(Sum[3]));
  LUT6 #(
    .INIT(64'h6999666999969666)) 
    \Sum_OBUF[3]_inst_i_1 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(A_IBUF[2]),
        .I3(Cout_temp_1),
        .I4(B_IBUF[2]),
        .I5(K_IBUF),
        .O(Sum_OBUF[3]));
  LUT6 #(
    .INIT(64'hBB3A3A22EEACAC88)) 
    \Sum_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(K_IBUF),
        .I2(B_IBUF[0]),
        .I3(Cin_IBUF),
        .I4(A_IBUF[0]),
        .I5(B_IBUF[1]),
        .O(Cout_temp_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
