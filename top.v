module top (
    input  wire SW1,
    input  wire SW2,
    input  wire SW3,
    input  wire SW4,
    output wire LED1
);

  assign LED1 = (SW1 & SW2) | (SW3 & SW4);

endmodule
