set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:1 order:LATE scoped_inst:inst/u_axis2pix_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst unmanaged:yes} [current_design]
set_property SRC_FILE_INFO {cfile:D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl rfile:D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/tcl/xpm_cdc_gray.tcl id:2 order:LATE scoped_inst:inst/u_axis2pix_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst unmanaged:yes} [current_design]
current_instance inst/u_axis2pix_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:1 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
current_instance
current_instance inst/u_axis2pix_fifo/U0/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_cdc_inst
set_property src_info {type:SCOPED_XDC file:2 line:16 export:INPUT save:NONE read:READ} [current_design]
set_bus_skew -from [get_cells src_gray_ff_reg*] -to [get_cells {dest_graysync_ff_reg[0]*}] 1000.000
