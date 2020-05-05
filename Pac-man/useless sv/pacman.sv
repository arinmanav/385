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
module pacman(input [9:0] SpriteX, SpriteY,
            output [7:0] SpriteR, SpriteG, SpriteB);

logic [9:0] X_Index, Y_Index;

assign X_Index = SpriteX % 10'd8;
assign Y_Index = SpriteY % 10'd8;
logic [9:0] SpriteTableR;

parameter bit [7:0] SpritePaletteR[1:0] = '{8'd0, 8'd255};

	always_comb
	begin
		SpriteTableR = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableR = SpriteTableR_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableR = SpriteTableR_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableR = SpriteTableR_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableR = SpriteTableR_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableR = SpriteTableR_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableR = SpriteTableR_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableR = SpriteTableR_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableR = SpriteTableR_5_7[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableR_0_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_0_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_1_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_5[7:0][7:0] = '{'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_1_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_2_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_2_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_2_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableR_2_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_2_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_2_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_2_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_2_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_3_3[7:0][7:0] = '{'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_3_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_4_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_4_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_3[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_4_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_4_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableR_4_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_5_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableR_5_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableR_5_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

logic [9:0] SpriteTableG;

parameter bit [7:0] SpritePaletteG[1:0] = '{8'd6, 8'd251};

	always_comb
	begin
		SpriteTableG = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableG = SpriteTableG_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableG = SpriteTableG_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableG = SpriteTableG_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableG = SpriteTableG_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableG = SpriteTableG_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableG = SpriteTableG_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableG = SpriteTableG_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableG = SpriteTableG_5_7[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableG_0_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_0_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_1_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_5[7:0][7:0] = '{'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_1_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_2_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1}};

parameter bit [0:0] SpriteTableG_2_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_2_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_2_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_2_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_3_3[7:0][7:0] = '{'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_3_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_1[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_3[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_5[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_4_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1}};

parameter bit [0:0] SpriteTableG_4_7[7:0][7:0] = '{'{1'd0,1'd1,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd1,1'd0,1'd0,1'd0,1'd0,1'd1},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd1},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_5_1[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0}};

parameter bit [0:0] SpriteTableG_5_3[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd0,1'd0,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_5[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableG_5_7[7:0][7:0] = '{'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

logic [9:0] SpriteTableB;

parameter bit [7:0] SpritePaletteB[1:0] = '{8'd0, 8'd255};

	always_comb
	begin
		SpriteTableB = 10'd0;
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_0_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_0_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_0_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_0_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_0_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_0_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_0_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd0 && SpriteX < 10'd8 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_0_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_1_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_1_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_1_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_1_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_1_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_1_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_1_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd8 && SpriteX < 10'd16 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_1_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_2_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_2_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_2_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_2_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_2_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_2_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_2_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd16 && SpriteX < 10'd24 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_2_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_3_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_3_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_3_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_3_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_3_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_3_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_3_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd24 && SpriteX < 10'd32 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_3_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_4_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_4_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_4_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_4_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_4_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_4_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_4_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd32 && SpriteX < 10'd40 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_4_7[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd0 && SpriteY < 10'd8)
		begin
		    SpriteTableB = SpriteTableB_5_0[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd8 && SpriteY < 10'd16)
		begin
		    SpriteTableB = SpriteTableB_5_1[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd16 && SpriteY < 10'd24)
		begin
		    SpriteTableB = SpriteTableB_5_2[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd24 && SpriteY < 10'd32)
		begin
		    SpriteTableB = SpriteTableB_5_3[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd32 && SpriteY < 10'd40)
		begin
		    SpriteTableB = SpriteTableB_5_4[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd40 && SpriteY < 10'd48)
		begin
		    SpriteTableB = SpriteTableB_5_5[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd48 && SpriteY < 10'd56)
		begin
		    SpriteTableB = SpriteTableB_5_6[Y_Index][X_Index];
		end
		else
		if(SpriteX >= 10'd40 && SpriteX < 10'd48 && SpriteY >= 10'd56 && SpriteY < 10'd64)
		begin
		    SpriteTableB = SpriteTableB_5_7[Y_Index][X_Index];
		end
	end

parameter bit [0:0] SpriteTableB_0_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_0_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_1_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_2_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_3_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_4_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd0,1'd1,1'd1,1'd1,1'd1,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd1,1'd1,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_0[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_1[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_2[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_3[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_4[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd1,1'd1,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd1,1'd1,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_5[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_6[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

parameter bit [0:0] SpriteTableB_5_7[7:0][7:0] = '{'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0},
'{1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0,1'd0}};

assign SpriteR = SpritePaletteR[SpriteTableR];
assign SpriteG = SpritePaletteG[SpriteTableG];
assign SpriteB = SpritePaletteB[SpriteTableB];

endmodule
