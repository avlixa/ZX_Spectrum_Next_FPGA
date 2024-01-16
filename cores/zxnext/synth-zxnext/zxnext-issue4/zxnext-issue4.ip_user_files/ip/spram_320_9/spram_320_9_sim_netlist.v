// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:33:28 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/spram_320_9_synth_1/spram_320_9_sim_netlist.v
// Design      : spram_320_9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "spram_320_9,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module spram_320_9
   (a,
    d,
    clk,
    we,
    spo);
  input [8:0]a;
  input [8:0]d;
  input clk;
  input we;
  output [8:0]spo;

  wire [8:0]a;
  wire clk;
  wire [8:0]d;
  wire [8:0]spo;
  wire we;
  wire [8:0]NLW_U0_dpo_UNCONNECTED;
  wire [8:0]NLW_U0_qdpo_UNCONNECTED;
  wire [8:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "9" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "320" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "9" *) 
  (* is_du_within_envelope = "true" *) 
  spram_320_9_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[8:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[8:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[8:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2019.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
GxqA6ShybXzGX4SNuhZkgD2SfOuwDYSzjnHIzDz0NN2q/uX43CoUMt0L0xBGvUsa03MpmRUjohf7
RdQy3qKtvQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
AStGBi6dS/Pu8paudHFxlgoOUwiUG1xTKkUjscVJKbrztKTibNt5odE52tzbrf+TesjO4JiOib8i
0Jey1TL5RM52iOhyFipAueZE/1eeS8O2cWH4OX9ivJeL0THyXZgGKpsMQCYGLyjhMxSLxlVPoV94
fB5JulLJldV7LL+r0QY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EhEa53IbhFK8aH+jEkH9mB6vKemg7bdjNbNbMbNEUK7N+hEAQRxkwZz2tfm3qzUwBD7Hw3Spkyr0
mM4971brJyOIjG3WpVKqmHB45b7aVdWQN9gfE+d7N448c4h/eDZvaYQKQUUIgV9WCMcfD/mXsLEk
V1bEiMJXC6DvzwzhHsFPwYzBWYSGxJahZlyONurjgDNecV9lDxESnU2sXrRvrx6vqLKRU8fJGd82
nUvJqlKVbHbAH75O6ywJ8SuW6yVGMc08qJTVBFU1p55dzlQxemWLGvnBSFi0Y54eAI9o4d6yR1EK
PE2dH8oJTtYhXQBUlL3BoD3MpzMGMoTHU/6juQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRxYOjLrYRCvkxF50wuZS9soahAbHJR1U3PA3Oz/HM20BuknrOjgadjwYPKFk7QpQX0HJoufYAKu
VNL4Vcj4ePmhgdkE0/GdjfJaHnc3VJeCpDl9b2bpihBhnZnf/JbpU9QlDLMFdtBaQESF2F2TnZb1
0/JZYr3D8kgSN59mmtBoJAUZVQ09ykROPpiNtW1Ta5TDYPX6Lru7pRCLZMNNt5P9tyhEZ1c/Ynu1
w1M16hPaIjCuj4SgRuFluBvoL5ybQNlZeosBwRCD6ZmUoR0FxueGZN0D2t3FdRy7+8KFu8grCQK6
+zu4KIxt3Nf7gJeOO/mdiVPcTUorAvBjueTVXQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_02", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
N9TEIv2s4qLNbOamPB+iHsr/skKamzTWWLSQDVGwlSIUkPf7ZdV+br6WAhtBWGDdBtBk+tWj/sn+
m5TbL+jPJQSVLASsDKdp3z/AB5UOFxQ3XGJUBQhs+d+OH2CNamt97mOQamSOh/HonTpnIdNDxJhL
hUfTnXv2cPlTO7Hw/PqmH6JabR8MdbXbEx1t27aR7ZBt+x/IIqUiMvKNX1DuBCxPWJuL9YI6OqWS
JvJf9Zuw1WIWtrsWK9X0LqMlrsqwWGMwHlRj+vIJzFOBErtExTXxwxS2FImyG1YbPcTlj+7UmsK0
k8HlCh1ifM6NNWzWJ479zwyEl95M2qNPLBOBHQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fKOwMyWryYahcHknLtf6MHFeCSya6sCMrRVc3/N1IsZc7Gg61FyzwRaSFbGF7R5xhIZfLm15HGaX
vTHfmV7inaTJVMSyZoqk4EBdf5xMaDrL/vPHM6XAjSK8itKAwn+syrnhPkkU+uIBovqDFujwHFmH
dvvR/RAnF5Zw84L3pR8=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jN7WIyrArXu/q301RElviMDMHxQ+PHXin6Y/rmUfCm6hOg5LX3MY3tW0Ig/kDvXGK7sYck2MxDKU
3Vq+gXojG27PDtvlx7RXPpliasPoreafttcWcTrXXHIroTiCWvjO8tFf75MuTX7VAm9Pk8pg1n41
5f0H9XyCdZgqXl3KlJPydlYcXkvUp57cxr8s8kPgNxK49yl/PLcyHGTpM75hdp8mhV/3k3ZYL2cj
X0KK7Umg/OiyLKxHClvY5KMmaeLrou6mvz7HWnwXm1pc6EnOCGeUGGxFYIbOY+8n7VJJAt4ZIafG
IliQdJIa+jcbu/rEUwjdoxtcC+YkjnZZ4zTPHA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
krOfV0etxNMBgHmB9eikWXkLasaz1ND/SLufPd/5MOv2M7uej5fEBgQlzj+OuyvTXpveIP+NESly
0Vpu45HLM3fWu0s5M9wZLfTM5jw/Q2YdiFPqaTBR1nbl8nzQScdbU+XIpP9l377SjU4vO1D5Tv5A
5kdkA3Z47QhtfnViEMmAm43DvyK0YzUy0U/nc5QrfVtpQDtwcVbXLkkl880fyRloUBtBiIeVNPxr
DaSOede4kzdyDEf0vnouHqRrLk8j4LAsoolvfTWXI9AFDt7TVAv1Xvnj17Z+84jZMYRpOd3EiGHb
WuKPk2F0XUIO+DOHFvJwDBmzbwkIvmn9PRwMpg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18896)
`pragma protect data_block
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
yv1FbNmOyAsDFDDFLjI6Qk/+yHcBvGvd7k492Gk=
`pragma protect end_protected
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
