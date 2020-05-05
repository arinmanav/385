//-------------------------------------------------------------------------
//    Color_Mapper.sv                                                    --
//    Stephen Kempf                                                      --
//    3-1-06                                                             --
//                                                                       --
//    Modified by David Kesler  07-16-2008                               --
//    Translated by Joe Meng    07-07-2013                               --
//    Modified by Po-Han Huang  10-06-2017                               --
//                                                                       --
//    Fall 2017 Distribution                                             --
//                                                                       --
//    For use with ECE 385 Lab 8                                         --
//    University of Illinois ECE Department                              --
//-------------------------------------------------------------------------

// color_mapper: Decide which color to be output to VGA for each pixel.
module  color_mapper ( input              is_pacman, is_dot, is_maze           // Whether current pixel belongs to pacman 
                                                              //   or background (computed in pacman.sv)
                       input        [9:0] DrawX, DrawY,       // Current pixel coordinates
					   input		[18:0] player_address,
					   input		[18:0] pacman_x, pacman_y,
                       output logic [7:0] VGA_R, VGA_G, VGA_B, // VGA RGB output
					   input logic [1:0] data_out
                     );
    
    logic [7:0] Red, Green, Blue;
	logic [18:0] read_address_pacman, read_address_dot, read_address_maze;
	logic [18:0] maze_start_addr, pacman_start_addr, dot_start_addr;
    
    // Output colors to VGA
    assign VGA_R = Red;
    assign VGA_G = Green;
    assign VGA_B = Blue;
	
    
    // Assign color based on is_pacman signal
    always_comb
    begin
        if (is_pacman == 2'b01) 
        begin
			if(is_maze == 2'b00)
			begin
				if(data_out == 2'b01)
				begin
				// yellow pacman
				Red = 8'hff;
				Green = 8'hfb;
				Blue = 8'h00;
				end
			end
        end
		else if(is_dot == 2'b01)
		begin
			if(data_out == 2'b01 || data_out == 2'b10)
			begin
			//white dot
			Red = 8'hff;
            Green = 8'hff;
            Blue = 8'hff;
			end
		end
			
        else if(is_maze == 2'b01)
        begin
			if(data_out == 2'b01)
			begin
            //blue maze walls
            Red = 8'h00; 
            Green = 8'h80;
            Blue = 8'hf8;
			end
			//pink maze wall (ghost door)
			else if(data_out == 2'b10)
			begin
			Red = 8'hff; 
            Green = 8'ha1;
            Blue = 8'hcd;
			end
			//black background
			else if(data_out == 2'b00)
			begin
			Red = 8'h00; 
            Green = 8'h00;
            Blue = 8'h00;
			end
        end
    end 
    
endmodule
