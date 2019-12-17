// Divide clock by 256, used to generate 32.768 kHz clock for AON block
module clkdivider #(
  parameter DIVIDER = 5
  )(
  input wire clk,
  input wire reset_n,
  output reg clk_out
);

  localparam int Aw = $clog2(DIVIDER);

  reg [Aw-1:0] counter;

  always @(posedge clk)
  begin
    if (!reset_n)
    begin
      counter <= 'd0;
      clk_out <= 'b0;
    end
//  Bob: this original source code is wrong, because it is actually divided clock by 512, so correct it
    //else if (counter == 8'hff)
    else if (counter == (DIVIDER-1))
    begin
      counter <= 'd0;
      clk_out <= ~clk_out;
    end
    else
    begin
      counter <= counter+1;
    end
  end
endmodule
