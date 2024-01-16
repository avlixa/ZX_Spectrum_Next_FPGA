// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:33:28 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/sdpram_64_9_synth_1/sdpram_64_9_sim_netlist.v
// Design      : sdpram_64_9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram_64_9,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module sdpram_64_9
   (a,
    d,
    dpra,
    clk,
    we,
    dpo);
  input [5:0]a;
  input [8:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  output [8:0]dpo;

  wire [5:0]a;
  wire clk;
  wire [8:0]d;
  wire [8:0]dpo;
  wire [5:0]dpra;
  wire we;
  wire [8:0]NLW_U0_qdpo_UNCONNECTED;
  wire [8:0]NLW_U0_qspo_UNCONNECTED;
  wire [8:0]NLW_U0_spo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "1" *) 
  (* C_HAS_DPRA = "1" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_QSPO = "0" *) 
  (* C_HAS_QSPO_RST = "0" *) 
  (* C_HAS_QSPO_SRST = "0" *) 
  (* C_HAS_SPO = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "4" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "9" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram_64_9_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
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
        .spo(NLW_U0_spo_UNCONNECTED[8:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8096)
`pragma protect data_block
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
r7I=
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
