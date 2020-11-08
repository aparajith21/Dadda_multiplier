`include "dadda.v"

module top;
    reg [15:0] a, b;
    wire [31:0] y;
    dadda_multiplier m1 (a, b, y);
    initial
    begin
        $monitor($time, "A = %h --- B = %h --- product = %h", a, b, y);
        $dumpfile("dadda.vcd");
        $dumpvars;
    end
    initial
    begin
        #10 a = 16'b1010_1100_0111_0001; b = 16'b1111_0101_0111_1100;

        #10 a = 16'b1000_0011_0100_1101; b = 16'b0011_1001_1101_0001;

        #10 a = 16'b0111_1011_0001_0100; b = 16'b0110_1000_0111_0110;

        #10 a = 16'b0111_1000_0001_0110; b = 16'b1110_1000_1001_0000;

        #10 a = 16'hA598; b = 16'h8C46;

        #10 a = 16'hFFFF; b = 16'hFFFF;

        #10 a = 0; b = 0;

        $finish;
    end

endmodule
