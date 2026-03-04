`default_nettype none
`timescale 1ns / 1ps

/* This testbench just instantiates the module and makes some convenient wires
   that can be driven / tested by the cocotb test.py.
*/
module tb ();

  // Dump the signals to a FST file. You can view it with gtkwave or surfer.
  initial begin
    $dumpfile("tb.fst");
    $dumpvars(0, tb);
    #1;
  end

  // Wire up the inputs and outputs:
  wire clk;
  wire rst;
  wire photon_in;
  reg [1:0] signal_out;

  // Replace tt_um_photomultiplier_accum with your module name:
  tt_um_photomultiplier_accum user_project (
      .clk    (clk),      // clock
      .rst    (rst),     // reset
      .photon_in (photon_in),
      .signal_out (signal_out)
  );

endmodule
