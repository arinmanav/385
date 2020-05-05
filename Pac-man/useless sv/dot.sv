/*
    This sprite table was generated using 'conv_to_sv.py'. Find out more here: https://github.com/Atrifex/ECE385-HelperTools
    To use, instantiate this module in your color mapper. The SpriteX input should be connected to
        'ObjectXSize - DistX', where ObjectXSize is the width of your object in pixels along the
        x direction. DistX is the horizontal distance between the DrawX pxiel and the top left corner
        of the object in question, so something like: 'DistX = DrawX - ObjectXPosition' is fine.
        Similarly this goes for SpriteY. Warning: If you don't do this, your image will be flipped along
        the axis you ignored. This is a handy way to flip an image if you need to, though.
 
    In the color mapper, you can then simply do something like:
    module ColorMapper(...)
    ...
    logic [7:0] ObjectR, ObjectG, ObjectB
    parameter ObjectXSize = 10'd10;
    parameter ObjectYSize = 10'd10;
    ...
    always_comb
    ...
         if(ObjectOn == 1'b1)
         begin
             Red = ObjectR
             Green = ObjectG
             Blue = ObjectB
         end
     ...
     ObjectSpriteTable ost(
                           .SpriteX(ObjectXSize - DistX), .SpriteY(ObjectYSize - DistY),
                           .SpriteR(ObjectR), .SpriteG(ObjectG), .SpriteB(ObjectB)
                           );
 
     See the comment at the top of the generation script if you're still confused.
*/
module dot(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[1:0] = '{8'd0, 8'd255};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd4 && SpriteY >= 10'd0 && SpriteY < 10'd4)
		begin
		    SpriteTableR = SpriteTableR_0_0[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableR_0_0[3:0][3:0] = '{'{1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd0,1'd0}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[2:0] = '{8'd0, 8'd218, 8'd137};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd4 && SpriteY >= 10'd0 && SpriteY < 10'd4)
		begin
		    SpriteTableG = SpriteTableG_0_0[Y_Index][X_Index];
		end
	end

parameter bit [1:0] SpriteTableG_0_0[3:0][3:0] = '{'{2'd0,2'd0,2'd0,2'd0},
'{2'd0,2'd1,2'd2,2'd0},
'{2'd0,2'd1,2'd2,2'd0},
'{2'd0,2'd0,2'd0,2'd0}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[2:0] = '{8'd0, 8'd213, 8'd134};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd4 && SpriteY >= 10'd0 && SpriteY < 10'd4)
		begin
		    SpriteTableB = SpriteTableB_0_0[Y_Index][X_Index];
		end
	end

parameter bit [1:0] SpriteTableB_0_0[3:0][3:0] = '{'{2'd0,2'd0,2'd0,2'd0},
'{2'd0,2'd1,2'd2,2'd0},
'{2'd0,2'd1,2'd2,2'd0},
'{2'd0,2'd0,2'd0,2'd0}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule
