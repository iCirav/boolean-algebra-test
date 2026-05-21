`timescale 1ns / 1ps

module tb;

  reg A, B, C, D;
  wire F;

  // DUT
  bool_expr dut (
      .A(A),
      .B(B),
      .C(C),
      .D(D),
      .F(F)
  );

  integer i;

  initial begin
    $dumpvars(0, tb);

    $display("A B C D | F");
    $display("-------------");

    // Iterate through all combinations: 0 to 7
    for (i = 0; i < 16; i = i + 1) begin
      {A, B, C, D} = i[3:0];
      #1;

      $display("%b %b %b %b | %b", A, B, C, D, F);
    end

    $finish;
  end

endmodule
