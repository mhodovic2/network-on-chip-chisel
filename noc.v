module noc( // @[:@3.2]
  input   clock, // @[:@4.4]
  input   reset, // @[:@5.4]
  output  io_led // @[:@6.4]
);
  reg [31:0] cntReg; // @[noc.scala 20:23:@8.4]
  reg [31:0] _RAND_0;
  reg  blkReg; // @[noc.scala 21:23:@9.4]
  reg [31:0] _RAND_1;
  wire [32:0] _T_12; // @[noc.scala 23:20:@10.4]
  wire [31:0] _T_13; // @[noc.scala 23:20:@11.4]
  wire  _T_14; // @[noc.scala 24:15:@13.4]
  wire  _T_16; // @[noc.scala 26:15:@16.6]
  wire [31:0] _GEN_0; // @[noc.scala 24:28:@14.4]
  wire  _GEN_1; // @[noc.scala 24:28:@14.4]
  assign _T_12 = cntReg + 32'h1; // @[noc.scala 23:20:@10.4]
  assign _T_13 = _T_12[31:0]; // @[noc.scala 23:20:@11.4]
  assign _T_14 = cntReg == 32'h17d783f; // @[noc.scala 24:15:@13.4]
  assign _T_16 = ~ blkReg; // @[noc.scala 26:15:@16.6]
  assign _GEN_0 = _T_14 ? 32'h0 : _T_13; // @[noc.scala 24:28:@14.4]
  assign _GEN_1 = _T_14 ? _T_16 : blkReg; // @[noc.scala 24:28:@14.4]
  assign io_led = blkReg; // @[noc.scala 28:10:@19.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cntReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  blkReg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cntReg <= 32'h0;
    end else begin
      if (_T_14) begin
        cntReg <= 32'h0;
      end else begin
        cntReg <= _T_13;
      end
    end
    if (reset) begin
      blkReg <= 1'h0;
    end else begin
      if (_T_14) begin
        blkReg <= _T_16;
      end
    end
  end
endmodule
