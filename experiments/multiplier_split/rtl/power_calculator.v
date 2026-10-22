// Experimental split 12x12 multiplier
// Preserves the original module interface and registered output.

module power_calculator (
    input  wire        clk,
    input  wire        rst,
    input  wire [11:0] voltage_in,
    input  wire [11:0] current_in,
    output reg  [23:0] power_out
);

    wire [5:0] a_lo = voltage_in[5:0];
    wire [5:0] a_hi = voltage_in[11:6];
    wire [5:0] b_lo = current_in[5:0];
    wire [5:0] b_hi = current_in[11:6];

    wire [11:0] p_ll = a_lo * b_lo;
    wire [11:0] p_lh = a_lo * b_hi;
    wire [11:0] p_hl = a_hi * b_lo;
    wire [11:0] p_hh = a_hi * b_hi;

    wire [23:0] product =
          {12'd0, p_ll}
        + {6'd0, p_lh, 6'd0}
        + {6'd0, p_hl, 6'd0}
        + {p_hh, 12'd0};

    always @(posedge clk) begin
        if (rst)
            power_out <= 24'd0;
        else
            power_out <= product;
    end

endmodule
