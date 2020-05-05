/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  mazeRAM
(
		input [1:0] data_In,
		input [18:0] write_address, read_address, read_address_maze, read_address_pacman
		input we, Clk,
		output logic [1:0] data_Out
		
);


logic [1:0] mem [0:32843];

initial
begin
	 $readmemh("maze.txt", mem);
end


always_ff @ (posedge Clk) begin
	if (we)
		mem[write_address] <= data_In;
	data_Out<= mem[read_address];
end

endmodule

module  pacmanRAM
(
		input [1:0] data_In,
		input [18:0] write_address, read_address,
		input we, Clk,
		output logic [1:0] data_Out
);


logic [1:0] mem [0:255];

initial
begin
	 $readmemh("pacman.txt", mem);
end


always_ff @ (posedge Clk) begin
	if (we)
		mem[write_address] <= data_In;
	data_Out<= mem[read_address];
end

endmodule

module  dotRAM
(
		input [1:0] data_In,
		input [18:0] write_address, read_address,
		input we, Clk,
		output logic [1:0] data_Out
);


logic [1:0] mem [0:15];

initial
begin
	 $readmemh("dot.txt", mem);
end


always_ff @ (posedge Clk) begin
	if (we)
		mem[write_address] <= data_In;
	data_Out<= mem[read_address];
end

endmodule

