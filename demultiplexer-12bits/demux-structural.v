module demux_structural(input [11:0] e,
                        input c0,
                        input c1,
                        output [11:0] s0,
                        output [11:0] s1,
                        output [11:0] s2,
                        output [11:0] s3);

    assign s0 = e & {12{~c0}} & {12{~c1}};
    assign s1 = e & {12{~c0}} & {12{c1}};
    assign s2 = e & {12{c0}} & {12{~c1}};
    assign s3 = e & {12{c0}} & {12{c1}};

endmodule
