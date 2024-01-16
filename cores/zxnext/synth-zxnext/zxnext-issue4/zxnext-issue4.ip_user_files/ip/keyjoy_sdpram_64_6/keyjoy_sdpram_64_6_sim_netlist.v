// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:35:39 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/keyjoy_sdpram_64_6_synth_1/keyjoy_sdpram_64_6_sim_netlist.v
// Design      : keyjoy_sdpram_64_6
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "keyjoy_sdpram_64_6,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module keyjoy_sdpram_64_6
   (a,
    d,
    dpra,
    clk,
    we,
    dpo);
  input [5:0]a;
  input [5:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  output [5:0]dpo;

  wire [5:0]a;
  wire clk;
  wire [5:0]d;
  wire [5:0]dpo;
  wire [5:0]dpra;
  wire we;
  wire [5:0]NLW_U0_qdpo_UNCONNECTED;
  wire [5:0]NLW_U0_qspo_UNCONNECTED;
  wire [5:0]NLW_U0_spo_UNCONNECTED;

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
  (* c_mem_init_file = "keyjoy_sdpram_64_6.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qce_joined = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "6" *) 
  (* is_du_within_envelope = "true" *) 
  keyjoy_sdpram_64_6_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(dpo),
        .dpra(dpra),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[5:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[5:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(NLW_U0_spo_UNCONNECTED[5:0]),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 6336)
`pragma protect data_block
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
IUSf4i+TyZS8
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
