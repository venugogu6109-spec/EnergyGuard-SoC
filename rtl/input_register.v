// EnergyGuard - Input Sampling Register
// Sequential RTL block
// Captures voltage and current samples on the rising clock edge

module input_register (
    input  wire        clk,
    input  wire        rst,

    input  wire [11:0] voltage_in,
    input  wire [11:0] current_in,

    output reg  [11:0] voltage_reg,
    output reg  [11:0] current_reg
);

    // Sequential sampling of voltage and current
    always @(posedge clk) begin
        if (rst) begin
            voltage_reg <= 12'd0;
            current_reg <= 12'd0;
        end
        else begin
            voltage_reg <= voltage_in;
            current_reg <= current_in;
        end
    end

endmodule
