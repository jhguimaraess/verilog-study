module demultiplexer(input [11:0] in,
                     input [1:0] sel,
                     output reg [11:0] out1,
                     output reg [11:0] out2,
                     output reg [11:0] out3,
                     output reg [11:0] out4);

    always @(*) begin
        out0 = 12'b0;
        out1 = 12'b0;
        out2 = 12'b0;
        out3 = 12'b0;

        case (sel)
            2'b00: out1 = in;
            2'b01: out2 = in;
            2'b10: out3 = in;
            2'b11: out4 = in;
        endcase
    end

endmodule
