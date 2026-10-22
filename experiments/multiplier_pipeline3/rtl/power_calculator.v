// EnergyGuard - Experimental three-stage pipelined multiplier
// Experimental only: production RTL is unchanged.

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

    reg [19:0] sum_low_cross_reg;
    reg [23:0] p_hh_shift_reg;

    always @(posedge clk) begin
        if (rst) begin
            p_ll_reg           <= 12'd0;
            p_lh_reg           <= 12'd0;
            p_hl_reg           <= 12'd0;
            p_hh_reg           <= 12'd0;
            sum_low_cross_reg  <= 20'd0;
            p_hh_shift_reg     <= 24'd0;
            power_out          <= 24'd0;
        end else begin
            // Stage 1: calculate and register partial products
            p_ll_reg <= p_ll;
            p_lh_reg <= p_lh;
            p_hl_reg <= p_hl;
            p_hh_reg <= p_hh;

            // Stage 2: combine low and cross-product contributions
            sum_low_cross_reg <=
                {8'd0, p_ll_reg}
                + {2'd0, p_lh_reg, 6'd0}
                + {2'd0, p_hl_reg, 6'd0};

            p_hh_shift_reg <= {p_hh_reg, 12'd0};

            // Stage 3: combine the registered intermediate values
            power_out <= {4'd0, sum_low_cross_reg} + p_hh_shift_reg;
        end
    end

endmodule
