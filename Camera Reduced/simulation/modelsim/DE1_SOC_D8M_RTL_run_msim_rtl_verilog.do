transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/DE1_SOC_D8M_RTL.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/CLOCK_DELAY.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/VGA_RD_COUNTER.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/I2C_WRITE_WDATA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/I2C_WRITE_PTR.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/I2C_RESET_DELAY.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/I2C_READ_DATA.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/pll_test.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/RESET_DELAY.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/CLOCKMEM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/RAW2RGB_J.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/RAW_RGB_BIN.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/MIPI_CAMERA_CONFIG.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/MIPI_BRIDGE_CONFIG.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/MIPI_BRIDGE_CAMERA_Config.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/Line_Buffer_J.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_D8M {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_D8M/int_line.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/VCM_I2C.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/VCM_CTRL_P.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/MODIFY_SYNC.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/LCD_COUNTER.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/I2C_DELAY.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/FOCUS_ADJ.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/F_VCM.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/AUTO_SYNC_MODIFY.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Auto {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Auto/AUTO_FOCUS_ON.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/Sdram_WR_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/Sdram_RD_FIFO.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/VIDEO_PLL.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/ps2.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/db {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/db/pll_test_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/db {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/db/video_pll_altpll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/db {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/db/sdram_pll_altpll.v}
vlib sdram_pll
vmap sdram_pll sdram_pll
vlog -vlog01compat -work sdram_pll +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V/sdram_pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/VGA_Controller {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/VGA_Controller/VGA_Controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/Sdram_Control.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/sdr_data_path.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/control_interface.v}
vlog -vlog01compat -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced/V_Sdram_Control {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/V_Sdram_Control/command.v}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/color_choosing.sv}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/Filter.sv}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/inputff.sv}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/paint_RAM.sv}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/hex_display.sv}
vlog -sv -work work +incdir+C:/Users/Jing\ Jie/Documents/Courses/19\ Sp/EE\ 371/Lab\ 6/Camera\ Reduced {C:/Users/Jing Jie/Documents/Courses/19 Sp/EE 371/Lab 6/Camera Reduced/inpuT.sv}

