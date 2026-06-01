module flip_flop_d(input clk,
                   input d,
                   input reset,
                   output reg q,
);

    always@(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 1'b0;
        end
            q <= d;
    end
endmodule
