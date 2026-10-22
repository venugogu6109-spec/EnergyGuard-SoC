// EnergyGuard - Sequential Power Calculator
// Calculates Power = Voltage x Current
// The calculated power is registered on every rising clock edge

module power_calculator (
    input  wire        clk,
    input  wire        rst,

    input  wire [11:0] voltage_in,
    input  wire [11:0] current_in,

    output reg  [23:0] power_out
);

    always @(posedge clk) begin
        if (rst) begin
            power_out <= 24'd0;
        end
        else begin
            power_out <= voltage_in * current_in;
        end
    end

endmodule
