module counter(input clk,
               input reset,
               input enable,
               output reg [6:0] count);

    always @(posedge clk) begin
        if (reset)
            count <= 7'b0;
        else if (enable) begin
            if (count == 7'd100)
                count <= 7'b0;
            else
                count <= count + 7'd1;
        end
    end

endmodule
