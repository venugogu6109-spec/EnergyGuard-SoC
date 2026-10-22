// EnergyGuard - Experimental four-stage pipelined multiplier
// Experimental only. Production RTL remains unchanged.

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

    reg [11:0] ll_reg, lh_reg, hl_reg, hh_reg;
    reg [18:0] cross_sum_reg;
    reg [23:0] ll_shifted_reg, hh_shifted_reg;
    reg [23:0] cross_shifted_reg;

    always @(posedge clk) begin
        if (rst) begin
            ll_reg <= 0;
            lh_reg <= 0;
            hl_reg <= 0;
            hh_reg <= 0;
            cross_sum_reg <= 0;
            ll_shifted_reg <= 0;
            hh_shifted_reg <= 0;
            cross_shifted_reg <= 0;
            power_out <= 0;
        end else begin
            // Stage 1: register partial products
            ll_reg <= p_ll;
            lh_reg <= p_lh;
            hl_reg <= p_hl;
            hh_reg <= p_hh;

            // Stage 2: combine the two cross-products
            cross_sum_reg <= {7'b0, lh_reg} + {7'b0, hl_reg};
            ll_shifted_reg <= {12'b0, ll_reg};
            hh_shifted_reg <= {hh_reg, 12'b0};

            // Stage 3: shift and register the cross-product sum
            cross_shifted_reg <= {cross_sum_reg, 6'b0};

            // Stage 4: combine the aligned contributions
            power_out <= ll_shifted_reg
                       + cross_shifted_reg
                       + hh_shifted_reg;
        end
    end

endmodule
