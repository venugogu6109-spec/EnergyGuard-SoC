
module protection_fsm (
    input wire clk,
    input wire reset,

    input wire over_voltage,
    input wire under_voltage,
    input wire over_current,
    input wire over_power,

    output reg warning,
    output reg fault_active,
    output reg trip,
    output reg [1:0] state
);

localparam NORMAL  = 2'b00;
localparam WARNING = 2'b01;
localparam FAULT   = 2'b10;
localparam TRIP    = 2'b11;

wire any_fault;

assign any_fault = over_voltage |
                   under_voltage |
                   over_current |
                   over_power;

always @(posedge clk) begin
    if (reset)
        state <= NORMAL;
    else begin
        case (state)
            NORMAL: begin
                if (any_fault)
                    state <= WARNING;
            end

            WARNING: begin
                if (any_fault)
                    state <= FAULT;
                else
                    state <= NORMAL;
            end

            FAULT: begin
                if (any_fault)
                    state <= TRIP;
                else
                    state <= NORMAL;
            end

            TRIP: begin
                state <= TRIP;
            end

            default: state <= NORMAL;
        endcase
    end
end

always @(*) begin
    warning = 1'b0;
    fault_active = 1'b0;
    trip = 1'b0;

    case (state)
        WARNING: warning = 1'b1;
        FAULT:   fault_active = 1'b1;
        TRIP:    trip = 1'b1;
        default: begin
            warning = 1'b0;
            fault_active = 1'b0;
            trip = 1'b0;
        end
    endcase
end

endmodule
