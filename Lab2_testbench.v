`timescale 1ns/1ps
module Lab2_testbench();

reg clock, reset, I;
    wire F;
    wire [2:0] S;

    Lab2 uut (.I(I), .clock(clock), .reset(reset), .F(F), .S(S));

    initial
        clock = 1'b0;
    always begin
        #5 clock = (clock == 0)? 1:0;
    end

    initial begin
         reset = 1'b0;
        I = 1'b0;
        #14 I = 1'b1;
		  #10 I = 1'b0;
        #10 I = 1'b0;
        #10 I = 1'b1;
        #10 I = 1'b0;
        #10 I = 1'b0;
        #10 I = 1'b1;
        #10 I = 1'b0;
        #10 I = 1'b0;
        #10 I = 1'b1;
        #10 I = 1'b0;
        #10 I = 1'b0;
        #10 I = 1'b0;
        #10 I = 1'b1;
        #10 I = 1'b0;
		  
		  //add new lines
    end

    initial begin
        #1000 $stop;
    end
	
endmodule
