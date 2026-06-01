module shift_register(input clk,
                      input enable,
                      input serial_in,
                      output reg [7:0] q);

    always@(posedge clk)begin
        if (enable) begin
            q <= {q[7:0], serial_in};
        end
    end

endmodule
