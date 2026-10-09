// EnergyGuard - Programmable Threshold Registers
// Stores voltage, current and power protection limits

module threshold_register (
    input  wire        clk,
    input  wire        rst,

    input  wire [11:0] voltage_max_in,
    input  wire [11:0] voltage_min_in,
    input  wire [11:0] current_max_in,
    input  wire [23:0] power_max_in,

    output reg  [11:0] voltage_max,
    output reg  [11:0] voltage_min,
    output reg  [11:0] current_max,
    output reg  [23:0] power_max
);

    always @(posedge clk) begin
        if (rst) begin
            voltage_max <= 12'd0;
            voltage_min <= 12'd0;
            current_max <= 12'd0;
            power_max   <= 24'd0;
        end
        else begin
            voltage_max <= voltage_max_in;
            voltage_min <= voltage_min_in;
            current_max <= current_max_in;
            power_max   <= power_max_in;
        end
    end

endmodule
