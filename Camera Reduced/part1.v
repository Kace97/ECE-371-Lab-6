module part1 (CLOCK_50, CLOCK2_50, KEY, FPGA_I2C_SCLK, FPGA_I2C_SDAT, AUD_XCK, 
		        AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK, AUD_ADCDAT, AUD_DACDAT, SW);

	input CLOCK_50, CLOCK2_50;
	input [3:0] KEY;
	input [1:0] SW;
	// I2C Audio/Video config interface
	output FPGA_I2C_SCLK;
	inout FPGA_I2C_SDAT;
	// Audio CODEC
	output AUD_XCK;
	inout AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK;
	inout AUD_ADCDAT;
	output AUD_DACDAT;
	
	// Local wires.
	wire read_ready, write_ready, read, write;
	wire [23:0] readdata_left, readdata_right;
	wire [23:0] writedata_left, writedata_right;
	wire reset = ~KEY[0];

	/////////////////////////////////
	// Your code goes here 
	/////////////////////////////////
	
	wire button_left, button_right;
	wire [23:0] wave_left, wave_right;
	reg [23:0]	wave_sel;
	assign button_left = SW[1];
	assign button_right = SW[0];
	always begin
		if(button_left) wave_sel = wave_left;
		else if (button_right) wave_sel = wave_right;
		else wave_sel =  0;
	
	end//always
	
	//assignments
	wave_generator wave1 (.clk(CLOCK_50), .reset(reset), .en(1'b1), .wave(wave_left));
		defparam wave1.N =15;
	wave_generator wave2 (.clk(CLOCK_50), .reset(reset), .en(1'b1), .wave(wave_right));
	
	
	assign writedata_left = wave_sel;
	assign writedata_right = wave_sel;
	assign read = read_ready;
	assign write = write_ready;
	
/////////////////////////////////////////////////////////////////////////////////
// Audio CODEC interface. 
//
// The interface consists of the following wires:
// read_ready, write_ready - CODEC ready for read/write operation 
// readdata_left, readdata_right - left and right channel data from the CODEC
// read - send data from the CODEC (both channels)
// writedata_left, writedata_right - left and right channel data to the CODEC
// write - send data to the CODEC (both channels)
// AUD_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio CODEC
// I2C_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio/Video Config module
/////////////////////////////////////////////////////////////////////////////////
	clock_generator my_clock_gen(
		// inputs
		CLOCK2_50,
		reset,

		// outputs
		AUD_XCK
	);

	audio_and_video_config cfg(
		// Inputs
		CLOCK_50,
		reset,

		// Bidirectionals
		FPGA_I2C_SDAT,
		FPGA_I2C_SCLK
	);

	audio_codec codec(
		// Inputs
		CLOCK_50,
		reset,

		read,	write,
		writedata_left, writedata_right,

		AUD_ADCDAT,

		// Bidirectionals
		AUD_BCLK,
		AUD_ADCLRCK,
		AUD_DACLRCK,

		// Outputs
		read_ready, write_ready,
		readdata_left, readdata_right,
		AUD_DACDAT
	);

endmodule

