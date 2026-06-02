module ALU(input [7:0] in1, in2,
           input [1:0] operation,
           output zero,
           output [7:0] result
           output overflow,
           output carry);

    always@(*)begin
        result   = 8'b0;
        carry    = 1'b0;
        overflow = 1'b0;

        case(operation)
            2'b00: begin
                temp = in1 + in2;

                result = temp[7:0];
                carry = temp[8];

                overflow = (a[7] == b[7] && result[7] != a[7]);
            end
            2'b01: begin
                temp = in1 - in2;

                result = temp[7:0];
                carry = temp[8];

                overflow = (a[7] != b[7] && result[7] != a[7]);
            end
            2'b10: begin
                result = in1 & in2;
            end
            2'b11: begin
                result = in1 | in2;
            end
    end

    zero = (result == 8'b0);

endmodule
