// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:33:28 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/sdpram_16_9_synth_1/sdpram_16_9_sim_netlist.v
// Design      : sdpram_16_9
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram_16_9,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module sdpram_16_9
   (a,
    d,
    dpra,
    clk,
    we,
    dpo);
  input [3:0]a;
  input [8:0]d;
  input [3:0]dpra;
  input clk;
  input we;
  output [8:0]dpo;

  wire [3:0]a;
  wire clk;
  wire [8:0]d;
  wire [8:0]dpo;
  wire [3:0]dpra;
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
  (* c_addr_width = "4" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "16" *) 
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
  sdpram_16_9_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7520)
`pragma protect data_block
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
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
