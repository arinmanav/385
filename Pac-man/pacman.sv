
module  pacman ( input         Clk,                // 50 MHz clock
                             Reset,              // Active-high reset signal
                             frame_clk,          // The clock indicating a new frame (~60Hz)
               input [9:0]   DrawX, DrawY,       // Current pixel coordinates
               output logic  is_pacman,             // Whether current pixel belongs to pacman or background
			   input logic [9:0]  wall_left,
			   input logic [9:0]  wall_righ,
			   input logic [9:0]  wall_down,
			   input logic [9:0]  wall_up,
			   output logic [9:0] pacman_X_Pos,
			   output logic [9:0] pacman_Y_Pos
              );
    
    parameter [9:0] pacman_X_up_left = 10'd6;
    parameter [9:0] pacman_Y_up_left= 10'd7;

    parameter [9:0] pacman_X_Step = 10'd16;      // Step size on the X axis
    parameter [9:0] pacman_Y_Step = 10'd16;      // Step size on the Y axis
    parameter [9:0] pacman_Size = 10'd256;        // pacman size
    
    logic [9:0] pacman_X_Pos, pacman_X_Motion, pacman_Y_Pos, pacman_Y_Motion;
    logic [9:0] pacman_X_Pos_in, pacman_X_Motion_in, pacman_Y_Pos_in, pacman_Y_Motion_in;
	
	
	////////////!!!!!!!!!!!*****CHANGE READ ADDRESS HERE (ASK THIS PART) !!!!!!!!!!********////////////
	//////////////////////////////    !!!!!!!!!!!!     ////////////////////
    
    //////// Do not modify the always_ff blocks. ////////
    // Detect rising edge of frame_clk
    logic frame_clk_delayed, frame_clk_rising_edge;
    always_ff @ (posedge Clk) begin
        frame_clk_delayed <= frame_clk;
        frame_clk_rising_edge <= (frame_clk == 1'b1) && (frame_clk_delayed == 1'b0);
    end
    // Update registers
    always_ff @ (posedge Clk)
    begin
        if (Reset)
        begin
            pacman_X_Pos <= pacman_X_up_left;
            pacman_Y_Pos <= pacman_Y_up_left;
            pacman_X_Motion <= 10'd0;
            pacman_Y_Motion <= 10'd0;
        end
        if(wall_left == 1'b0 && wall_right == 1'b0 && wall_down == 1'b0 && wall_up == 1'b0)
		begin
		pacman_X_Pos <= pacman_X_Pos_in;
        pacman_Y_Pos <= pacman_Y_Pos_in;
        pacman_X_Motion <= pacman_X_Motion_in;
        pacman_Y_Motion <= pacman_Y_Motion_in;    
        end
		
		if(wall_left == 1'b1 && wall_right == 1'b0 && wall_down == 1'b0 && wall_up == 1'b0)
		begin
			if(pacman_X_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;  
			end
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
        end
		
		if(wall_left == 1'b0 && wall_right == 1'b1 && wall_down == 1'b0 && wall_up == 1'b0)
		begin
			if(pacman_X_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;  
			end
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in;  
			end
        end
		
		if(wall_left == 1'b0 && wall_right == 1'b0 && wall_down == 1'b1 && wall_up == 1'b0)
		begin
			if(pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;    
			end
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in;
			end
        end
		
		if(wall_left == 1'b0 && wall_right == 1'b0 && wall_down == 1'b0 && wall_up == 1'b1)
		begin
			if(pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
        end
		
		if(wall_left == 1'b1 && wall_right == 1'b1 && wall_down == 1'b0 && wall_up == 1'b0)
		begin
		pacman_X_Pos <= pacman_X_Pos_in;
		pacman_Y_Pos <= pacman_Y_Pos_in;
		pacman_X_Motion <= 1'b0;
		pacman_Y_Motion <= pacman_Y_Motion_in;   
        end
		
		if(wall_left == 1'b1 && wall_right == 1'b0 && wall_down == 1'b1 && wall_up == 1'b0)
		begin  
			if(pacman_X_Motion_in > 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			if (pacman_X_Motion_in < 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			if (pacman_X_Motion_in < 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0;   
			end
		end
	
		if(wall_left == 1'b1 && wall_right == 1'b0 && wall_down == 1'b0 && wall_up == 1'b1)
			begin
			if(pacman_X_Motion_in > 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
				
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			if (pacman_X_Motion_in < 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			if (pacman_X_Motion_in < 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0;   
			end
		end
		
		  if(wall_left == 1'b0 && wall_right == 1'b0 && wall_down == 1'b1 && wall_up == 1'b1)
		begin
		pacman_X_Pos <= pacman_X_Pos_in;
        pacman_Y_Pos <= pacman_Y_Pos_in;
        pacman_X_Motion <= pacman_X_Motion_in;
        pacman_Y_Motion <= 1'b0;    
        end
		
		if(wall_left == 1'b0 && wall_right == 1'b1 && wall_down == 1'b1 && wall_up == 1'b0)
		begin  
			if(pacman_X_Motion_in < 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0;   
			end
		end
		
		if(wall_left == 1'b0 && wall_right == 1'b1 && wall_down == 1'b0 && wall_up == 1'b1)
		begin  
			if(pacman_X_Motion_in < 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= pacman_Y_Motion_in; 
			end
			
			if (pacman_X_Motion_in < 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			if (pacman_X_Motion_in > 0 && pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0;   
			end
		end
		
		if(wall_left == 1'b1 && wall_right == 1'b1 && wall_down == 1'b0 && wall_up == 1'b1)
			begin
			if(pacman_Y_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0; 
			end
		end
		
		if(wall_left == 1'b1 && wall_right == 1'b1 && wall_down == 1'b1 && wall_up == 1'b0)
			begin
			if(pacman_Y_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= pacman_Y_Motion_in;   
			end
			
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0; 
			end
		end
		
	    if(wall_left == 1'b1 && wall_right == 1'b0 && wall_down == 1'b1 && wall_up == 1'b1)
			begin
			if(pacman_x_Motion_in > 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0; 
			end
		end
		
		if(wall_left == 1'b0 && wall_right == 1'b1 && wall_down == 1'b1 && wall_up == 1'b1)
			begin
			if(pacman_x_Motion_in < 0)
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= pacman_X_Motion_in;
			pacman_Y_Motion <= 1'b0;   
			end
			
			else
			begin
			pacman_X_Pos <= pacman_X_Pos_in;
			pacman_Y_Pos <= pacman_Y_Pos_in;
			pacman_X_Motion <= 1'b0;
			pacman_Y_Motion <= 1'b0; 
			end
		end
		
    end
    //////// Do not modify the always_ff blocks. ////////
    
    // You need to modify always_comb block.
    always_comb
    begin
        // By default, keep motion and position unchanged
        pacman_X_Pos_in = pacman_X_Pos;
        pacman_Y_Pos_in = pacman_Y_Pos;
        pacman_X_Motion_in = pacman_X_Motion;
        pacman_Y_Motion_in = pacman_Y_Motion;
        
        // Update position and motion only at rising edge of frame clock
        if (frame_clk_rising_edge)
        begin
			pacman_X_Motion_in = pacman_X_Step;
			pacman_Y_Motion_in = pacman_Y_Step;
            // Update the pacman's position with its motion
            pacman_X_Pos_in = pacman_X_Pos + pacman_X_Motion;
            pacman_Y_Pos_in = pacman_Y_Pos + pacman_Y_Motion;
        end

    end
    
    // Compute whether the pixel corresponds to pacman or background
    /* Since the multiplicants are required to be signed, we have to first cast them
       from logic to int (signed by default) before they are multiplied. */
    int DistX, DistY, Size;
    assign DistX = DrawX - pacman_X_Pos;
    assign DistY = DrawY - pacman_Y_Pos;
    assign Size = pacman_Size;
    always_comb begin
        if ( ( DistX*DistY) <= (Size*Size) ) 
            is_pacman = 1'b1;
        else
            is_pacman = 1'b0;
        
    end
    
endmodule
