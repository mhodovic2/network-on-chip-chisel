module Router(
  input         clock,
  input         reset,
  input         io_in_N_valid_in,
  output        io_in_N_ready_out,
  input  [31:0] io_in_N_din,
  input         io_in_S_valid_in,
  output        io_in_S_ready_out,
  input  [31:0] io_in_S_din,
  input         io_in_W_valid_in,
  output        io_in_W_ready_out,
  input  [31:0] io_in_W_din,
  input         io_in_E_valid_in,
  output        io_in_E_ready_out,
  input  [31:0] io_in_E_din,
  input         io_in_CPU_valid_in,
  input  [31:0] io_in_CPU_din,
  output        io_out_N_valid_out,
  input         io_out_N_ready_in,
  output [31:0] io_out_N_dout,
  output        io_out_S_valid_out,
  input         io_out_S_ready_in,
  output [31:0] io_out_S_dout,
  output        io_out_W_valid_out,
  input         io_out_W_ready_in,
  output [31:0] io_out_W_dout,
  output        io_out_E_valid_out,
  input         io_out_E_ready_in,
  output [31:0] io_out_E_dout,
  output        io_out_CPU_valid_out,
  input         io_out_CPU_ready_in,
  output [31:0] io_out_CPU_dout,
  input  [1:0]  io_x,
  input  [1:0]  io_y
);
  reg [31:0] dataReg; // @[Router.scala 72:24]
  reg [31:0] _RAND_0;
  reg  stateReg; // @[Router.scala 80:25]
  reg [31:0] _RAND_1;
  wire [1:0] destination_y; // @[Router.scala 82:30]
  wire [1:0] destination_x; // @[Router.scala 83:30]
  wire  _T; // @[Router.scala 85:9]
  wire  _T_1; // @[Router.scala 85:9]
  wire  _T_6; // @[Router.scala 92:17]
  wire  _GEN_1; // @[Router.scala 124:36]
  wire  _GEN_5; // @[Router.scala 119:34]
  wire  _GEN_11; // @[Router.scala 114:34]
  wire  _GEN_14; // @[Router.scala 114:34]
  wire  _GEN_19; // @[Router.scala 109:35]
  wire  _GEN_22; // @[Router.scala 109:35]
  wire  _GEN_24; // @[Router.scala 109:35]
  wire  _GEN_29; // @[Router.scala 104:29]
  wire  _GEN_32; // @[Router.scala 104:29]
  wire  _GEN_34; // @[Router.scala 104:29]
  wire  _GEN_36; // @[Router.scala 104:29]
  wire  _T_8; // @[Router.scala 133:25]
  wire  _T_11; // @[Router.scala 136:31]
  wire  _T_14; // @[Router.scala 140:27]
  wire  _T_15; // @[Router.scala 142:33]
  wire  _GEN_41; // @[Router.scala 142:41]
  wire  _GEN_43; // @[Router.scala 140:35]
  wire  _GEN_44; // @[Router.scala 140:35]
  wire  _GEN_46; // @[Router.scala 136:39]
  wire  _GEN_47; // @[Router.scala 136:39]
  wire  _GEN_48; // @[Router.scala 136:39]
  wire  _GEN_50; // @[Router.scala 133:33]
  wire  _GEN_51; // @[Router.scala 133:33]
  wire  _GEN_52; // @[Router.scala 133:33]
  wire  _GEN_53; // @[Router.scala 133:33]
  wire [31:0] _GEN_54; // @[Router.scala 150:31]
  wire [31:0] _GEN_57; // @[Router.scala 156:31]
  wire [31:0] _GEN_60; // @[Router.scala 162:31]
  wire [31:0] _GEN_63; // @[Router.scala 168:31]
  wire [27:0] _T_16; // @[Router.scala 175:32]
  wire [31:0] _GEN_66; // @[Router.scala 174:33]
  wire [31:0] _GEN_69; // @[Router.scala 173:39]
  wire [31:0] _GEN_72; // @[Router.scala 167:37]
  wire [31:0] _GEN_75; // @[Router.scala 167:37]
  wire [31:0] _GEN_76; // @[Router.scala 161:37]
  wire [31:0] _GEN_79; // @[Router.scala 161:37]
  wire [31:0] _GEN_80; // @[Router.scala 161:37]
  wire [31:0] _GEN_81; // @[Router.scala 155:37]
  wire [31:0] _GEN_84; // @[Router.scala 155:37]
  wire [31:0] _GEN_85; // @[Router.scala 155:37]
  wire [31:0] _GEN_86; // @[Router.scala 155:37]
  wire [31:0] _GEN_87; // @[Router.scala 149:30]
  wire [31:0] _GEN_90; // @[Router.scala 149:30]
  wire [31:0] _GEN_91; // @[Router.scala 149:30]
  wire [31:0] _GEN_92; // @[Router.scala 149:30]
  wire [31:0] _GEN_93; // @[Router.scala 149:30]
  wire  _GEN_94; // @[Router.scala 131:33]
  wire  _GEN_95; // @[Router.scala 131:33]
  wire  _GEN_96; // @[Router.scala 131:33]
  wire  _GEN_97; // @[Router.scala 131:33]
  wire  _GEN_98; // @[Router.scala 131:33]
  wire [31:0] _GEN_99; // @[Router.scala 131:33]
  wire [31:0] _GEN_102; // @[Router.scala 131:33]
  wire [31:0] _GEN_103; // @[Router.scala 131:33]
  wire [31:0] _GEN_104; // @[Router.scala 131:33]
  wire [31:0] _GEN_105; // @[Router.scala 131:33]
  wire [31:0] out_N_dout; // @[Router.scala 92:26]
  wire [31:0] out_E_dout; // @[Router.scala 92:26]
  wire [31:0] out_CPU_dout; // @[Router.scala 92:26]
  wire  _GEN_131; // @[Router.scala 134:13]
  wire  _GEN_132; // @[Router.scala 134:13]
  wire  _GEN_133; // @[Router.scala 134:13]
  wire  _GEN_136; // @[Router.scala 139:13]
  wire  _GEN_137; // @[Router.scala 139:13]
  wire  _GEN_138; // @[Router.scala 139:13]
  wire  _GEN_139; // @[Router.scala 139:13]
  assign destination_y = dataReg[1:0]; // @[Router.scala 82:30]
  assign destination_x = dataReg[3:2]; // @[Router.scala 83:30]
  assign _T = $unsigned(reset); // @[Router.scala 85:9]
  assign _T_1 = _T == 1'h0; // @[Router.scala 85:9]
  assign _T_6 = stateReg == 1'h0; // @[Router.scala 92:17]
  assign _GEN_1 = io_in_CPU_valid_in | stateReg; // @[Router.scala 124:36]
  assign _GEN_5 = io_in_E_valid_in | _GEN_1; // @[Router.scala 119:34]
  assign _GEN_11 = io_in_W_valid_in | _GEN_5; // @[Router.scala 114:34]
  assign _GEN_14 = io_in_W_valid_in ? 1'h0 : io_in_E_valid_in; // @[Router.scala 114:34]
  assign _GEN_19 = io_in_S_valid_in | _GEN_11; // @[Router.scala 109:35]
  assign _GEN_22 = io_in_S_valid_in ? 1'h0 : io_in_W_valid_in; // @[Router.scala 109:35]
  assign _GEN_24 = io_in_S_valid_in ? 1'h0 : _GEN_14; // @[Router.scala 109:35]
  assign _GEN_29 = io_in_N_valid_in | _GEN_19; // @[Router.scala 104:29]
  assign _GEN_32 = io_in_N_valid_in ? 1'h0 : io_in_S_valid_in; // @[Router.scala 104:29]
  assign _GEN_34 = io_in_N_valid_in ? 1'h0 : _GEN_22; // @[Router.scala 104:29]
  assign _GEN_36 = io_in_N_valid_in ? 1'h0 : _GEN_24; // @[Router.scala 104:29]
  assign _T_8 = destination_y > io_y; // @[Router.scala 133:25]
  assign _T_11 = destination_y < io_y; // @[Router.scala 136:31]
  assign _T_14 = destination_x > io_x; // @[Router.scala 140:27]
  assign _T_15 = destination_x < io_x; // @[Router.scala 142:33]
  assign _GEN_41 = _T_15 ? 1'h0 : 1'h1; // @[Router.scala 142:41]
  assign _GEN_43 = _T_14 ? 1'h0 : _T_15; // @[Router.scala 140:35]
  assign _GEN_44 = _T_14 ? 1'h0 : _GEN_41; // @[Router.scala 140:35]
  assign _GEN_46 = _T_11 ? 1'h0 : _T_14; // @[Router.scala 136:39]
  assign _GEN_47 = _T_11 ? 1'h0 : _GEN_43; // @[Router.scala 136:39]
  assign _GEN_48 = _T_11 ? 1'h0 : _GEN_44; // @[Router.scala 136:39]
  assign _GEN_50 = _T_8 ? 1'h0 : _T_11; // @[Router.scala 133:33]
  assign _GEN_51 = _T_8 ? 1'h0 : _GEN_46; // @[Router.scala 133:33]
  assign _GEN_52 = _T_8 ? 1'h0 : _GEN_47; // @[Router.scala 133:33]
  assign _GEN_53 = _T_8 ? 1'h0 : _GEN_48; // @[Router.scala 133:33]
  assign _GEN_54 = io_out_N_ready_in ? dataReg : 32'h0; // @[Router.scala 150:31]
  assign _GEN_57 = io_out_S_ready_in ? dataReg : 32'h0; // @[Router.scala 156:31]
  assign _GEN_60 = io_out_W_ready_in ? dataReg : 32'h0; // @[Router.scala 162:31]
  assign _GEN_63 = io_out_E_ready_in ? dataReg : 32'h0; // @[Router.scala 168:31]
  assign _T_16 = dataReg[31:4]; // @[Router.scala 175:32]
  assign _GEN_66 = io_out_CPU_ready_in ? {{4'd0}, _T_16} : 32'h0; // @[Router.scala 174:33]
  assign _GEN_69 = io_out_CPU_valid_out ? _GEN_66 : 32'h0; // @[Router.scala 173:39]
  assign _GEN_72 = io_out_E_valid_out ? _GEN_63 : 32'h0; // @[Router.scala 167:37]
  assign _GEN_75 = io_out_E_valid_out ? 32'h0 : _GEN_69; // @[Router.scala 167:37]
  assign _GEN_76 = io_out_W_valid_out ? _GEN_60 : 32'h0; // @[Router.scala 161:37]
  assign _GEN_79 = io_out_W_valid_out ? 32'h0 : _GEN_72; // @[Router.scala 161:37]
  assign _GEN_80 = io_out_W_valid_out ? 32'h0 : _GEN_75; // @[Router.scala 161:37]
  assign _GEN_81 = io_out_S_valid_out ? _GEN_57 : 32'h0; // @[Router.scala 155:37]
  assign _GEN_84 = io_out_S_valid_out ? 32'h0 : _GEN_76; // @[Router.scala 155:37]
  assign _GEN_85 = io_out_S_valid_out ? 32'h0 : _GEN_79; // @[Router.scala 155:37]
  assign _GEN_86 = io_out_S_valid_out ? 32'h0 : _GEN_80; // @[Router.scala 155:37]
  assign _GEN_87 = io_out_N_valid_out ? _GEN_54 : 32'h0; // @[Router.scala 149:30]
  assign _GEN_90 = io_out_N_valid_out ? 32'h0 : _GEN_81; // @[Router.scala 149:30]
  assign _GEN_91 = io_out_N_valid_out ? 32'h0 : _GEN_84; // @[Router.scala 149:30]
  assign _GEN_92 = io_out_N_valid_out ? 32'h0 : _GEN_85; // @[Router.scala 149:30]
  assign _GEN_93 = io_out_N_valid_out ? 32'h0 : _GEN_86; // @[Router.scala 149:30]
  assign _GEN_94 = stateReg & _T_8; // @[Router.scala 131:33]
  assign _GEN_95 = stateReg & _GEN_50; // @[Router.scala 131:33]
  assign _GEN_96 = stateReg & _GEN_51; // @[Router.scala 131:33]
  assign _GEN_97 = stateReg & _GEN_52; // @[Router.scala 131:33]
  assign _GEN_98 = stateReg & _GEN_53; // @[Router.scala 131:33]
  assign _GEN_99 = stateReg ? _GEN_87 : 32'h0; // @[Router.scala 131:33]
  assign _GEN_102 = stateReg ? _GEN_90 : 32'h0; // @[Router.scala 131:33]
  assign _GEN_103 = stateReg ? _GEN_91 : 32'h0; // @[Router.scala 131:33]
  assign _GEN_104 = stateReg ? _GEN_92 : 32'h0; // @[Router.scala 131:33]
  assign _GEN_105 = stateReg ? _GEN_93 : 32'h0; // @[Router.scala 131:33]
  assign out_N_dout = _T_6 ? 32'h0 : _GEN_99; // @[Router.scala 92:26]
  assign out_E_dout = _T_6 ? 32'h0 : _GEN_104; // @[Router.scala 92:26]
  assign out_CPU_dout = _T_6 ? 32'h0 : _GEN_105; // @[Router.scala 92:26]
  assign io_in_N_ready_out = _T_6 & io_in_N_valid_in; // @[Router.scala 66:21 Router.scala 105:25]
  assign io_in_S_ready_out = _T_6 & _GEN_32; // @[Router.scala 67:21 Router.scala 110:25]
  assign io_in_W_ready_out = _T_6 & _GEN_34; // @[Router.scala 68:21 Router.scala 115:25]
  assign io_in_E_ready_out = _T_6 & _GEN_36; // @[Router.scala 69:21 Router.scala 120:25]
  assign io_out_N_valid_out = _T_6 ? 1'h0 : _GEN_97; // @[Router.scala 60:22 Router.scala 93:24 Router.scala 143:28]
  assign io_out_N_dout = _T_6 ? 32'h0 : out_N_dout; // @[Router.scala 54:17 Router.scala 94:19]
  assign io_out_S_valid_out = _T_6 ? 1'h0 : _GEN_96; // @[Router.scala 61:22 Router.scala 95:24 Router.scala 141:28]
  assign io_out_S_dout = _T_6 ? 32'h0 : _GEN_102; // @[Router.scala 55:17 Router.scala 96:19 Router.scala 157:23]
  assign io_out_W_valid_out = _T_6 ? 1'h0 : _GEN_95; // @[Router.scala 62:22 Router.scala 97:24 Router.scala 137:26]
  assign io_out_W_dout = _T_6 ? 32'h0 : _GEN_103; // @[Router.scala 56:17 Router.scala 98:19 Router.scala 163:23]
  assign io_out_E_valid_out = _T_6 ? 1'h0 : _GEN_94; // @[Router.scala 63:22 Router.scala 99:24 Router.scala 135:26]
  assign io_out_E_dout = _T_6 ? 32'h0 : out_E_dout; // @[Router.scala 57:17 Router.scala 100:19]
  assign io_out_CPU_valid_out = _T_6 ? 1'h0 : _GEN_98; // @[Router.scala 64:24 Router.scala 101:26 Router.scala 145:30]
  assign io_out_CPU_dout = _T_6 ? 32'h0 : out_CPU_dout; // @[Router.scala 58:19 Router.scala 102:21]
  assign _GEN_131 = _T_6 == 1'h0; // @[Router.scala 134:13]
  assign _GEN_132 = _GEN_131 & stateReg; // @[Router.scala 134:13]
  assign _GEN_133 = _GEN_132 & _T_8; // @[Router.scala 134:13]
  assign _GEN_136 = _T_8 == 1'h0; // @[Router.scala 139:13]
  assign _GEN_137 = _GEN_132 & _GEN_136; // @[Router.scala 139:13]
  assign _GEN_138 = _T_11 == 1'h0; // @[Router.scala 139:13]
  assign _GEN_139 = _GEN_137 & _GEN_138; // @[Router.scala 139:13]
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
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
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
  dataReg = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  stateReg = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      dataReg <= 32'h0;
    end else if (_T_6) begin
      if (io_in_N_valid_in) begin
        dataReg <= io_in_N_din;
      end else if (io_in_S_valid_in) begin
        dataReg <= io_in_S_din;
      end else if (io_in_W_valid_in) begin
        dataReg <= io_in_W_din;
      end else if (io_in_E_valid_in) begin
        dataReg <= io_in_E_din;
      end else if (io_in_CPU_valid_in) begin
        dataReg <= io_in_CPU_din;
      end
    end else if (stateReg) begin
      if (io_out_N_valid_out) begin
        if (io_out_N_ready_in) begin
          dataReg <= 32'h0;
        end
      end else if (io_out_S_valid_out) begin
        if (io_out_S_ready_in) begin
          dataReg <= 32'h0;
        end
      end else if (io_out_W_valid_out) begin
        if (io_out_W_ready_in) begin
          dataReg <= 32'h0;
        end
      end else if (io_out_E_valid_out) begin
        if (io_out_E_ready_in) begin
          dataReg <= 32'h0;
        end
      end else if (io_out_CPU_valid_out) begin
        if (io_out_CPU_ready_in) begin
          dataReg <= 32'h0;
        end
      end
    end
    if (reset) begin
      stateReg <= 1'h0;
    end else if (_T_6) begin
      stateReg <= _GEN_29;
    end else if (stateReg) begin
      if (io_out_N_valid_out) begin
        if (io_out_N_ready_in) begin
          stateReg <= 1'h0;
        end
      end else if (io_out_S_valid_out) begin
        if (io_out_S_ready_in) begin
          stateReg <= 1'h0;
        end
      end else if (io_out_W_valid_out) begin
        if (io_out_W_ready_in) begin
          stateReg <= 1'h0;
        end
      end else if (io_out_E_valid_out) begin
        if (io_out_E_ready_in) begin
          stateReg <= 1'h0;
        end
      end else if (io_out_CPU_valid_out) begin
        if (io_out_CPU_ready_in) begin
          stateReg <= 1'h0;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Dest_x is %d, a dest_y is %d\n",destination_x,destination_y); // @[Router.scala 85:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Data Registar of router (%d,%d) is: %d\n",io_x,io_y,dataReg); // @[Router.scala 86:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"State registar of router (%d,%d) is: %d\n",io_x,io_y,stateReg); // @[Router.scala 87:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_133 & _T_1) begin
          $fwrite(32'h80000002,"uso x\n"); // @[Router.scala 134:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_139 & _T_1) begin
          $fwrite(32'h80000002,"uso y\n"); // @[Router.scala 139:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"!!!!!!!!\n"); // @[Router.scala 182:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module noc(
  input         clock,
  input         reset,
  input  [31:0] io_cpu_din,
  input         io_cpu_valid_in,
  input         io_cpu_ready_in
);
  wire  router1_clock; // @[noc.scala 19:23]
  wire  router1_reset; // @[noc.scala 19:23]
  wire  router1_io_in_N_valid_in; // @[noc.scala 19:23]
  wire  router1_io_in_N_ready_out; // @[noc.scala 19:23]
  wire [31:0] router1_io_in_N_din; // @[noc.scala 19:23]
  wire  router1_io_in_S_valid_in; // @[noc.scala 19:23]
  wire  router1_io_in_S_ready_out; // @[noc.scala 19:23]
  wire [31:0] router1_io_in_S_din; // @[noc.scala 19:23]
  wire  router1_io_in_W_valid_in; // @[noc.scala 19:23]
  wire  router1_io_in_W_ready_out; // @[noc.scala 19:23]
  wire [31:0] router1_io_in_W_din; // @[noc.scala 19:23]
  wire  router1_io_in_E_valid_in; // @[noc.scala 19:23]
  wire  router1_io_in_E_ready_out; // @[noc.scala 19:23]
  wire [31:0] router1_io_in_E_din; // @[noc.scala 19:23]
  wire  router1_io_in_CPU_valid_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_in_CPU_din; // @[noc.scala 19:23]
  wire  router1_io_out_N_valid_out; // @[noc.scala 19:23]
  wire  router1_io_out_N_ready_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_out_N_dout; // @[noc.scala 19:23]
  wire  router1_io_out_S_valid_out; // @[noc.scala 19:23]
  wire  router1_io_out_S_ready_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_out_S_dout; // @[noc.scala 19:23]
  wire  router1_io_out_W_valid_out; // @[noc.scala 19:23]
  wire  router1_io_out_W_ready_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_out_W_dout; // @[noc.scala 19:23]
  wire  router1_io_out_E_valid_out; // @[noc.scala 19:23]
  wire  router1_io_out_E_ready_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_out_E_dout; // @[noc.scala 19:23]
  wire  router1_io_out_CPU_valid_out; // @[noc.scala 19:23]
  wire  router1_io_out_CPU_ready_in; // @[noc.scala 19:23]
  wire [31:0] router1_io_out_CPU_dout; // @[noc.scala 19:23]
  wire [1:0] router1_io_x; // @[noc.scala 19:23]
  wire [1:0] router1_io_y; // @[noc.scala 19:23]
  wire  router2_clock; // @[noc.scala 20:23]
  wire  router2_reset; // @[noc.scala 20:23]
  wire  router2_io_in_N_valid_in; // @[noc.scala 20:23]
  wire  router2_io_in_N_ready_out; // @[noc.scala 20:23]
  wire [31:0] router2_io_in_N_din; // @[noc.scala 20:23]
  wire  router2_io_in_S_valid_in; // @[noc.scala 20:23]
  wire  router2_io_in_S_ready_out; // @[noc.scala 20:23]
  wire [31:0] router2_io_in_S_din; // @[noc.scala 20:23]
  wire  router2_io_in_W_valid_in; // @[noc.scala 20:23]
  wire  router2_io_in_W_ready_out; // @[noc.scala 20:23]
  wire [31:0] router2_io_in_W_din; // @[noc.scala 20:23]
  wire  router2_io_in_E_valid_in; // @[noc.scala 20:23]
  wire  router2_io_in_E_ready_out; // @[noc.scala 20:23]
  wire [31:0] router2_io_in_E_din; // @[noc.scala 20:23]
  wire  router2_io_in_CPU_valid_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_in_CPU_din; // @[noc.scala 20:23]
  wire  router2_io_out_N_valid_out; // @[noc.scala 20:23]
  wire  router2_io_out_N_ready_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_out_N_dout; // @[noc.scala 20:23]
  wire  router2_io_out_S_valid_out; // @[noc.scala 20:23]
  wire  router2_io_out_S_ready_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_out_S_dout; // @[noc.scala 20:23]
  wire  router2_io_out_W_valid_out; // @[noc.scala 20:23]
  wire  router2_io_out_W_ready_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_out_W_dout; // @[noc.scala 20:23]
  wire  router2_io_out_E_valid_out; // @[noc.scala 20:23]
  wire  router2_io_out_E_ready_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_out_E_dout; // @[noc.scala 20:23]
  wire  router2_io_out_CPU_valid_out; // @[noc.scala 20:23]
  wire  router2_io_out_CPU_ready_in; // @[noc.scala 20:23]
  wire [31:0] router2_io_out_CPU_dout; // @[noc.scala 20:23]
  wire [1:0] router2_io_x; // @[noc.scala 20:23]
  wire [1:0] router2_io_y; // @[noc.scala 20:23]
  wire  router3_clock; // @[noc.scala 21:23]
  wire  router3_reset; // @[noc.scala 21:23]
  wire  router3_io_in_N_valid_in; // @[noc.scala 21:23]
  wire  router3_io_in_N_ready_out; // @[noc.scala 21:23]
  wire [31:0] router3_io_in_N_din; // @[noc.scala 21:23]
  wire  router3_io_in_S_valid_in; // @[noc.scala 21:23]
  wire  router3_io_in_S_ready_out; // @[noc.scala 21:23]
  wire [31:0] router3_io_in_S_din; // @[noc.scala 21:23]
  wire  router3_io_in_W_valid_in; // @[noc.scala 21:23]
  wire  router3_io_in_W_ready_out; // @[noc.scala 21:23]
  wire [31:0] router3_io_in_W_din; // @[noc.scala 21:23]
  wire  router3_io_in_E_valid_in; // @[noc.scala 21:23]
  wire  router3_io_in_E_ready_out; // @[noc.scala 21:23]
  wire [31:0] router3_io_in_E_din; // @[noc.scala 21:23]
  wire  router3_io_in_CPU_valid_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_in_CPU_din; // @[noc.scala 21:23]
  wire  router3_io_out_N_valid_out; // @[noc.scala 21:23]
  wire  router3_io_out_N_ready_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_out_N_dout; // @[noc.scala 21:23]
  wire  router3_io_out_S_valid_out; // @[noc.scala 21:23]
  wire  router3_io_out_S_ready_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_out_S_dout; // @[noc.scala 21:23]
  wire  router3_io_out_W_valid_out; // @[noc.scala 21:23]
  wire  router3_io_out_W_ready_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_out_W_dout; // @[noc.scala 21:23]
  wire  router3_io_out_E_valid_out; // @[noc.scala 21:23]
  wire  router3_io_out_E_ready_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_out_E_dout; // @[noc.scala 21:23]
  wire  router3_io_out_CPU_valid_out; // @[noc.scala 21:23]
  wire  router3_io_out_CPU_ready_in; // @[noc.scala 21:23]
  wire [31:0] router3_io_out_CPU_dout; // @[noc.scala 21:23]
  wire [1:0] router3_io_x; // @[noc.scala 21:23]
  wire [1:0] router3_io_y; // @[noc.scala 21:23]
  wire  router4_clock; // @[noc.scala 22:23]
  wire  router4_reset; // @[noc.scala 22:23]
  wire  router4_io_in_N_valid_in; // @[noc.scala 22:23]
  wire  router4_io_in_N_ready_out; // @[noc.scala 22:23]
  wire [31:0] router4_io_in_N_din; // @[noc.scala 22:23]
  wire  router4_io_in_S_valid_in; // @[noc.scala 22:23]
  wire  router4_io_in_S_ready_out; // @[noc.scala 22:23]
  wire [31:0] router4_io_in_S_din; // @[noc.scala 22:23]
  wire  router4_io_in_W_valid_in; // @[noc.scala 22:23]
  wire  router4_io_in_W_ready_out; // @[noc.scala 22:23]
  wire [31:0] router4_io_in_W_din; // @[noc.scala 22:23]
  wire  router4_io_in_E_valid_in; // @[noc.scala 22:23]
  wire  router4_io_in_E_ready_out; // @[noc.scala 22:23]
  wire [31:0] router4_io_in_E_din; // @[noc.scala 22:23]
  wire  router4_io_in_CPU_valid_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_in_CPU_din; // @[noc.scala 22:23]
  wire  router4_io_out_N_valid_out; // @[noc.scala 22:23]
  wire  router4_io_out_N_ready_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_out_N_dout; // @[noc.scala 22:23]
  wire  router4_io_out_S_valid_out; // @[noc.scala 22:23]
  wire  router4_io_out_S_ready_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_out_S_dout; // @[noc.scala 22:23]
  wire  router4_io_out_W_valid_out; // @[noc.scala 22:23]
  wire  router4_io_out_W_ready_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_out_W_dout; // @[noc.scala 22:23]
  wire  router4_io_out_E_valid_out; // @[noc.scala 22:23]
  wire  router4_io_out_E_ready_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_out_E_dout; // @[noc.scala 22:23]
  wire  router4_io_out_CPU_valid_out; // @[noc.scala 22:23]
  wire  router4_io_out_CPU_ready_in; // @[noc.scala 22:23]
  wire [31:0] router4_io_out_CPU_dout; // @[noc.scala 22:23]
  wire [1:0] router4_io_x; // @[noc.scala 22:23]
  wire [1:0] router4_io_y; // @[noc.scala 22:23]
  wire  router5_clock; // @[noc.scala 23:23]
  wire  router5_reset; // @[noc.scala 23:23]
  wire  router5_io_in_N_valid_in; // @[noc.scala 23:23]
  wire  router5_io_in_N_ready_out; // @[noc.scala 23:23]
  wire [31:0] router5_io_in_N_din; // @[noc.scala 23:23]
  wire  router5_io_in_S_valid_in; // @[noc.scala 23:23]
  wire  router5_io_in_S_ready_out; // @[noc.scala 23:23]
  wire [31:0] router5_io_in_S_din; // @[noc.scala 23:23]
  wire  router5_io_in_W_valid_in; // @[noc.scala 23:23]
  wire  router5_io_in_W_ready_out; // @[noc.scala 23:23]
  wire [31:0] router5_io_in_W_din; // @[noc.scala 23:23]
  wire  router5_io_in_E_valid_in; // @[noc.scala 23:23]
  wire  router5_io_in_E_ready_out; // @[noc.scala 23:23]
  wire [31:0] router5_io_in_E_din; // @[noc.scala 23:23]
  wire  router5_io_in_CPU_valid_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_in_CPU_din; // @[noc.scala 23:23]
  wire  router5_io_out_N_valid_out; // @[noc.scala 23:23]
  wire  router5_io_out_N_ready_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_out_N_dout; // @[noc.scala 23:23]
  wire  router5_io_out_S_valid_out; // @[noc.scala 23:23]
  wire  router5_io_out_S_ready_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_out_S_dout; // @[noc.scala 23:23]
  wire  router5_io_out_W_valid_out; // @[noc.scala 23:23]
  wire  router5_io_out_W_ready_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_out_W_dout; // @[noc.scala 23:23]
  wire  router5_io_out_E_valid_out; // @[noc.scala 23:23]
  wire  router5_io_out_E_ready_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_out_E_dout; // @[noc.scala 23:23]
  wire  router5_io_out_CPU_valid_out; // @[noc.scala 23:23]
  wire  router5_io_out_CPU_ready_in; // @[noc.scala 23:23]
  wire [31:0] router5_io_out_CPU_dout; // @[noc.scala 23:23]
  wire [1:0] router5_io_x; // @[noc.scala 23:23]
  wire [1:0] router5_io_y; // @[noc.scala 23:23]
  wire  router6_clock; // @[noc.scala 24:23]
  wire  router6_reset; // @[noc.scala 24:23]
  wire  router6_io_in_N_valid_in; // @[noc.scala 24:23]
  wire  router6_io_in_N_ready_out; // @[noc.scala 24:23]
  wire [31:0] router6_io_in_N_din; // @[noc.scala 24:23]
  wire  router6_io_in_S_valid_in; // @[noc.scala 24:23]
  wire  router6_io_in_S_ready_out; // @[noc.scala 24:23]
  wire [31:0] router6_io_in_S_din; // @[noc.scala 24:23]
  wire  router6_io_in_W_valid_in; // @[noc.scala 24:23]
  wire  router6_io_in_W_ready_out; // @[noc.scala 24:23]
  wire [31:0] router6_io_in_W_din; // @[noc.scala 24:23]
  wire  router6_io_in_E_valid_in; // @[noc.scala 24:23]
  wire  router6_io_in_E_ready_out; // @[noc.scala 24:23]
  wire [31:0] router6_io_in_E_din; // @[noc.scala 24:23]
  wire  router6_io_in_CPU_valid_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_in_CPU_din; // @[noc.scala 24:23]
  wire  router6_io_out_N_valid_out; // @[noc.scala 24:23]
  wire  router6_io_out_N_ready_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_out_N_dout; // @[noc.scala 24:23]
  wire  router6_io_out_S_valid_out; // @[noc.scala 24:23]
  wire  router6_io_out_S_ready_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_out_S_dout; // @[noc.scala 24:23]
  wire  router6_io_out_W_valid_out; // @[noc.scala 24:23]
  wire  router6_io_out_W_ready_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_out_W_dout; // @[noc.scala 24:23]
  wire  router6_io_out_E_valid_out; // @[noc.scala 24:23]
  wire  router6_io_out_E_ready_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_out_E_dout; // @[noc.scala 24:23]
  wire  router6_io_out_CPU_valid_out; // @[noc.scala 24:23]
  wire  router6_io_out_CPU_ready_in; // @[noc.scala 24:23]
  wire [31:0] router6_io_out_CPU_dout; // @[noc.scala 24:23]
  wire [1:0] router6_io_x; // @[noc.scala 24:23]
  wire [1:0] router6_io_y; // @[noc.scala 24:23]
  wire  router7_clock; // @[noc.scala 25:23]
  wire  router7_reset; // @[noc.scala 25:23]
  wire  router7_io_in_N_valid_in; // @[noc.scala 25:23]
  wire  router7_io_in_N_ready_out; // @[noc.scala 25:23]
  wire [31:0] router7_io_in_N_din; // @[noc.scala 25:23]
  wire  router7_io_in_S_valid_in; // @[noc.scala 25:23]
  wire  router7_io_in_S_ready_out; // @[noc.scala 25:23]
  wire [31:0] router7_io_in_S_din; // @[noc.scala 25:23]
  wire  router7_io_in_W_valid_in; // @[noc.scala 25:23]
  wire  router7_io_in_W_ready_out; // @[noc.scala 25:23]
  wire [31:0] router7_io_in_W_din; // @[noc.scala 25:23]
  wire  router7_io_in_E_valid_in; // @[noc.scala 25:23]
  wire  router7_io_in_E_ready_out; // @[noc.scala 25:23]
  wire [31:0] router7_io_in_E_din; // @[noc.scala 25:23]
  wire  router7_io_in_CPU_valid_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_in_CPU_din; // @[noc.scala 25:23]
  wire  router7_io_out_N_valid_out; // @[noc.scala 25:23]
  wire  router7_io_out_N_ready_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_out_N_dout; // @[noc.scala 25:23]
  wire  router7_io_out_S_valid_out; // @[noc.scala 25:23]
  wire  router7_io_out_S_ready_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_out_S_dout; // @[noc.scala 25:23]
  wire  router7_io_out_W_valid_out; // @[noc.scala 25:23]
  wire  router7_io_out_W_ready_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_out_W_dout; // @[noc.scala 25:23]
  wire  router7_io_out_E_valid_out; // @[noc.scala 25:23]
  wire  router7_io_out_E_ready_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_out_E_dout; // @[noc.scala 25:23]
  wire  router7_io_out_CPU_valid_out; // @[noc.scala 25:23]
  wire  router7_io_out_CPU_ready_in; // @[noc.scala 25:23]
  wire [31:0] router7_io_out_CPU_dout; // @[noc.scala 25:23]
  wire [1:0] router7_io_x; // @[noc.scala 25:23]
  wire [1:0] router7_io_y; // @[noc.scala 25:23]
  wire  router8_clock; // @[noc.scala 26:23]
  wire  router8_reset; // @[noc.scala 26:23]
  wire  router8_io_in_N_valid_in; // @[noc.scala 26:23]
  wire  router8_io_in_N_ready_out; // @[noc.scala 26:23]
  wire [31:0] router8_io_in_N_din; // @[noc.scala 26:23]
  wire  router8_io_in_S_valid_in; // @[noc.scala 26:23]
  wire  router8_io_in_S_ready_out; // @[noc.scala 26:23]
  wire [31:0] router8_io_in_S_din; // @[noc.scala 26:23]
  wire  router8_io_in_W_valid_in; // @[noc.scala 26:23]
  wire  router8_io_in_W_ready_out; // @[noc.scala 26:23]
  wire [31:0] router8_io_in_W_din; // @[noc.scala 26:23]
  wire  router8_io_in_E_valid_in; // @[noc.scala 26:23]
  wire  router8_io_in_E_ready_out; // @[noc.scala 26:23]
  wire [31:0] router8_io_in_E_din; // @[noc.scala 26:23]
  wire  router8_io_in_CPU_valid_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_in_CPU_din; // @[noc.scala 26:23]
  wire  router8_io_out_N_valid_out; // @[noc.scala 26:23]
  wire  router8_io_out_N_ready_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_out_N_dout; // @[noc.scala 26:23]
  wire  router8_io_out_S_valid_out; // @[noc.scala 26:23]
  wire  router8_io_out_S_ready_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_out_S_dout; // @[noc.scala 26:23]
  wire  router8_io_out_W_valid_out; // @[noc.scala 26:23]
  wire  router8_io_out_W_ready_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_out_W_dout; // @[noc.scala 26:23]
  wire  router8_io_out_E_valid_out; // @[noc.scala 26:23]
  wire  router8_io_out_E_ready_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_out_E_dout; // @[noc.scala 26:23]
  wire  router8_io_out_CPU_valid_out; // @[noc.scala 26:23]
  wire  router8_io_out_CPU_ready_in; // @[noc.scala 26:23]
  wire [31:0] router8_io_out_CPU_dout; // @[noc.scala 26:23]
  wire [1:0] router8_io_x; // @[noc.scala 26:23]
  wire [1:0] router8_io_y; // @[noc.scala 26:23]
  wire  router9_clock; // @[noc.scala 27:23]
  wire  router9_reset; // @[noc.scala 27:23]
  wire  router9_io_in_N_valid_in; // @[noc.scala 27:23]
  wire  router9_io_in_N_ready_out; // @[noc.scala 27:23]
  wire [31:0] router9_io_in_N_din; // @[noc.scala 27:23]
  wire  router9_io_in_S_valid_in; // @[noc.scala 27:23]
  wire  router9_io_in_S_ready_out; // @[noc.scala 27:23]
  wire [31:0] router9_io_in_S_din; // @[noc.scala 27:23]
  wire  router9_io_in_W_valid_in; // @[noc.scala 27:23]
  wire  router9_io_in_W_ready_out; // @[noc.scala 27:23]
  wire [31:0] router9_io_in_W_din; // @[noc.scala 27:23]
  wire  router9_io_in_E_valid_in; // @[noc.scala 27:23]
  wire  router9_io_in_E_ready_out; // @[noc.scala 27:23]
  wire [31:0] router9_io_in_E_din; // @[noc.scala 27:23]
  wire  router9_io_in_CPU_valid_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_in_CPU_din; // @[noc.scala 27:23]
  wire  router9_io_out_N_valid_out; // @[noc.scala 27:23]
  wire  router9_io_out_N_ready_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_out_N_dout; // @[noc.scala 27:23]
  wire  router9_io_out_S_valid_out; // @[noc.scala 27:23]
  wire  router9_io_out_S_ready_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_out_S_dout; // @[noc.scala 27:23]
  wire  router9_io_out_W_valid_out; // @[noc.scala 27:23]
  wire  router9_io_out_W_ready_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_out_W_dout; // @[noc.scala 27:23]
  wire  router9_io_out_E_valid_out; // @[noc.scala 27:23]
  wire  router9_io_out_E_ready_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_out_E_dout; // @[noc.scala 27:23]
  wire  router9_io_out_CPU_valid_out; // @[noc.scala 27:23]
  wire  router9_io_out_CPU_ready_in; // @[noc.scala 27:23]
  wire [31:0] router9_io_out_CPU_dout; // @[noc.scala 27:23]
  wire [1:0] router9_io_x; // @[noc.scala 27:23]
  wire [1:0] router9_io_y; // @[noc.scala 27:23]
  wire  _T_1; // @[noc.scala 202:9]
  Router router1 ( // @[noc.scala 19:23]
    .clock(router1_clock),
    .reset(router1_reset),
    .io_in_N_valid_in(router1_io_in_N_valid_in),
    .io_in_N_ready_out(router1_io_in_N_ready_out),
    .io_in_N_din(router1_io_in_N_din),
    .io_in_S_valid_in(router1_io_in_S_valid_in),
    .io_in_S_ready_out(router1_io_in_S_ready_out),
    .io_in_S_din(router1_io_in_S_din),
    .io_in_W_valid_in(router1_io_in_W_valid_in),
    .io_in_W_ready_out(router1_io_in_W_ready_out),
    .io_in_W_din(router1_io_in_W_din),
    .io_in_E_valid_in(router1_io_in_E_valid_in),
    .io_in_E_ready_out(router1_io_in_E_ready_out),
    .io_in_E_din(router1_io_in_E_din),
    .io_in_CPU_valid_in(router1_io_in_CPU_valid_in),
    .io_in_CPU_din(router1_io_in_CPU_din),
    .io_out_N_valid_out(router1_io_out_N_valid_out),
    .io_out_N_ready_in(router1_io_out_N_ready_in),
    .io_out_N_dout(router1_io_out_N_dout),
    .io_out_S_valid_out(router1_io_out_S_valid_out),
    .io_out_S_ready_in(router1_io_out_S_ready_in),
    .io_out_S_dout(router1_io_out_S_dout),
    .io_out_W_valid_out(router1_io_out_W_valid_out),
    .io_out_W_ready_in(router1_io_out_W_ready_in),
    .io_out_W_dout(router1_io_out_W_dout),
    .io_out_E_valid_out(router1_io_out_E_valid_out),
    .io_out_E_ready_in(router1_io_out_E_ready_in),
    .io_out_E_dout(router1_io_out_E_dout),
    .io_out_CPU_valid_out(router1_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router1_io_out_CPU_ready_in),
    .io_out_CPU_dout(router1_io_out_CPU_dout),
    .io_x(router1_io_x),
    .io_y(router1_io_y)
  );
  Router router2 ( // @[noc.scala 20:23]
    .clock(router2_clock),
    .reset(router2_reset),
    .io_in_N_valid_in(router2_io_in_N_valid_in),
    .io_in_N_ready_out(router2_io_in_N_ready_out),
    .io_in_N_din(router2_io_in_N_din),
    .io_in_S_valid_in(router2_io_in_S_valid_in),
    .io_in_S_ready_out(router2_io_in_S_ready_out),
    .io_in_S_din(router2_io_in_S_din),
    .io_in_W_valid_in(router2_io_in_W_valid_in),
    .io_in_W_ready_out(router2_io_in_W_ready_out),
    .io_in_W_din(router2_io_in_W_din),
    .io_in_E_valid_in(router2_io_in_E_valid_in),
    .io_in_E_ready_out(router2_io_in_E_ready_out),
    .io_in_E_din(router2_io_in_E_din),
    .io_in_CPU_valid_in(router2_io_in_CPU_valid_in),
    .io_in_CPU_din(router2_io_in_CPU_din),
    .io_out_N_valid_out(router2_io_out_N_valid_out),
    .io_out_N_ready_in(router2_io_out_N_ready_in),
    .io_out_N_dout(router2_io_out_N_dout),
    .io_out_S_valid_out(router2_io_out_S_valid_out),
    .io_out_S_ready_in(router2_io_out_S_ready_in),
    .io_out_S_dout(router2_io_out_S_dout),
    .io_out_W_valid_out(router2_io_out_W_valid_out),
    .io_out_W_ready_in(router2_io_out_W_ready_in),
    .io_out_W_dout(router2_io_out_W_dout),
    .io_out_E_valid_out(router2_io_out_E_valid_out),
    .io_out_E_ready_in(router2_io_out_E_ready_in),
    .io_out_E_dout(router2_io_out_E_dout),
    .io_out_CPU_valid_out(router2_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router2_io_out_CPU_ready_in),
    .io_out_CPU_dout(router2_io_out_CPU_dout),
    .io_x(router2_io_x),
    .io_y(router2_io_y)
  );
  Router router3 ( // @[noc.scala 21:23]
    .clock(router3_clock),
    .reset(router3_reset),
    .io_in_N_valid_in(router3_io_in_N_valid_in),
    .io_in_N_ready_out(router3_io_in_N_ready_out),
    .io_in_N_din(router3_io_in_N_din),
    .io_in_S_valid_in(router3_io_in_S_valid_in),
    .io_in_S_ready_out(router3_io_in_S_ready_out),
    .io_in_S_din(router3_io_in_S_din),
    .io_in_W_valid_in(router3_io_in_W_valid_in),
    .io_in_W_ready_out(router3_io_in_W_ready_out),
    .io_in_W_din(router3_io_in_W_din),
    .io_in_E_valid_in(router3_io_in_E_valid_in),
    .io_in_E_ready_out(router3_io_in_E_ready_out),
    .io_in_E_din(router3_io_in_E_din),
    .io_in_CPU_valid_in(router3_io_in_CPU_valid_in),
    .io_in_CPU_din(router3_io_in_CPU_din),
    .io_out_N_valid_out(router3_io_out_N_valid_out),
    .io_out_N_ready_in(router3_io_out_N_ready_in),
    .io_out_N_dout(router3_io_out_N_dout),
    .io_out_S_valid_out(router3_io_out_S_valid_out),
    .io_out_S_ready_in(router3_io_out_S_ready_in),
    .io_out_S_dout(router3_io_out_S_dout),
    .io_out_W_valid_out(router3_io_out_W_valid_out),
    .io_out_W_ready_in(router3_io_out_W_ready_in),
    .io_out_W_dout(router3_io_out_W_dout),
    .io_out_E_valid_out(router3_io_out_E_valid_out),
    .io_out_E_ready_in(router3_io_out_E_ready_in),
    .io_out_E_dout(router3_io_out_E_dout),
    .io_out_CPU_valid_out(router3_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router3_io_out_CPU_ready_in),
    .io_out_CPU_dout(router3_io_out_CPU_dout),
    .io_x(router3_io_x),
    .io_y(router3_io_y)
  );
  Router router4 ( // @[noc.scala 22:23]
    .clock(router4_clock),
    .reset(router4_reset),
    .io_in_N_valid_in(router4_io_in_N_valid_in),
    .io_in_N_ready_out(router4_io_in_N_ready_out),
    .io_in_N_din(router4_io_in_N_din),
    .io_in_S_valid_in(router4_io_in_S_valid_in),
    .io_in_S_ready_out(router4_io_in_S_ready_out),
    .io_in_S_din(router4_io_in_S_din),
    .io_in_W_valid_in(router4_io_in_W_valid_in),
    .io_in_W_ready_out(router4_io_in_W_ready_out),
    .io_in_W_din(router4_io_in_W_din),
    .io_in_E_valid_in(router4_io_in_E_valid_in),
    .io_in_E_ready_out(router4_io_in_E_ready_out),
    .io_in_E_din(router4_io_in_E_din),
    .io_in_CPU_valid_in(router4_io_in_CPU_valid_in),
    .io_in_CPU_din(router4_io_in_CPU_din),
    .io_out_N_valid_out(router4_io_out_N_valid_out),
    .io_out_N_ready_in(router4_io_out_N_ready_in),
    .io_out_N_dout(router4_io_out_N_dout),
    .io_out_S_valid_out(router4_io_out_S_valid_out),
    .io_out_S_ready_in(router4_io_out_S_ready_in),
    .io_out_S_dout(router4_io_out_S_dout),
    .io_out_W_valid_out(router4_io_out_W_valid_out),
    .io_out_W_ready_in(router4_io_out_W_ready_in),
    .io_out_W_dout(router4_io_out_W_dout),
    .io_out_E_valid_out(router4_io_out_E_valid_out),
    .io_out_E_ready_in(router4_io_out_E_ready_in),
    .io_out_E_dout(router4_io_out_E_dout),
    .io_out_CPU_valid_out(router4_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router4_io_out_CPU_ready_in),
    .io_out_CPU_dout(router4_io_out_CPU_dout),
    .io_x(router4_io_x),
    .io_y(router4_io_y)
  );
  Router router5 ( // @[noc.scala 23:23]
    .clock(router5_clock),
    .reset(router5_reset),
    .io_in_N_valid_in(router5_io_in_N_valid_in),
    .io_in_N_ready_out(router5_io_in_N_ready_out),
    .io_in_N_din(router5_io_in_N_din),
    .io_in_S_valid_in(router5_io_in_S_valid_in),
    .io_in_S_ready_out(router5_io_in_S_ready_out),
    .io_in_S_din(router5_io_in_S_din),
    .io_in_W_valid_in(router5_io_in_W_valid_in),
    .io_in_W_ready_out(router5_io_in_W_ready_out),
    .io_in_W_din(router5_io_in_W_din),
    .io_in_E_valid_in(router5_io_in_E_valid_in),
    .io_in_E_ready_out(router5_io_in_E_ready_out),
    .io_in_E_din(router5_io_in_E_din),
    .io_in_CPU_valid_in(router5_io_in_CPU_valid_in),
    .io_in_CPU_din(router5_io_in_CPU_din),
    .io_out_N_valid_out(router5_io_out_N_valid_out),
    .io_out_N_ready_in(router5_io_out_N_ready_in),
    .io_out_N_dout(router5_io_out_N_dout),
    .io_out_S_valid_out(router5_io_out_S_valid_out),
    .io_out_S_ready_in(router5_io_out_S_ready_in),
    .io_out_S_dout(router5_io_out_S_dout),
    .io_out_W_valid_out(router5_io_out_W_valid_out),
    .io_out_W_ready_in(router5_io_out_W_ready_in),
    .io_out_W_dout(router5_io_out_W_dout),
    .io_out_E_valid_out(router5_io_out_E_valid_out),
    .io_out_E_ready_in(router5_io_out_E_ready_in),
    .io_out_E_dout(router5_io_out_E_dout),
    .io_out_CPU_valid_out(router5_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router5_io_out_CPU_ready_in),
    .io_out_CPU_dout(router5_io_out_CPU_dout),
    .io_x(router5_io_x),
    .io_y(router5_io_y)
  );
  Router router6 ( // @[noc.scala 24:23]
    .clock(router6_clock),
    .reset(router6_reset),
    .io_in_N_valid_in(router6_io_in_N_valid_in),
    .io_in_N_ready_out(router6_io_in_N_ready_out),
    .io_in_N_din(router6_io_in_N_din),
    .io_in_S_valid_in(router6_io_in_S_valid_in),
    .io_in_S_ready_out(router6_io_in_S_ready_out),
    .io_in_S_din(router6_io_in_S_din),
    .io_in_W_valid_in(router6_io_in_W_valid_in),
    .io_in_W_ready_out(router6_io_in_W_ready_out),
    .io_in_W_din(router6_io_in_W_din),
    .io_in_E_valid_in(router6_io_in_E_valid_in),
    .io_in_E_ready_out(router6_io_in_E_ready_out),
    .io_in_E_din(router6_io_in_E_din),
    .io_in_CPU_valid_in(router6_io_in_CPU_valid_in),
    .io_in_CPU_din(router6_io_in_CPU_din),
    .io_out_N_valid_out(router6_io_out_N_valid_out),
    .io_out_N_ready_in(router6_io_out_N_ready_in),
    .io_out_N_dout(router6_io_out_N_dout),
    .io_out_S_valid_out(router6_io_out_S_valid_out),
    .io_out_S_ready_in(router6_io_out_S_ready_in),
    .io_out_S_dout(router6_io_out_S_dout),
    .io_out_W_valid_out(router6_io_out_W_valid_out),
    .io_out_W_ready_in(router6_io_out_W_ready_in),
    .io_out_W_dout(router6_io_out_W_dout),
    .io_out_E_valid_out(router6_io_out_E_valid_out),
    .io_out_E_ready_in(router6_io_out_E_ready_in),
    .io_out_E_dout(router6_io_out_E_dout),
    .io_out_CPU_valid_out(router6_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router6_io_out_CPU_ready_in),
    .io_out_CPU_dout(router6_io_out_CPU_dout),
    .io_x(router6_io_x),
    .io_y(router6_io_y)
  );
  Router router7 ( // @[noc.scala 25:23]
    .clock(router7_clock),
    .reset(router7_reset),
    .io_in_N_valid_in(router7_io_in_N_valid_in),
    .io_in_N_ready_out(router7_io_in_N_ready_out),
    .io_in_N_din(router7_io_in_N_din),
    .io_in_S_valid_in(router7_io_in_S_valid_in),
    .io_in_S_ready_out(router7_io_in_S_ready_out),
    .io_in_S_din(router7_io_in_S_din),
    .io_in_W_valid_in(router7_io_in_W_valid_in),
    .io_in_W_ready_out(router7_io_in_W_ready_out),
    .io_in_W_din(router7_io_in_W_din),
    .io_in_E_valid_in(router7_io_in_E_valid_in),
    .io_in_E_ready_out(router7_io_in_E_ready_out),
    .io_in_E_din(router7_io_in_E_din),
    .io_in_CPU_valid_in(router7_io_in_CPU_valid_in),
    .io_in_CPU_din(router7_io_in_CPU_din),
    .io_out_N_valid_out(router7_io_out_N_valid_out),
    .io_out_N_ready_in(router7_io_out_N_ready_in),
    .io_out_N_dout(router7_io_out_N_dout),
    .io_out_S_valid_out(router7_io_out_S_valid_out),
    .io_out_S_ready_in(router7_io_out_S_ready_in),
    .io_out_S_dout(router7_io_out_S_dout),
    .io_out_W_valid_out(router7_io_out_W_valid_out),
    .io_out_W_ready_in(router7_io_out_W_ready_in),
    .io_out_W_dout(router7_io_out_W_dout),
    .io_out_E_valid_out(router7_io_out_E_valid_out),
    .io_out_E_ready_in(router7_io_out_E_ready_in),
    .io_out_E_dout(router7_io_out_E_dout),
    .io_out_CPU_valid_out(router7_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router7_io_out_CPU_ready_in),
    .io_out_CPU_dout(router7_io_out_CPU_dout),
    .io_x(router7_io_x),
    .io_y(router7_io_y)
  );
  Router router8 ( // @[noc.scala 26:23]
    .clock(router8_clock),
    .reset(router8_reset),
    .io_in_N_valid_in(router8_io_in_N_valid_in),
    .io_in_N_ready_out(router8_io_in_N_ready_out),
    .io_in_N_din(router8_io_in_N_din),
    .io_in_S_valid_in(router8_io_in_S_valid_in),
    .io_in_S_ready_out(router8_io_in_S_ready_out),
    .io_in_S_din(router8_io_in_S_din),
    .io_in_W_valid_in(router8_io_in_W_valid_in),
    .io_in_W_ready_out(router8_io_in_W_ready_out),
    .io_in_W_din(router8_io_in_W_din),
    .io_in_E_valid_in(router8_io_in_E_valid_in),
    .io_in_E_ready_out(router8_io_in_E_ready_out),
    .io_in_E_din(router8_io_in_E_din),
    .io_in_CPU_valid_in(router8_io_in_CPU_valid_in),
    .io_in_CPU_din(router8_io_in_CPU_din),
    .io_out_N_valid_out(router8_io_out_N_valid_out),
    .io_out_N_ready_in(router8_io_out_N_ready_in),
    .io_out_N_dout(router8_io_out_N_dout),
    .io_out_S_valid_out(router8_io_out_S_valid_out),
    .io_out_S_ready_in(router8_io_out_S_ready_in),
    .io_out_S_dout(router8_io_out_S_dout),
    .io_out_W_valid_out(router8_io_out_W_valid_out),
    .io_out_W_ready_in(router8_io_out_W_ready_in),
    .io_out_W_dout(router8_io_out_W_dout),
    .io_out_E_valid_out(router8_io_out_E_valid_out),
    .io_out_E_ready_in(router8_io_out_E_ready_in),
    .io_out_E_dout(router8_io_out_E_dout),
    .io_out_CPU_valid_out(router8_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router8_io_out_CPU_ready_in),
    .io_out_CPU_dout(router8_io_out_CPU_dout),
    .io_x(router8_io_x),
    .io_y(router8_io_y)
  );
  Router router9 ( // @[noc.scala 27:23]
    .clock(router9_clock),
    .reset(router9_reset),
    .io_in_N_valid_in(router9_io_in_N_valid_in),
    .io_in_N_ready_out(router9_io_in_N_ready_out),
    .io_in_N_din(router9_io_in_N_din),
    .io_in_S_valid_in(router9_io_in_S_valid_in),
    .io_in_S_ready_out(router9_io_in_S_ready_out),
    .io_in_S_din(router9_io_in_S_din),
    .io_in_W_valid_in(router9_io_in_W_valid_in),
    .io_in_W_ready_out(router9_io_in_W_ready_out),
    .io_in_W_din(router9_io_in_W_din),
    .io_in_E_valid_in(router9_io_in_E_valid_in),
    .io_in_E_ready_out(router9_io_in_E_ready_out),
    .io_in_E_din(router9_io_in_E_din),
    .io_in_CPU_valid_in(router9_io_in_CPU_valid_in),
    .io_in_CPU_din(router9_io_in_CPU_din),
    .io_out_N_valid_out(router9_io_out_N_valid_out),
    .io_out_N_ready_in(router9_io_out_N_ready_in),
    .io_out_N_dout(router9_io_out_N_dout),
    .io_out_S_valid_out(router9_io_out_S_valid_out),
    .io_out_S_ready_in(router9_io_out_S_ready_in),
    .io_out_S_dout(router9_io_out_S_dout),
    .io_out_W_valid_out(router9_io_out_W_valid_out),
    .io_out_W_ready_in(router9_io_out_W_ready_in),
    .io_out_W_dout(router9_io_out_W_dout),
    .io_out_E_valid_out(router9_io_out_E_valid_out),
    .io_out_E_ready_in(router9_io_out_E_ready_in),
    .io_out_E_dout(router9_io_out_E_dout),
    .io_out_CPU_valid_out(router9_io_out_CPU_valid_out),
    .io_out_CPU_ready_in(router9_io_out_CPU_ready_in),
    .io_out_CPU_dout(router9_io_out_CPU_dout),
    .io_x(router9_io_x),
    .io_y(router9_io_y)
  );
  assign _T_1 = reset == 1'h0; // @[noc.scala 202:9]
  assign router1_clock = clock;
  assign router1_reset = reset;
  assign router1_io_in_N_valid_in = router7_io_out_S_valid_out; // @[noc.scala 106:28]
  assign router1_io_in_N_din = router7_io_out_S_dout; // @[noc.scala 56:23]
  assign router1_io_in_S_valid_in = router4_io_out_N_valid_out; // @[noc.scala 107:28]
  assign router1_io_in_S_din = router4_io_out_N_dout; // @[noc.scala 57:23]
  assign router1_io_in_W_valid_in = router3_io_out_E_valid_out; // @[noc.scala 108:28]
  assign router1_io_in_W_din = router3_io_out_E_dout; // @[noc.scala 58:23]
  assign router1_io_in_E_valid_in = router2_io_out_W_valid_out; // @[noc.scala 109:28]
  assign router1_io_in_E_din = router2_io_out_W_dout; // @[noc.scala 59:23]
  assign router1_io_in_CPU_valid_in = io_cpu_valid_in; // @[noc.scala 223:30]
  assign router1_io_in_CPU_din = io_cpu_din; // @[noc.scala 222:25]
  assign router1_io_out_N_ready_in = router7_io_in_S_ready_out; // @[noc.scala 155:29]
  assign router1_io_out_S_ready_in = router4_io_in_N_ready_out; // @[noc.scala 156:29]
  assign router1_io_out_W_ready_in = router3_io_in_E_ready_out; // @[noc.scala 157:29]
  assign router1_io_out_E_ready_in = router2_io_in_W_ready_out; // @[noc.scala 158:29]
  assign router1_io_out_CPU_ready_in = 1'h0; // @[noc.scala 224:31]
  assign router1_io_x = 2'h0; // @[noc.scala 29:16]
  assign router1_io_y = 2'h0; // @[noc.scala 30:16]
  assign router2_clock = clock;
  assign router2_reset = reset;
  assign router2_io_in_N_valid_in = router8_io_out_S_valid_out; // @[noc.scala 111:28]
  assign router2_io_in_N_din = router8_io_out_S_dout; // @[noc.scala 61:23]
  assign router2_io_in_S_valid_in = router5_io_out_N_valid_out; // @[noc.scala 112:28]
  assign router2_io_in_S_din = router5_io_out_N_dout; // @[noc.scala 62:23]
  assign router2_io_in_W_valid_in = router1_io_out_E_valid_out; // @[noc.scala 113:28]
  assign router2_io_in_W_din = router1_io_out_E_dout; // @[noc.scala 63:23]
  assign router2_io_in_E_valid_in = router3_io_out_W_valid_out; // @[noc.scala 114:28]
  assign router2_io_in_E_din = router3_io_out_W_dout; // @[noc.scala 64:23]
  assign router2_io_in_CPU_valid_in = 1'h0; // @[noc.scala 227:30]
  assign router2_io_in_CPU_din = 32'h0; // @[noc.scala 226:25]
  assign router2_io_out_N_ready_in = router8_io_in_S_ready_out; // @[noc.scala 160:29]
  assign router2_io_out_S_ready_in = router5_io_in_N_ready_out; // @[noc.scala 161:29]
  assign router2_io_out_W_ready_in = router1_io_in_E_ready_out; // @[noc.scala 162:29]
  assign router2_io_out_E_ready_in = router3_io_in_W_ready_out; // @[noc.scala 163:29]
  assign router2_io_out_CPU_ready_in = 1'h0; // @[noc.scala 228:31]
  assign router2_io_x = 2'h0; // @[noc.scala 32:16]
  assign router2_io_y = 2'h1; // @[noc.scala 33:16]
  assign router3_clock = clock;
  assign router3_reset = reset;
  assign router3_io_in_N_valid_in = router9_io_out_S_valid_out; // @[noc.scala 116:28]
  assign router3_io_in_N_din = router9_io_out_S_dout; // @[noc.scala 66:23]
  assign router3_io_in_S_valid_in = router6_io_out_N_valid_out; // @[noc.scala 117:28]
  assign router3_io_in_S_din = router6_io_out_N_dout; // @[noc.scala 67:23]
  assign router3_io_in_W_valid_in = router2_io_out_E_valid_out; // @[noc.scala 118:28]
  assign router3_io_in_W_din = router2_io_out_E_dout; // @[noc.scala 68:23]
  assign router3_io_in_E_valid_in = router1_io_out_W_valid_out; // @[noc.scala 119:28]
  assign router3_io_in_E_din = router1_io_out_W_dout; // @[noc.scala 69:23]
  assign router3_io_in_CPU_valid_in = 1'h0; // @[noc.scala 231:30]
  assign router3_io_in_CPU_din = 32'h0; // @[noc.scala 230:25]
  assign router3_io_out_N_ready_in = router9_io_in_S_ready_out; // @[noc.scala 165:29]
  assign router3_io_out_S_ready_in = router6_io_in_N_ready_out; // @[noc.scala 166:29]
  assign router3_io_out_W_ready_in = router2_io_in_E_ready_out; // @[noc.scala 167:29]
  assign router3_io_out_E_ready_in = router1_io_in_W_ready_out; // @[noc.scala 168:29]
  assign router3_io_out_CPU_ready_in = 1'h0; // @[noc.scala 232:31]
  assign router3_io_x = 2'h0; // @[noc.scala 35:16]
  assign router3_io_y = 2'h2; // @[noc.scala 36:16]
  assign router4_clock = clock;
  assign router4_reset = reset;
  assign router4_io_in_N_valid_in = router1_io_out_S_valid_out; // @[noc.scala 121:28]
  assign router4_io_in_N_din = router1_io_out_S_dout; // @[noc.scala 71:23]
  assign router4_io_in_S_valid_in = router7_io_out_N_valid_out; // @[noc.scala 122:28]
  assign router4_io_in_S_din = router7_io_out_N_dout; // @[noc.scala 72:23]
  assign router4_io_in_W_valid_in = router6_io_out_E_valid_out; // @[noc.scala 123:28]
  assign router4_io_in_W_din = router6_io_out_E_dout; // @[noc.scala 73:23]
  assign router4_io_in_E_valid_in = router5_io_out_W_valid_out; // @[noc.scala 124:28]
  assign router4_io_in_E_din = router5_io_out_W_dout; // @[noc.scala 74:23]
  assign router4_io_in_CPU_valid_in = 1'h0; // @[noc.scala 235:30]
  assign router4_io_in_CPU_din = 32'h0; // @[noc.scala 234:25]
  assign router4_io_out_N_ready_in = router1_io_in_S_ready_out; // @[noc.scala 170:29]
  assign router4_io_out_S_ready_in = router7_io_in_N_ready_out; // @[noc.scala 171:29]
  assign router4_io_out_W_ready_in = router6_io_in_E_ready_out; // @[noc.scala 172:29]
  assign router4_io_out_E_ready_in = router5_io_in_W_ready_out; // @[noc.scala 173:29]
  assign router4_io_out_CPU_ready_in = io_cpu_ready_in; // @[noc.scala 236:31]
  assign router4_io_x = 2'h1; // @[noc.scala 38:16]
  assign router4_io_y = 2'h0; // @[noc.scala 39:16]
  assign router5_clock = clock;
  assign router5_reset = reset;
  assign router5_io_in_N_valid_in = router2_io_out_S_valid_out; // @[noc.scala 126:28]
  assign router5_io_in_N_din = router2_io_out_S_dout; // @[noc.scala 76:23]
  assign router5_io_in_S_valid_in = router8_io_out_N_valid_out; // @[noc.scala 127:28]
  assign router5_io_in_S_din = router8_io_out_N_dout; // @[noc.scala 77:23]
  assign router5_io_in_W_valid_in = router4_io_out_E_valid_out; // @[noc.scala 128:28]
  assign router5_io_in_W_din = router4_io_out_E_dout; // @[noc.scala 78:23]
  assign router5_io_in_E_valid_in = router6_io_out_W_valid_out; // @[noc.scala 129:28]
  assign router5_io_in_E_din = router6_io_out_W_dout; // @[noc.scala 79:23]
  assign router5_io_in_CPU_valid_in = 1'h0; // @[noc.scala 239:30]
  assign router5_io_in_CPU_din = 32'h0; // @[noc.scala 238:25]
  assign router5_io_out_N_ready_in = router2_io_in_S_ready_out; // @[noc.scala 175:29]
  assign router5_io_out_S_ready_in = router8_io_in_N_ready_out; // @[noc.scala 176:29]
  assign router5_io_out_W_ready_in = router4_io_in_E_ready_out; // @[noc.scala 177:29]
  assign router5_io_out_E_ready_in = router6_io_in_W_ready_out; // @[noc.scala 178:29]
  assign router5_io_out_CPU_ready_in = 1'h0; // @[noc.scala 240:31]
  assign router5_io_x = 2'h1; // @[noc.scala 41:16]
  assign router5_io_y = 2'h1; // @[noc.scala 42:16]
  assign router6_clock = clock;
  assign router6_reset = reset;
  assign router6_io_in_N_valid_in = router3_io_out_S_valid_out; // @[noc.scala 131:28]
  assign router6_io_in_N_din = router3_io_out_S_dout; // @[noc.scala 81:23]
  assign router6_io_in_S_valid_in = router9_io_out_N_valid_out; // @[noc.scala 132:28]
  assign router6_io_in_S_din = router9_io_out_N_dout; // @[noc.scala 82:23]
  assign router6_io_in_W_valid_in = router5_io_out_E_valid_out; // @[noc.scala 133:28]
  assign router6_io_in_W_din = router5_io_out_E_dout; // @[noc.scala 83:23]
  assign router6_io_in_E_valid_in = router4_io_out_W_valid_out; // @[noc.scala 134:28]
  assign router6_io_in_E_din = router4_io_out_W_dout; // @[noc.scala 84:23]
  assign router6_io_in_CPU_valid_in = 1'h0; // @[noc.scala 243:30]
  assign router6_io_in_CPU_din = 32'h0; // @[noc.scala 242:25]
  assign router6_io_out_N_ready_in = router3_io_in_S_ready_out; // @[noc.scala 180:29]
  assign router6_io_out_S_ready_in = router9_io_in_N_ready_out; // @[noc.scala 181:29]
  assign router6_io_out_W_ready_in = router5_io_in_E_ready_out; // @[noc.scala 182:29]
  assign router6_io_out_E_ready_in = router4_io_in_W_ready_out; // @[noc.scala 183:29]
  assign router6_io_out_CPU_ready_in = 1'h0; // @[noc.scala 244:31]
  assign router6_io_x = 2'h1; // @[noc.scala 44:16]
  assign router6_io_y = 2'h2; // @[noc.scala 45:16]
  assign router7_clock = clock;
  assign router7_reset = reset;
  assign router7_io_in_N_valid_in = router4_io_out_S_valid_out; // @[noc.scala 136:28]
  assign router7_io_in_N_din = router4_io_out_S_dout; // @[noc.scala 86:23]
  assign router7_io_in_S_valid_in = router1_io_out_N_valid_out; // @[noc.scala 137:28]
  assign router7_io_in_S_din = router1_io_out_N_dout; // @[noc.scala 87:23]
  assign router7_io_in_W_valid_in = router9_io_out_E_valid_out; // @[noc.scala 138:28]
  assign router7_io_in_W_din = router9_io_out_E_dout; // @[noc.scala 88:23]
  assign router7_io_in_E_valid_in = router8_io_out_W_valid_out; // @[noc.scala 139:28]
  assign router7_io_in_E_din = router8_io_out_W_dout; // @[noc.scala 89:23]
  assign router7_io_in_CPU_valid_in = 1'h0; // @[noc.scala 247:30]
  assign router7_io_in_CPU_din = 32'h0; // @[noc.scala 246:25]
  assign router7_io_out_N_ready_in = router4_io_in_S_ready_out; // @[noc.scala 185:29]
  assign router7_io_out_S_ready_in = router1_io_in_N_ready_out; // @[noc.scala 186:29]
  assign router7_io_out_W_ready_in = router9_io_in_E_ready_out; // @[noc.scala 187:29]
  assign router7_io_out_E_ready_in = router8_io_in_W_ready_out; // @[noc.scala 188:29]
  assign router7_io_out_CPU_ready_in = 1'h0; // @[noc.scala 248:31]
  assign router7_io_x = 2'h2; // @[noc.scala 47:16]
  assign router7_io_y = 2'h0; // @[noc.scala 48:16]
  assign router8_clock = clock;
  assign router8_reset = reset;
  assign router8_io_in_N_valid_in = router5_io_out_S_valid_out; // @[noc.scala 141:28]
  assign router8_io_in_N_din = router5_io_out_S_dout; // @[noc.scala 91:23]
  assign router8_io_in_S_valid_in = router2_io_out_N_valid_out; // @[noc.scala 142:28]
  assign router8_io_in_S_din = router2_io_out_N_dout; // @[noc.scala 92:23]
  assign router8_io_in_W_valid_in = router7_io_out_E_valid_out; // @[noc.scala 143:28]
  assign router8_io_in_W_din = router7_io_out_E_dout; // @[noc.scala 93:23]
  assign router8_io_in_E_valid_in = router9_io_out_W_valid_out; // @[noc.scala 144:28]
  assign router8_io_in_E_din = router9_io_out_W_dout; // @[noc.scala 94:23]
  assign router8_io_in_CPU_valid_in = 1'h0; // @[noc.scala 251:30]
  assign router8_io_in_CPU_din = 32'h0; // @[noc.scala 250:25]
  assign router8_io_out_N_ready_in = router5_io_in_S_ready_out; // @[noc.scala 190:29]
  assign router8_io_out_S_ready_in = router2_io_in_N_ready_out; // @[noc.scala 191:29]
  assign router8_io_out_W_ready_in = router7_io_in_E_ready_out; // @[noc.scala 192:29]
  assign router8_io_out_E_ready_in = router9_io_in_W_ready_out; // @[noc.scala 193:29]
  assign router8_io_out_CPU_ready_in = 1'h0; // @[noc.scala 252:31]
  assign router8_io_x = 2'h2; // @[noc.scala 50:16]
  assign router8_io_y = 2'h1; // @[noc.scala 51:16]
  assign router9_clock = clock;
  assign router9_reset = reset;
  assign router9_io_in_N_valid_in = router6_io_out_S_valid_out; // @[noc.scala 146:28]
  assign router9_io_in_N_din = router6_io_out_S_dout; // @[noc.scala 96:23]
  assign router9_io_in_S_valid_in = router3_io_out_N_valid_out; // @[noc.scala 147:28]
  assign router9_io_in_S_din = router3_io_out_N_dout; // @[noc.scala 97:23]
  assign router9_io_in_W_valid_in = router8_io_out_E_valid_out; // @[noc.scala 148:28]
  assign router9_io_in_W_din = router8_io_out_E_dout; // @[noc.scala 98:23]
  assign router9_io_in_E_valid_in = router7_io_out_W_valid_out; // @[noc.scala 149:28]
  assign router9_io_in_E_din = router7_io_out_W_dout; // @[noc.scala 99:23]
  assign router9_io_in_CPU_valid_in = 1'h0; // @[noc.scala 255:30]
  assign router9_io_in_CPU_din = 32'h0; // @[noc.scala 254:25]
  assign router9_io_out_N_ready_in = router6_io_in_S_ready_out; // @[noc.scala 195:29]
  assign router9_io_out_S_ready_in = router3_io_in_N_ready_out; // @[noc.scala 196:29]
  assign router9_io_out_W_ready_in = router8_io_in_E_ready_out; // @[noc.scala 197:29]
  assign router9_io_out_E_ready_in = router7_io_in_W_ready_out; // @[noc.scala 198:29]
  assign router9_io_out_CPU_ready_in = 1'h0; // @[noc.scala 256:31]
  assign router9_io_x = 2'h2; // @[noc.scala 53:16]
  assign router9_io_y = 2'h2; // @[noc.scala 54:16]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 1 CPU data input is %d\n",router1_io_in_CPU_din); // @[noc.scala 202:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 1 East data output is %d\n",router1_io_out_E_dout); // @[noc.scala 203:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 2 West data input is %d\n",router2_io_in_W_din); // @[noc.scala 204:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 2 South data output is %d\n",router2_io_out_S_dout); // @[noc.scala 205:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 2 South valid_out output is %d\n",router2_io_out_S_valid_out); // @[noc.scala 206:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 2 South ready_in input is %d\n",router2_io_out_S_ready_in); // @[noc.scala 207:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 4 CPU dout ready_in is %d\n",router4_io_out_CPU_dout); // @[noc.scala 215:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"---------------------------------------------------\n"); // @[noc.scala 216:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
