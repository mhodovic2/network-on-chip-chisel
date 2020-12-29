module Router(
  input         clock,
  input         reset,
  output [31:0] io_out_U
);
  wire  _T; // @[Router.scala 46:9]
  wire  _T_1; // @[Router.scala 46:9]
  assign _T = $unsigned(reset); // @[Router.scala 46:9]
  assign _T_1 = _T == 1'h0; // @[Router.scala 46:9]
  assign io_out_U = 32'h0; // @[Router.scala 41:12]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"data into router N port is %x\n",io_out_U); // @[Router.scala 46:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module noc(
  input   clock,
  input   reset
);
  wire  router1_clock; // @[noc.scala 13:23]
  wire  router1_reset; // @[noc.scala 13:23]
  wire [31:0] router1_io_out_U; // @[noc.scala 13:23]
  wire  router2_clock; // @[noc.scala 14:23]
  wire  router2_reset; // @[noc.scala 14:23]
  wire [31:0] router2_io_out_U; // @[noc.scala 14:23]
  wire  router3_clock; // @[noc.scala 15:23]
  wire  router3_reset; // @[noc.scala 15:23]
  wire [31:0] router3_io_out_U; // @[noc.scala 15:23]
  wire  router4_clock; // @[noc.scala 16:23]
  wire  router4_reset; // @[noc.scala 16:23]
  wire [31:0] router4_io_out_U; // @[noc.scala 16:23]
  Router router1 ( // @[noc.scala 13:23]
    .clock(router1_clock),
    .reset(router1_reset),
    .io_out_U(router1_io_out_U)
  );
  Router router2 ( // @[noc.scala 14:23]
    .clock(router2_clock),
    .reset(router2_reset),
    .io_out_U(router2_io_out_U)
  );
  Router router3 ( // @[noc.scala 15:23]
    .clock(router3_clock),
    .reset(router3_reset),
    .io_out_U(router3_io_out_U)
  );
  Router router4 ( // @[noc.scala 16:23]
    .clock(router4_clock),
    .reset(router4_reset),
    .io_out_U(router4_io_out_U)
  );
  assign router1_clock = clock;
  assign router1_reset = reset;
  assign router2_clock = clock;
  assign router2_reset = reset;
  assign router3_clock = clock;
  assign router3_reset = reset;
  assign router4_clock = clock;
  assign router4_reset = reset;
endmodule
