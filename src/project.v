module tt_um_photomultiplier_accum #(
    parameter GAIN = 1000,
    parameter WIDTH = 8
)(
    input wire clk,
    input wire rst,
    input wire photon_in,
    output reg [WIDTH-1:0] signal_out
);

always @(posedge clk or posedge rst) begin
    if (rst) begin
        signal_out <= 0;
    end else begin
        if (photon_in)
            signal_out <= signal_out + GAIN;
    end
end

endmodule
