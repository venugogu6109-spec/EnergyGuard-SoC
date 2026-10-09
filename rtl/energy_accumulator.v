// EnergyGuard - Sequential Energy Accumulator
// Accumulates the calculated power value on every clock cycle

module energy_accumulator (
    input  wire        clk,
    input  wire        rst,

    input  wire [23:0] power_in,

    output reg  [31:0] energy_out
);

    always @(posedge clk) begin
        if (rst) begin
            energy_out <= 32'd0;
        end
        else begin
            energy_out <= energy_out + power_in;
        end
    end

endmodule
