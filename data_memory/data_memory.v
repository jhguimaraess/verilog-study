module data_memory(input clk,
                   input [3:0] address,
                   input [7:0] write_data,
                   input mem_write, mem_read,
                   output reg [7:0] read_data);

    reg [7:0] mem [15:0];

    always@(posedge clk)begin
        if (mem_write)
            mem[address] <= write_data;
    end

    always@(*)begin
        if(mem_read)
            read_data = mem[address];
        else
            read_data = 8'd0;
    end

endmodule
