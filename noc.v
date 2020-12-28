module Router( // @[:@43.2]
  input         clock, // @[:@44.4]
  input         reset, // @[:@45.4]
  output [31:0] io_out_U // @[:@46.4]
);
  wire  _T_25; // @[Router.scala 97:9:@79.4]
  assign _T_25 = reset == 1'h0; // @[Router.scala 97:9:@79.4]
  assign io_out_U = 32'h0; // @[Router.scala 45:12:@70.4 Router.scala 50:12:@74.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_25) begin
          $fwrite(32'h80000002,"data into router N port is %x\n",io_out_U); // @[Router.scala 97:9:@81.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module noc( // @[:@84.2]
  input   clock, // @[:@85.4]
  input   reset // @[:@86.4]
);
  wire  router1_clock; // @[noc.scala 24:23:@89.4]
  wire  router1_reset; // @[noc.scala 24:23:@89.4]
  wire [31:0] router1_io_out_U; // @[noc.scala 24:23:@89.4]
  Router router1 ( // @[noc.scala 24:23:@89.4]
    .clock(router1_clock),
    .reset(router1_reset),
    .io_out_U(router1_io_out_U)
  );
  assign router1_clock = clock; // @[:@90.4]
  assign router1_reset = reset; // @[:@91.4]
endmodule
