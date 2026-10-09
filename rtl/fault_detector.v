
module fault_detector (
    input wire clk,
    input wire reset,

    input wire [11:0] voltage_in,
    input wire [11:0] current_in,
    input wire [23:0] power_in,

    input wire [11:0] voltage_max,
    input wire [11:0] voltage_min,
    input wire [11:0] current_max,
    input wire [23:0] power_max,

    output reg over_voltage,
    output reg under_voltage,
    output reg over_current,
    output reg over_power
);

always @(posedge clk) begin
    if (reset) begin
        over_voltage <= 1'b0;
        under_voltage <= 1'b0;
        over_current <= 1'b0;
        over_power <= 1'b0;
    end else begin
        over_voltage <= (voltage_in > voltage_max);
        under_voltage <= (voltage_in < voltage_min);
        over_current <= (current_in > current_max);
        over_power <= (power_in > power_max);
    end
end

endmodule
