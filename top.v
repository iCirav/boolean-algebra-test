module bool_expr (
    input  wire A,
    input  wire B,
    input  wire D,
    input  wire C,
    output wire F,
);

    assign F = (A & B) | (C & D);

endmodule