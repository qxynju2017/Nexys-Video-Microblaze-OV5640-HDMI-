// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Mar 21 18:28:49 2020
// Host        : LAPTOP-HU0R68OD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/FPGA_Test/3_Study/nexys_video_microblaze_ov5640_20200321/project_1/project_1.srcs/sources_1/bd/design_1/ip/design_1_OV_Sensor_ML_0_0/design_1_OV_Sensor_ML_0_0_stub.v
// Design      : design_1_OV_Sensor_ML_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tsbg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "OV_Sensor_ML,Vivado 2018.2" *)
module design_1_OV_Sensor_ML_0_0(CLK_i, cmos_vsync_i, cmos_href_i, cmos_pclk_i, 
  cmos_xclk_o, cmos_data_i, hs_o, vs_o, rgb_o, vid_clk_ce)
/* synthesis syn_black_box black_box_pad_pin="CLK_i,cmos_vsync_i,cmos_href_i,cmos_pclk_i,cmos_xclk_o,cmos_data_i[7:0],hs_o,vs_o,rgb_o[23:0],vid_clk_ce" */;
  input CLK_i;
  input cmos_vsync_i;
  input cmos_href_i;
  input cmos_pclk_i;
  output cmos_xclk_o;
  input [7:0]cmos_data_i;
  output hs_o;
  output vs_o;
  output [23:0]rgb_o;
  output vid_clk_ce;
endmodule
