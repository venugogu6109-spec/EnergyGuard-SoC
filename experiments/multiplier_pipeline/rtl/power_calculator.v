// EnergyGuard - Experimental two-stage pipelined power calculator
// Original production RTL is not modified.
// Input is sampled in stage 1; the product is registered in stage 2.

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

    reg [11:0] p_ll_reg;
    reg [11:0] p_lh_reg;
    reg [11:0] p_hl_reg;
    reg [11:0] p_hh_reg;

    wire [23:0] product =
          {12'd0, p_ll_reg}
        + {6'd0, p_lh_reg, 6'd0}
        + {6'd0, p_hl_reg, 6'd0}
        + {p_hh_reg, 12'd0};

    always @(posedge clk) begin
        if (rst) begin
            p_ll_reg <= 12'd0;
            p_lh_reg <= 12'd0;
            p_hl_reg <= 12'd0;
            p_hh_reg <= 12'd0;
            power_out <= 24'd0;
        end else begin
            p_ll_reg <= p_ll;
            p_lh_reg <= p_lh;
            p_hl_reg <= p_hl;
            p_hh_reg <= p_hh;
            power_out <= product;
        end
    end

endmodule
