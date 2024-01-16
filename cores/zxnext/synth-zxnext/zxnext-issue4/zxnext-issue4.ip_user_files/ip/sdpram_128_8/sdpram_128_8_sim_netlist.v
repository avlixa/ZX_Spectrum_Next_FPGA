// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:33:28 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/sdpram_128_8_synth_1/sdpram_128_8_sim_netlist.v
// Design      : sdpram_128_8
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sdpram_128_8,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module sdpram_128_8
   (a,
    d,
    dpra,
    clk,
    we,
    dpo);
  input [6:0]a;
  input [7:0]d;
  input [6:0]dpra;
  input clk;
  input we;
  output [7:0]dpo;

  wire [6:0]a;
  wire clk;
  wire [7:0]d;
  wire [7:0]dpo;
  wire [6:0]dpra;
  wire we;
  wire [7:0]NLW_U0_qdpo_UNCONNECTED;
  wire [7:0]NLW_U0_qspo_UNCONNECTED;
  wire [7:0]NLW_U0_spo_UNCONNECTED;

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
  (* c_addr_width = "7" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "128" *) 
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
  (* c_width = "8" *) 
  (* is_du_within_envelope = "true" *) 
  sdpram_128_8_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[7:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[7:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[7:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13552)
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
