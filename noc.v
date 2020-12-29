module MeshTX( // @[:@27.2]
  input         clock, // @[:@28.4]
  input         reset, // @[:@29.4]
  output [31:0] io_dout // @[:@30.4]
);
  wire  _T_11; // @[MeshTX.scala 15:9:@36.4]
  assign _T_11 = reset == 1'h0; // @[MeshTX.scala 15:9:@36.4]
  assign io_dout = 32'h0; // @[MeshTX.scala 14:11:@34.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_11) begin
          $fwrite(32'h80000002,"data into router N port is %x\n",io_dout); // @[MeshTX.scala 15:9:@38.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Router( // @[:@83.2]
  input         clock, // @[:@84.4]
  input         reset, // @[:@85.4]
  output [31:0] io_out_U // @[:@86.4]
);
  wire  meshTX_U_clock; // @[Router.scala 35:24:@104.4]
  wire  meshTX_U_reset; // @[Router.scala 35:24:@104.4]
  wire [31:0] meshTX_U_io_dout; // @[Router.scala 35:24:@104.4]
  wire  meshTX_D_clock; // @[Router.scala 36:24:@107.4]
  wire  meshTX_D_reset; // @[Router.scala 36:24:@107.4]
  wire [31:0] meshTX_D_io_dout; // @[Router.scala 36:24:@107.4]
  wire  meshTX_L_clock; // @[Router.scala 37:24:@110.4]
  wire  meshTX_L_reset; // @[Router.scala 37:24:@110.4]
  wire [31:0] meshTX_L_io_dout; // @[Router.scala 37:24:@110.4]
  wire  meshTX_R_clock; // @[Router.scala 38:24:@113.4]
  wire  meshTX_R_reset; // @[Router.scala 38:24:@113.4]
  wire [31:0] meshTX_R_io_dout; // @[Router.scala 38:24:@113.4]
  wire  _T_23; // @[Router.scala 46:9:@121.4]
  MeshTX meshTX_U ( // @[Router.scala 35:24:@104.4]
    .clock(meshTX_U_clock),
    .reset(meshTX_U_reset),
    .io_dout(meshTX_U_io_dout)
  );
  MeshTX meshTX_D ( // @[Router.scala 36:24:@107.4]
    .clock(meshTX_D_clock),
    .reset(meshTX_D_reset),
    .io_dout(meshTX_D_io_dout)
  );
  MeshTX meshTX_L ( // @[Router.scala 37:24:@110.4]
    .clock(meshTX_L_clock),
    .reset(meshTX_L_reset),
    .io_dout(meshTX_L_io_dout)
  );
  MeshTX meshTX_R ( // @[Router.scala 38:24:@113.4]
    .clock(meshTX_R_clock),
    .reset(meshTX_R_reset),
    .io_dout(meshTX_R_io_dout)
  );
  assign _T_23 = reset == 1'h0; // @[Router.scala 46:9:@121.4]
  assign io_out_U = 32'h0; // @[Router.scala 41:12:@116.4]
  assign meshTX_U_clock = clock; // @[:@105.4]
  assign meshTX_U_reset = reset; // @[:@106.4]
  assign meshTX_D_clock = clock; // @[:@108.4]
  assign meshTX_D_reset = reset; // @[:@109.4]
  assign meshTX_L_clock = clock; // @[:@111.4]
  assign meshTX_L_reset = reset; // @[:@112.4]
  assign meshTX_R_clock = clock; // @[:@114.4]
  assign meshTX_R_reset = reset; // @[:@115.4]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_23) begin
          $fwrite(32'h80000002,"data into router N port is %x\n",io_out_U); // @[Router.scala 46:9:@123.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module noc( // @[:@495.2]
  input   clock, // @[:@496.4]
  input   reset // @[:@497.4]
);
  wire  router1_clock; // @[noc.scala 18:23:@500.4]
  wire  router1_reset; // @[noc.scala 18:23:@500.4]
  wire [31:0] router1_io_out_U; // @[noc.scala 18:23:@500.4]
  wire  router2_clock; // @[noc.scala 19:23:@503.4]
  wire  router2_reset; // @[noc.scala 19:23:@503.4]
  wire [31:0] router2_io_out_U; // @[noc.scala 19:23:@503.4]
  wire  router3_clock; // @[noc.scala 20:23:@506.4]
  wire  router3_reset; // @[noc.scala 20:23:@506.4]
  wire [31:0] router3_io_out_U; // @[noc.scala 20:23:@506.4]
  wire  router4_clock; // @[noc.scala 21:23:@509.4]
  wire  router4_reset; // @[noc.scala 21:23:@509.4]
  wire [31:0] router4_io_out_U; // @[noc.scala 21:23:@509.4]
  Router router1 ( // @[noc.scala 18:23:@500.4]
    .clock(router1_clock),
    .reset(router1_reset),
    .io_out_U(router1_io_out_U)
  );
  Router router2 ( // @[noc.scala 19:23:@503.4]
    .clock(router2_clock),
    .reset(router2_reset),
    .io_out_U(router2_io_out_U)
  );
  Router router3 ( // @[noc.scala 20:23:@506.4]
    .clock(router3_clock),
    .reset(router3_reset),
    .io_out_U(router3_io_out_U)
  );
  Router router4 ( // @[noc.scala 21:23:@509.4]
    .clock(router4_clock),
    .reset(router4_reset),
    .io_out_U(router4_io_out_U)
  );
  assign router1_clock = clock; // @[:@501.4]
  assign router1_reset = reset; // @[:@502.4]
  assign router2_clock = clock; // @[:@504.4]
  assign router2_reset = reset; // @[:@505.4]
  assign router3_clock = clock; // @[:@507.4]
  assign router3_reset = reset; // @[:@508.4]
  assign router4_clock = clock; // @[:@510.4]
  assign router4_reset = reset; // @[:@511.4]
endmodule
