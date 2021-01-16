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
  input         io_in_NI_valid_in,
  input  [31:0] io_in_NI_din,
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
  output        io_out_NI_valid_out,
  input         io_out_NI_ready_in,
  output [31:0] io_out_NI_dout,
  input  [1:0]  io_x,
  input  [1:0]  io_y
);
  reg [31:0] dataReg; // @[Router.scala 68:24]
  reg [31:0] _RAND_0;
  reg  stateReg; // @[Router.scala 76:25]
  reg [31:0] _RAND_1;
  wire [1:0] destination_y; // @[Router.scala 78:30]
  wire [1:0] destination_x; // @[Router.scala 79:30]
  wire  _T; // @[Router.scala 81:9]
  wire  _T_1; // @[Router.scala 81:9]
  wire  _T_6; // @[Router.scala 89:17]
  wire  _GEN_1; // @[Router.scala 121:35]
  wire  _GEN_5; // @[Router.scala 116:34]
  wire  _GEN_11; // @[Router.scala 111:34]
  wire  _GEN_14; // @[Router.scala 111:34]
  wire  _GEN_19; // @[Router.scala 106:35]
  wire  _GEN_22; // @[Router.scala 106:35]
  wire  _GEN_24; // @[Router.scala 106:35]
  wire  _GEN_29; // @[Router.scala 101:29]
  wire  _GEN_32; // @[Router.scala 101:29]
  wire  _GEN_34; // @[Router.scala 101:29]
  wire  _GEN_36; // @[Router.scala 101:29]
  wire  _T_8; // @[Router.scala 130:25]
  wire  _T_11; // @[Router.scala 133:31]
  wire  _T_14; // @[Router.scala 137:27]
  wire  _T_15; // @[Router.scala 139:33]
  wire  _GEN_41; // @[Router.scala 139:41]
  wire  _GEN_43; // @[Router.scala 137:35]
  wire  _GEN_44; // @[Router.scala 137:35]
  wire  _GEN_46; // @[Router.scala 133:39]
  wire  _GEN_47; // @[Router.scala 133:39]
  wire  _GEN_48; // @[Router.scala 133:39]
  wire  _GEN_50; // @[Router.scala 130:33]
  wire  _GEN_51; // @[Router.scala 130:33]
  wire  _GEN_52; // @[Router.scala 130:33]
  wire  _GEN_53; // @[Router.scala 130:33]
  wire [31:0] _GEN_54; // @[Router.scala 148:31]
  wire [31:0] _GEN_57; // @[Router.scala 154:31]
  wire [31:0] _GEN_60; // @[Router.scala 160:31]
  wire [31:0] _GEN_63; // @[Router.scala 166:31]
  wire [31:0] _GEN_66; // @[Router.scala 172:32]
  wire [31:0] _GEN_69; // @[Router.scala 171:38]
  wire [31:0] _GEN_72; // @[Router.scala 165:37]
  wire [31:0] _GEN_75; // @[Router.scala 165:37]
  wire [31:0] _GEN_76; // @[Router.scala 159:37]
  wire [31:0] _GEN_79; // @[Router.scala 159:37]
  wire [31:0] _GEN_80; // @[Router.scala 159:37]
  wire [31:0] _GEN_81; // @[Router.scala 153:37]
  wire [31:0] _GEN_84; // @[Router.scala 153:37]
  wire [31:0] _GEN_85; // @[Router.scala 153:37]
  wire [31:0] _GEN_86; // @[Router.scala 153:37]
  wire [31:0] _GEN_87; // @[Router.scala 147:30]
  wire [31:0] _GEN_90; // @[Router.scala 147:30]
  wire [31:0] _GEN_91; // @[Router.scala 147:30]
  wire [31:0] _GEN_92; // @[Router.scala 147:30]
  wire [31:0] _GEN_93; // @[Router.scala 147:30]
  wire  _GEN_94; // @[Router.scala 128:33]
  wire  _GEN_95; // @[Router.scala 128:33]
  wire  _GEN_96; // @[Router.scala 128:33]
  wire  _GEN_97; // @[Router.scala 128:33]
  wire  _GEN_98; // @[Router.scala 128:33]
  wire [31:0] _GEN_99; // @[Router.scala 128:33]
  wire [31:0] _GEN_102; // @[Router.scala 128:33]
  wire [31:0] _GEN_103; // @[Router.scala 128:33]
  wire [31:0] _GEN_104; // @[Router.scala 128:33]
  wire [31:0] _GEN_105; // @[Router.scala 128:33]
  wire [31:0] out_N_dout; // @[Router.scala 89:26]
  wire [31:0] out_E_dout; // @[Router.scala 89:26]
  wire [31:0] out_NI_dout; // @[Router.scala 89:26]
  wire  _GEN_131; // @[Router.scala 131:13]
  wire  _GEN_132; // @[Router.scala 131:13]
  wire  _GEN_133; // @[Router.scala 131:13]
  wire  _GEN_136; // @[Router.scala 136:13]
  wire  _GEN_137; // @[Router.scala 136:13]
  wire  _GEN_138; // @[Router.scala 136:13]
  wire  _GEN_139; // @[Router.scala 136:13]
  wire  _GEN_146; // @[Router.scala 142:15]
  wire  _GEN_147; // @[Router.scala 142:15]
  wire  _GEN_148; // @[Router.scala 142:15]
  wire  _GEN_149; // @[Router.scala 142:15]
  assign destination_y = dataReg[1:0]; // @[Router.scala 78:30]
  assign destination_x = dataReg[3:2]; // @[Router.scala 79:30]
  assign _T = $unsigned(reset); // @[Router.scala 81:9]
  assign _T_1 = _T == 1'h0; // @[Router.scala 81:9]
  assign _T_6 = stateReg == 1'h0; // @[Router.scala 89:17]
  assign _GEN_1 = io_in_NI_valid_in | stateReg; // @[Router.scala 121:35]
  assign _GEN_5 = io_in_E_valid_in | _GEN_1; // @[Router.scala 116:34]
  assign _GEN_11 = io_in_W_valid_in | _GEN_5; // @[Router.scala 111:34]
  assign _GEN_14 = io_in_W_valid_in ? 1'h0 : io_in_E_valid_in; // @[Router.scala 111:34]
  assign _GEN_19 = io_in_S_valid_in | _GEN_11; // @[Router.scala 106:35]
  assign _GEN_22 = io_in_S_valid_in ? 1'h0 : io_in_W_valid_in; // @[Router.scala 106:35]
  assign _GEN_24 = io_in_S_valid_in ? 1'h0 : _GEN_14; // @[Router.scala 106:35]
  assign _GEN_29 = io_in_N_valid_in | _GEN_19; // @[Router.scala 101:29]
  assign _GEN_32 = io_in_N_valid_in ? 1'h0 : io_in_S_valid_in; // @[Router.scala 101:29]
  assign _GEN_34 = io_in_N_valid_in ? 1'h0 : _GEN_22; // @[Router.scala 101:29]
  assign _GEN_36 = io_in_N_valid_in ? 1'h0 : _GEN_24; // @[Router.scala 101:29]
  assign _T_8 = destination_y > io_y; // @[Router.scala 130:25]
  assign _T_11 = destination_y < io_y; // @[Router.scala 133:31]
  assign _T_14 = destination_x > io_x; // @[Router.scala 137:27]
  assign _T_15 = destination_x < io_x; // @[Router.scala 139:33]
  assign _GEN_41 = _T_15 ? 1'h0 : 1'h1; // @[Router.scala 139:41]
  assign _GEN_43 = _T_14 ? 1'h0 : _T_15; // @[Router.scala 137:35]
  assign _GEN_44 = _T_14 ? 1'h0 : _GEN_41; // @[Router.scala 137:35]
  assign _GEN_46 = _T_11 ? 1'h0 : _T_14; // @[Router.scala 133:39]
  assign _GEN_47 = _T_11 ? 1'h0 : _GEN_43; // @[Router.scala 133:39]
  assign _GEN_48 = _T_11 ? 1'h0 : _GEN_44; // @[Router.scala 133:39]
  assign _GEN_50 = _T_8 ? 1'h0 : _T_11; // @[Router.scala 130:33]
  assign _GEN_51 = _T_8 ? 1'h0 : _GEN_46; // @[Router.scala 130:33]
  assign _GEN_52 = _T_8 ? 1'h0 : _GEN_47; // @[Router.scala 130:33]
  assign _GEN_53 = _T_8 ? 1'h0 : _GEN_48; // @[Router.scala 130:33]
  assign _GEN_54 = io_out_N_ready_in ? dataReg : 32'h0; // @[Router.scala 148:31]
  assign _GEN_57 = io_out_S_ready_in ? dataReg : 32'h0; // @[Router.scala 154:31]
  assign _GEN_60 = io_out_W_ready_in ? dataReg : 32'h0; // @[Router.scala 160:31]
  assign _GEN_63 = io_out_E_ready_in ? dataReg : 32'h0; // @[Router.scala 166:31]
  assign _GEN_66 = io_out_NI_ready_in ? dataReg : 32'h0; // @[Router.scala 172:32]
  assign _GEN_69 = io_out_NI_valid_out ? _GEN_66 : 32'h0; // @[Router.scala 171:38]
  assign _GEN_72 = io_out_E_valid_out ? _GEN_63 : 32'h0; // @[Router.scala 165:37]
  assign _GEN_75 = io_out_E_valid_out ? 32'h0 : _GEN_69; // @[Router.scala 165:37]
  assign _GEN_76 = io_out_W_valid_out ? _GEN_60 : 32'h0; // @[Router.scala 159:37]
  assign _GEN_79 = io_out_W_valid_out ? 32'h0 : _GEN_72; // @[Router.scala 159:37]
  assign _GEN_80 = io_out_W_valid_out ? 32'h0 : _GEN_75; // @[Router.scala 159:37]
  assign _GEN_81 = io_out_S_valid_out ? _GEN_57 : 32'h0; // @[Router.scala 153:37]
  assign _GEN_84 = io_out_S_valid_out ? 32'h0 : _GEN_76; // @[Router.scala 153:37]
  assign _GEN_85 = io_out_S_valid_out ? 32'h0 : _GEN_79; // @[Router.scala 153:37]
  assign _GEN_86 = io_out_S_valid_out ? 32'h0 : _GEN_80; // @[Router.scala 153:37]
  assign _GEN_87 = io_out_N_valid_out ? _GEN_54 : 32'h0; // @[Router.scala 147:30]
  assign _GEN_90 = io_out_N_valid_out ? 32'h0 : _GEN_81; // @[Router.scala 147:30]
  assign _GEN_91 = io_out_N_valid_out ? 32'h0 : _GEN_84; // @[Router.scala 147:30]
  assign _GEN_92 = io_out_N_valid_out ? 32'h0 : _GEN_85; // @[Router.scala 147:30]
  assign _GEN_93 = io_out_N_valid_out ? 32'h0 : _GEN_86; // @[Router.scala 147:30]
  assign _GEN_94 = stateReg & _T_8; // @[Router.scala 128:33]
  assign _GEN_95 = stateReg & _GEN_50; // @[Router.scala 128:33]
  assign _GEN_96 = stateReg & _GEN_51; // @[Router.scala 128:33]
  assign _GEN_97 = stateReg & _GEN_52; // @[Router.scala 128:33]
  assign _GEN_98 = stateReg & _GEN_53; // @[Router.scala 128:33]
  assign _GEN_99 = stateReg ? _GEN_87 : 32'h0; // @[Router.scala 128:33]
  assign _GEN_102 = stateReg ? _GEN_90 : 32'h0; // @[Router.scala 128:33]
  assign _GEN_103 = stateReg ? _GEN_91 : 32'h0; // @[Router.scala 128:33]
  assign _GEN_104 = stateReg ? _GEN_92 : 32'h0; // @[Router.scala 128:33]
  assign _GEN_105 = stateReg ? _GEN_93 : 32'h0; // @[Router.scala 128:33]
  assign out_N_dout = _T_6 ? 32'h0 : _GEN_99; // @[Router.scala 89:26]
  assign out_E_dout = _T_6 ? 32'h0 : _GEN_104; // @[Router.scala 89:26]
  assign out_NI_dout = _T_6 ? 32'h0 : _GEN_105; // @[Router.scala 89:26]
  assign io_in_N_ready_out = _T_6 & io_in_N_valid_in; // @[Router.scala 62:21 Router.scala 102:25]
  assign io_in_S_ready_out = _T_6 & _GEN_32; // @[Router.scala 63:21 Router.scala 107:25]
  assign io_in_W_ready_out = _T_6 & _GEN_34; // @[Router.scala 64:21 Router.scala 112:25]
  assign io_in_E_ready_out = _T_6 & _GEN_36; // @[Router.scala 65:21 Router.scala 117:25]
  assign io_out_N_valid_out = _T_6 ? 1'h0 : _GEN_97; // @[Router.scala 56:22 Router.scala 90:24 Router.scala 140:28]
  assign io_out_N_dout = _T_6 ? 32'h0 : out_N_dout; // @[Router.scala 50:17 Router.scala 91:19]
  assign io_out_S_valid_out = _T_6 ? 1'h0 : _GEN_96; // @[Router.scala 57:22 Router.scala 92:24 Router.scala 138:28]
  assign io_out_S_dout = _T_6 ? 32'h0 : _GEN_102; // @[Router.scala 51:17 Router.scala 93:19 Router.scala 155:23]
  assign io_out_W_valid_out = _T_6 ? 1'h0 : _GEN_95; // @[Router.scala 58:22 Router.scala 94:24 Router.scala 134:26]
  assign io_out_W_dout = _T_6 ? 32'h0 : _GEN_103; // @[Router.scala 52:17 Router.scala 95:19 Router.scala 161:23]
  assign io_out_E_valid_out = _T_6 ? 1'h0 : _GEN_94; // @[Router.scala 59:22 Router.scala 96:24 Router.scala 132:26]
  assign io_out_E_dout = _T_6 ? 32'h0 : out_E_dout; // @[Router.scala 53:17 Router.scala 97:19]
  assign io_out_NI_valid_out = _T_6 ? 1'h0 : _GEN_98; // @[Router.scala 60:23 Router.scala 98:25 Router.scala 143:29]
  assign io_out_NI_dout = _T_6 ? 32'h0 : out_NI_dout; // @[Router.scala 54:18 Router.scala 99:20]
  assign _GEN_131 = _T_6 == 1'h0; // @[Router.scala 131:13]
  assign _GEN_132 = _GEN_131 & stateReg; // @[Router.scala 131:13]
  assign _GEN_133 = _GEN_132 & _T_8; // @[Router.scala 131:13]
  assign _GEN_136 = _T_8 == 1'h0; // @[Router.scala 136:13]
  assign _GEN_137 = _GEN_132 & _GEN_136; // @[Router.scala 136:13]
  assign _GEN_138 = _T_11 == 1'h0; // @[Router.scala 136:13]
  assign _GEN_139 = _GEN_137 & _GEN_138; // @[Router.scala 136:13]
  assign _GEN_146 = _T_14 == 1'h0; // @[Router.scala 142:15]
  assign _GEN_147 = _GEN_139 & _GEN_146; // @[Router.scala 142:15]
  assign _GEN_148 = _T_15 == 1'h0; // @[Router.scala 142:15]
  assign _GEN_149 = _GEN_147 & _GEN_148; // @[Router.scala 142:15]
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
      end else if (io_in_NI_valid_in) begin
        dataReg <= io_in_NI_din;
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
      end else if (io_out_NI_valid_out) begin
        if (io_out_NI_ready_in) begin
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
      end else if (io_out_NI_valid_out) begin
        if (io_out_NI_ready_in) begin
          stateReg <= 1'h0;
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Dest_x is %d, a dest_y is %d\n",destination_x,destination_y); // @[Router.scala 81:9]
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
          $fwrite(32'h80000002,"Data Registar of router (%d,%d) is: %d\n",io_x,io_y,dataReg); // @[Router.scala 82:9]
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
          $fwrite(32'h80000002,"State registar of router (%d,%d) is: %d\n",io_x,io_y,stateReg); // @[Router.scala 83:9]
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
          $fwrite(32'h80000002,"uso x\n"); // @[Router.scala 131:13]
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
          $fwrite(32'h80000002,"uso y\n"); // @[Router.scala 136:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_149 & _T_1) begin
          $fwrite(32'h80000002,"uso NI\n"); // @[Router.scala 142:15]
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
          $fwrite(32'h80000002,"!!!!!!!!\n"); // @[Router.scala 180:9]
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
  output [31:0] io_ni_1_data,
  output [31:0] io_ni_2_data,
  output [31:0] io_ni_3_data,
  output [31:0] io_ni_4_data,
  output [31:0] io_ni_5_data,
  output [31:0] io_ni_6_data,
  output [31:0] io_ni_7_data,
  output [31:0] io_ni_8_data,
  output [31:0] io_ni_9_data,
  input  [31:0] io_ni_1_din,
  input  [31:0] io_ni_2_din,
  input  [31:0] io_ni_3_din,
  input  [31:0] io_ni_4_din,
  input  [31:0] io_ni_5_din,
  input  [31:0] io_ni_6_din,
  input  [31:0] io_ni_7_din,
  input  [31:0] io_ni_8_din,
  input  [31:0] io_ni_9_din,
  input         io_ni_1_valid_in,
  input         io_ni_2_valid_in,
  input         io_ni_3_valid_in,
  input         io_ni_4_valid_in,
  input         io_ni_5_valid_in,
  input         io_ni_6_valid_in,
  input         io_ni_7_valid_in,
  input         io_ni_8_valid_in,
  input         io_ni_9_valid_in,
  input         io_ni_1_ready_in,
  input         io_ni_2_ready_in,
  input         io_ni_3_ready_in,
  input         io_ni_4_ready_in,
  input         io_ni_5_ready_in,
  input         io_ni_6_ready_in,
  input         io_ni_7_ready_in,
  input         io_ni_8_ready_in,
  input         io_ni_9_ready_in
);
  wire  router1_clock; // @[noc.scala 62:23]
  wire  router1_reset; // @[noc.scala 62:23]
  wire  router1_io_in_N_valid_in; // @[noc.scala 62:23]
  wire  router1_io_in_N_ready_out; // @[noc.scala 62:23]
  wire [31:0] router1_io_in_N_din; // @[noc.scala 62:23]
  wire  router1_io_in_S_valid_in; // @[noc.scala 62:23]
  wire  router1_io_in_S_ready_out; // @[noc.scala 62:23]
  wire [31:0] router1_io_in_S_din; // @[noc.scala 62:23]
  wire  router1_io_in_W_valid_in; // @[noc.scala 62:23]
  wire  router1_io_in_W_ready_out; // @[noc.scala 62:23]
  wire [31:0] router1_io_in_W_din; // @[noc.scala 62:23]
  wire  router1_io_in_E_valid_in; // @[noc.scala 62:23]
  wire  router1_io_in_E_ready_out; // @[noc.scala 62:23]
  wire [31:0] router1_io_in_E_din; // @[noc.scala 62:23]
  wire  router1_io_in_NI_valid_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_in_NI_din; // @[noc.scala 62:23]
  wire  router1_io_out_N_valid_out; // @[noc.scala 62:23]
  wire  router1_io_out_N_ready_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_out_N_dout; // @[noc.scala 62:23]
  wire  router1_io_out_S_valid_out; // @[noc.scala 62:23]
  wire  router1_io_out_S_ready_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_out_S_dout; // @[noc.scala 62:23]
  wire  router1_io_out_W_valid_out; // @[noc.scala 62:23]
  wire  router1_io_out_W_ready_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_out_W_dout; // @[noc.scala 62:23]
  wire  router1_io_out_E_valid_out; // @[noc.scala 62:23]
  wire  router1_io_out_E_ready_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_out_E_dout; // @[noc.scala 62:23]
  wire  router1_io_out_NI_valid_out; // @[noc.scala 62:23]
  wire  router1_io_out_NI_ready_in; // @[noc.scala 62:23]
  wire [31:0] router1_io_out_NI_dout; // @[noc.scala 62:23]
  wire [1:0] router1_io_x; // @[noc.scala 62:23]
  wire [1:0] router1_io_y; // @[noc.scala 62:23]
  wire  router2_clock; // @[noc.scala 63:23]
  wire  router2_reset; // @[noc.scala 63:23]
  wire  router2_io_in_N_valid_in; // @[noc.scala 63:23]
  wire  router2_io_in_N_ready_out; // @[noc.scala 63:23]
  wire [31:0] router2_io_in_N_din; // @[noc.scala 63:23]
  wire  router2_io_in_S_valid_in; // @[noc.scala 63:23]
  wire  router2_io_in_S_ready_out; // @[noc.scala 63:23]
  wire [31:0] router2_io_in_S_din; // @[noc.scala 63:23]
  wire  router2_io_in_W_valid_in; // @[noc.scala 63:23]
  wire  router2_io_in_W_ready_out; // @[noc.scala 63:23]
  wire [31:0] router2_io_in_W_din; // @[noc.scala 63:23]
  wire  router2_io_in_E_valid_in; // @[noc.scala 63:23]
  wire  router2_io_in_E_ready_out; // @[noc.scala 63:23]
  wire [31:0] router2_io_in_E_din; // @[noc.scala 63:23]
  wire  router2_io_in_NI_valid_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_in_NI_din; // @[noc.scala 63:23]
  wire  router2_io_out_N_valid_out; // @[noc.scala 63:23]
  wire  router2_io_out_N_ready_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_out_N_dout; // @[noc.scala 63:23]
  wire  router2_io_out_S_valid_out; // @[noc.scala 63:23]
  wire  router2_io_out_S_ready_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_out_S_dout; // @[noc.scala 63:23]
  wire  router2_io_out_W_valid_out; // @[noc.scala 63:23]
  wire  router2_io_out_W_ready_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_out_W_dout; // @[noc.scala 63:23]
  wire  router2_io_out_E_valid_out; // @[noc.scala 63:23]
  wire  router2_io_out_E_ready_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_out_E_dout; // @[noc.scala 63:23]
  wire  router2_io_out_NI_valid_out; // @[noc.scala 63:23]
  wire  router2_io_out_NI_ready_in; // @[noc.scala 63:23]
  wire [31:0] router2_io_out_NI_dout; // @[noc.scala 63:23]
  wire [1:0] router2_io_x; // @[noc.scala 63:23]
  wire [1:0] router2_io_y; // @[noc.scala 63:23]
  wire  router3_clock; // @[noc.scala 64:23]
  wire  router3_reset; // @[noc.scala 64:23]
  wire  router3_io_in_N_valid_in; // @[noc.scala 64:23]
  wire  router3_io_in_N_ready_out; // @[noc.scala 64:23]
  wire [31:0] router3_io_in_N_din; // @[noc.scala 64:23]
  wire  router3_io_in_S_valid_in; // @[noc.scala 64:23]
  wire  router3_io_in_S_ready_out; // @[noc.scala 64:23]
  wire [31:0] router3_io_in_S_din; // @[noc.scala 64:23]
  wire  router3_io_in_W_valid_in; // @[noc.scala 64:23]
  wire  router3_io_in_W_ready_out; // @[noc.scala 64:23]
  wire [31:0] router3_io_in_W_din; // @[noc.scala 64:23]
  wire  router3_io_in_E_valid_in; // @[noc.scala 64:23]
  wire  router3_io_in_E_ready_out; // @[noc.scala 64:23]
  wire [31:0] router3_io_in_E_din; // @[noc.scala 64:23]
  wire  router3_io_in_NI_valid_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_in_NI_din; // @[noc.scala 64:23]
  wire  router3_io_out_N_valid_out; // @[noc.scala 64:23]
  wire  router3_io_out_N_ready_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_out_N_dout; // @[noc.scala 64:23]
  wire  router3_io_out_S_valid_out; // @[noc.scala 64:23]
  wire  router3_io_out_S_ready_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_out_S_dout; // @[noc.scala 64:23]
  wire  router3_io_out_W_valid_out; // @[noc.scala 64:23]
  wire  router3_io_out_W_ready_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_out_W_dout; // @[noc.scala 64:23]
  wire  router3_io_out_E_valid_out; // @[noc.scala 64:23]
  wire  router3_io_out_E_ready_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_out_E_dout; // @[noc.scala 64:23]
  wire  router3_io_out_NI_valid_out; // @[noc.scala 64:23]
  wire  router3_io_out_NI_ready_in; // @[noc.scala 64:23]
  wire [31:0] router3_io_out_NI_dout; // @[noc.scala 64:23]
  wire [1:0] router3_io_x; // @[noc.scala 64:23]
  wire [1:0] router3_io_y; // @[noc.scala 64:23]
  wire  router4_clock; // @[noc.scala 65:23]
  wire  router4_reset; // @[noc.scala 65:23]
  wire  router4_io_in_N_valid_in; // @[noc.scala 65:23]
  wire  router4_io_in_N_ready_out; // @[noc.scala 65:23]
  wire [31:0] router4_io_in_N_din; // @[noc.scala 65:23]
  wire  router4_io_in_S_valid_in; // @[noc.scala 65:23]
  wire  router4_io_in_S_ready_out; // @[noc.scala 65:23]
  wire [31:0] router4_io_in_S_din; // @[noc.scala 65:23]
  wire  router4_io_in_W_valid_in; // @[noc.scala 65:23]
  wire  router4_io_in_W_ready_out; // @[noc.scala 65:23]
  wire [31:0] router4_io_in_W_din; // @[noc.scala 65:23]
  wire  router4_io_in_E_valid_in; // @[noc.scala 65:23]
  wire  router4_io_in_E_ready_out; // @[noc.scala 65:23]
  wire [31:0] router4_io_in_E_din; // @[noc.scala 65:23]
  wire  router4_io_in_NI_valid_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_in_NI_din; // @[noc.scala 65:23]
  wire  router4_io_out_N_valid_out; // @[noc.scala 65:23]
  wire  router4_io_out_N_ready_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_out_N_dout; // @[noc.scala 65:23]
  wire  router4_io_out_S_valid_out; // @[noc.scala 65:23]
  wire  router4_io_out_S_ready_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_out_S_dout; // @[noc.scala 65:23]
  wire  router4_io_out_W_valid_out; // @[noc.scala 65:23]
  wire  router4_io_out_W_ready_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_out_W_dout; // @[noc.scala 65:23]
  wire  router4_io_out_E_valid_out; // @[noc.scala 65:23]
  wire  router4_io_out_E_ready_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_out_E_dout; // @[noc.scala 65:23]
  wire  router4_io_out_NI_valid_out; // @[noc.scala 65:23]
  wire  router4_io_out_NI_ready_in; // @[noc.scala 65:23]
  wire [31:0] router4_io_out_NI_dout; // @[noc.scala 65:23]
  wire [1:0] router4_io_x; // @[noc.scala 65:23]
  wire [1:0] router4_io_y; // @[noc.scala 65:23]
  wire  router5_clock; // @[noc.scala 66:23]
  wire  router5_reset; // @[noc.scala 66:23]
  wire  router5_io_in_N_valid_in; // @[noc.scala 66:23]
  wire  router5_io_in_N_ready_out; // @[noc.scala 66:23]
  wire [31:0] router5_io_in_N_din; // @[noc.scala 66:23]
  wire  router5_io_in_S_valid_in; // @[noc.scala 66:23]
  wire  router5_io_in_S_ready_out; // @[noc.scala 66:23]
  wire [31:0] router5_io_in_S_din; // @[noc.scala 66:23]
  wire  router5_io_in_W_valid_in; // @[noc.scala 66:23]
  wire  router5_io_in_W_ready_out; // @[noc.scala 66:23]
  wire [31:0] router5_io_in_W_din; // @[noc.scala 66:23]
  wire  router5_io_in_E_valid_in; // @[noc.scala 66:23]
  wire  router5_io_in_E_ready_out; // @[noc.scala 66:23]
  wire [31:0] router5_io_in_E_din; // @[noc.scala 66:23]
  wire  router5_io_in_NI_valid_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_in_NI_din; // @[noc.scala 66:23]
  wire  router5_io_out_N_valid_out; // @[noc.scala 66:23]
  wire  router5_io_out_N_ready_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_out_N_dout; // @[noc.scala 66:23]
  wire  router5_io_out_S_valid_out; // @[noc.scala 66:23]
  wire  router5_io_out_S_ready_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_out_S_dout; // @[noc.scala 66:23]
  wire  router5_io_out_W_valid_out; // @[noc.scala 66:23]
  wire  router5_io_out_W_ready_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_out_W_dout; // @[noc.scala 66:23]
  wire  router5_io_out_E_valid_out; // @[noc.scala 66:23]
  wire  router5_io_out_E_ready_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_out_E_dout; // @[noc.scala 66:23]
  wire  router5_io_out_NI_valid_out; // @[noc.scala 66:23]
  wire  router5_io_out_NI_ready_in; // @[noc.scala 66:23]
  wire [31:0] router5_io_out_NI_dout; // @[noc.scala 66:23]
  wire [1:0] router5_io_x; // @[noc.scala 66:23]
  wire [1:0] router5_io_y; // @[noc.scala 66:23]
  wire  router6_clock; // @[noc.scala 67:23]
  wire  router6_reset; // @[noc.scala 67:23]
  wire  router6_io_in_N_valid_in; // @[noc.scala 67:23]
  wire  router6_io_in_N_ready_out; // @[noc.scala 67:23]
  wire [31:0] router6_io_in_N_din; // @[noc.scala 67:23]
  wire  router6_io_in_S_valid_in; // @[noc.scala 67:23]
  wire  router6_io_in_S_ready_out; // @[noc.scala 67:23]
  wire [31:0] router6_io_in_S_din; // @[noc.scala 67:23]
  wire  router6_io_in_W_valid_in; // @[noc.scala 67:23]
  wire  router6_io_in_W_ready_out; // @[noc.scala 67:23]
  wire [31:0] router6_io_in_W_din; // @[noc.scala 67:23]
  wire  router6_io_in_E_valid_in; // @[noc.scala 67:23]
  wire  router6_io_in_E_ready_out; // @[noc.scala 67:23]
  wire [31:0] router6_io_in_E_din; // @[noc.scala 67:23]
  wire  router6_io_in_NI_valid_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_in_NI_din; // @[noc.scala 67:23]
  wire  router6_io_out_N_valid_out; // @[noc.scala 67:23]
  wire  router6_io_out_N_ready_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_out_N_dout; // @[noc.scala 67:23]
  wire  router6_io_out_S_valid_out; // @[noc.scala 67:23]
  wire  router6_io_out_S_ready_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_out_S_dout; // @[noc.scala 67:23]
  wire  router6_io_out_W_valid_out; // @[noc.scala 67:23]
  wire  router6_io_out_W_ready_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_out_W_dout; // @[noc.scala 67:23]
  wire  router6_io_out_E_valid_out; // @[noc.scala 67:23]
  wire  router6_io_out_E_ready_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_out_E_dout; // @[noc.scala 67:23]
  wire  router6_io_out_NI_valid_out; // @[noc.scala 67:23]
  wire  router6_io_out_NI_ready_in; // @[noc.scala 67:23]
  wire [31:0] router6_io_out_NI_dout; // @[noc.scala 67:23]
  wire [1:0] router6_io_x; // @[noc.scala 67:23]
  wire [1:0] router6_io_y; // @[noc.scala 67:23]
  wire  router7_clock; // @[noc.scala 68:23]
  wire  router7_reset; // @[noc.scala 68:23]
  wire  router7_io_in_N_valid_in; // @[noc.scala 68:23]
  wire  router7_io_in_N_ready_out; // @[noc.scala 68:23]
  wire [31:0] router7_io_in_N_din; // @[noc.scala 68:23]
  wire  router7_io_in_S_valid_in; // @[noc.scala 68:23]
  wire  router7_io_in_S_ready_out; // @[noc.scala 68:23]
  wire [31:0] router7_io_in_S_din; // @[noc.scala 68:23]
  wire  router7_io_in_W_valid_in; // @[noc.scala 68:23]
  wire  router7_io_in_W_ready_out; // @[noc.scala 68:23]
  wire [31:0] router7_io_in_W_din; // @[noc.scala 68:23]
  wire  router7_io_in_E_valid_in; // @[noc.scala 68:23]
  wire  router7_io_in_E_ready_out; // @[noc.scala 68:23]
  wire [31:0] router7_io_in_E_din; // @[noc.scala 68:23]
  wire  router7_io_in_NI_valid_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_in_NI_din; // @[noc.scala 68:23]
  wire  router7_io_out_N_valid_out; // @[noc.scala 68:23]
  wire  router7_io_out_N_ready_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_out_N_dout; // @[noc.scala 68:23]
  wire  router7_io_out_S_valid_out; // @[noc.scala 68:23]
  wire  router7_io_out_S_ready_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_out_S_dout; // @[noc.scala 68:23]
  wire  router7_io_out_W_valid_out; // @[noc.scala 68:23]
  wire  router7_io_out_W_ready_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_out_W_dout; // @[noc.scala 68:23]
  wire  router7_io_out_E_valid_out; // @[noc.scala 68:23]
  wire  router7_io_out_E_ready_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_out_E_dout; // @[noc.scala 68:23]
  wire  router7_io_out_NI_valid_out; // @[noc.scala 68:23]
  wire  router7_io_out_NI_ready_in; // @[noc.scala 68:23]
  wire [31:0] router7_io_out_NI_dout; // @[noc.scala 68:23]
  wire [1:0] router7_io_x; // @[noc.scala 68:23]
  wire [1:0] router7_io_y; // @[noc.scala 68:23]
  wire  router8_clock; // @[noc.scala 69:23]
  wire  router8_reset; // @[noc.scala 69:23]
  wire  router8_io_in_N_valid_in; // @[noc.scala 69:23]
  wire  router8_io_in_N_ready_out; // @[noc.scala 69:23]
  wire [31:0] router8_io_in_N_din; // @[noc.scala 69:23]
  wire  router8_io_in_S_valid_in; // @[noc.scala 69:23]
  wire  router8_io_in_S_ready_out; // @[noc.scala 69:23]
  wire [31:0] router8_io_in_S_din; // @[noc.scala 69:23]
  wire  router8_io_in_W_valid_in; // @[noc.scala 69:23]
  wire  router8_io_in_W_ready_out; // @[noc.scala 69:23]
  wire [31:0] router8_io_in_W_din; // @[noc.scala 69:23]
  wire  router8_io_in_E_valid_in; // @[noc.scala 69:23]
  wire  router8_io_in_E_ready_out; // @[noc.scala 69:23]
  wire [31:0] router8_io_in_E_din; // @[noc.scala 69:23]
  wire  router8_io_in_NI_valid_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_in_NI_din; // @[noc.scala 69:23]
  wire  router8_io_out_N_valid_out; // @[noc.scala 69:23]
  wire  router8_io_out_N_ready_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_out_N_dout; // @[noc.scala 69:23]
  wire  router8_io_out_S_valid_out; // @[noc.scala 69:23]
  wire  router8_io_out_S_ready_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_out_S_dout; // @[noc.scala 69:23]
  wire  router8_io_out_W_valid_out; // @[noc.scala 69:23]
  wire  router8_io_out_W_ready_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_out_W_dout; // @[noc.scala 69:23]
  wire  router8_io_out_E_valid_out; // @[noc.scala 69:23]
  wire  router8_io_out_E_ready_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_out_E_dout; // @[noc.scala 69:23]
  wire  router8_io_out_NI_valid_out; // @[noc.scala 69:23]
  wire  router8_io_out_NI_ready_in; // @[noc.scala 69:23]
  wire [31:0] router8_io_out_NI_dout; // @[noc.scala 69:23]
  wire [1:0] router8_io_x; // @[noc.scala 69:23]
  wire [1:0] router8_io_y; // @[noc.scala 69:23]
  wire  router9_clock; // @[noc.scala 70:23]
  wire  router9_reset; // @[noc.scala 70:23]
  wire  router9_io_in_N_valid_in; // @[noc.scala 70:23]
  wire  router9_io_in_N_ready_out; // @[noc.scala 70:23]
  wire [31:0] router9_io_in_N_din; // @[noc.scala 70:23]
  wire  router9_io_in_S_valid_in; // @[noc.scala 70:23]
  wire  router9_io_in_S_ready_out; // @[noc.scala 70:23]
  wire [31:0] router9_io_in_S_din; // @[noc.scala 70:23]
  wire  router9_io_in_W_valid_in; // @[noc.scala 70:23]
  wire  router9_io_in_W_ready_out; // @[noc.scala 70:23]
  wire [31:0] router9_io_in_W_din; // @[noc.scala 70:23]
  wire  router9_io_in_E_valid_in; // @[noc.scala 70:23]
  wire  router9_io_in_E_ready_out; // @[noc.scala 70:23]
  wire [31:0] router9_io_in_E_din; // @[noc.scala 70:23]
  wire  router9_io_in_NI_valid_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_in_NI_din; // @[noc.scala 70:23]
  wire  router9_io_out_N_valid_out; // @[noc.scala 70:23]
  wire  router9_io_out_N_ready_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_out_N_dout; // @[noc.scala 70:23]
  wire  router9_io_out_S_valid_out; // @[noc.scala 70:23]
  wire  router9_io_out_S_ready_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_out_S_dout; // @[noc.scala 70:23]
  wire  router9_io_out_W_valid_out; // @[noc.scala 70:23]
  wire  router9_io_out_W_ready_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_out_W_dout; // @[noc.scala 70:23]
  wire  router9_io_out_E_valid_out; // @[noc.scala 70:23]
  wire  router9_io_out_E_ready_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_out_E_dout; // @[noc.scala 70:23]
  wire  router9_io_out_NI_valid_out; // @[noc.scala 70:23]
  wire  router9_io_out_NI_ready_in; // @[noc.scala 70:23]
  wire [31:0] router9_io_out_NI_dout; // @[noc.scala 70:23]
  wire [1:0] router9_io_x; // @[noc.scala 70:23]
  wire [1:0] router9_io_y; // @[noc.scala 70:23]
  wire  _T_1; // @[noc.scala 261:9]
  Router router1 ( // @[noc.scala 62:23]
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
    .io_in_NI_valid_in(router1_io_in_NI_valid_in),
    .io_in_NI_din(router1_io_in_NI_din),
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
    .io_out_NI_valid_out(router1_io_out_NI_valid_out),
    .io_out_NI_ready_in(router1_io_out_NI_ready_in),
    .io_out_NI_dout(router1_io_out_NI_dout),
    .io_x(router1_io_x),
    .io_y(router1_io_y)
  );
  Router router2 ( // @[noc.scala 63:23]
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
    .io_in_NI_valid_in(router2_io_in_NI_valid_in),
    .io_in_NI_din(router2_io_in_NI_din),
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
    .io_out_NI_valid_out(router2_io_out_NI_valid_out),
    .io_out_NI_ready_in(router2_io_out_NI_ready_in),
    .io_out_NI_dout(router2_io_out_NI_dout),
    .io_x(router2_io_x),
    .io_y(router2_io_y)
  );
  Router router3 ( // @[noc.scala 64:23]
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
    .io_in_NI_valid_in(router3_io_in_NI_valid_in),
    .io_in_NI_din(router3_io_in_NI_din),
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
    .io_out_NI_valid_out(router3_io_out_NI_valid_out),
    .io_out_NI_ready_in(router3_io_out_NI_ready_in),
    .io_out_NI_dout(router3_io_out_NI_dout),
    .io_x(router3_io_x),
    .io_y(router3_io_y)
  );
  Router router4 ( // @[noc.scala 65:23]
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
    .io_in_NI_valid_in(router4_io_in_NI_valid_in),
    .io_in_NI_din(router4_io_in_NI_din),
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
    .io_out_NI_valid_out(router4_io_out_NI_valid_out),
    .io_out_NI_ready_in(router4_io_out_NI_ready_in),
    .io_out_NI_dout(router4_io_out_NI_dout),
    .io_x(router4_io_x),
    .io_y(router4_io_y)
  );
  Router router5 ( // @[noc.scala 66:23]
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
    .io_in_NI_valid_in(router5_io_in_NI_valid_in),
    .io_in_NI_din(router5_io_in_NI_din),
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
    .io_out_NI_valid_out(router5_io_out_NI_valid_out),
    .io_out_NI_ready_in(router5_io_out_NI_ready_in),
    .io_out_NI_dout(router5_io_out_NI_dout),
    .io_x(router5_io_x),
    .io_y(router5_io_y)
  );
  Router router6 ( // @[noc.scala 67:23]
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
    .io_in_NI_valid_in(router6_io_in_NI_valid_in),
    .io_in_NI_din(router6_io_in_NI_din),
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
    .io_out_NI_valid_out(router6_io_out_NI_valid_out),
    .io_out_NI_ready_in(router6_io_out_NI_ready_in),
    .io_out_NI_dout(router6_io_out_NI_dout),
    .io_x(router6_io_x),
    .io_y(router6_io_y)
  );
  Router router7 ( // @[noc.scala 68:23]
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
    .io_in_NI_valid_in(router7_io_in_NI_valid_in),
    .io_in_NI_din(router7_io_in_NI_din),
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
    .io_out_NI_valid_out(router7_io_out_NI_valid_out),
    .io_out_NI_ready_in(router7_io_out_NI_ready_in),
    .io_out_NI_dout(router7_io_out_NI_dout),
    .io_x(router7_io_x),
    .io_y(router7_io_y)
  );
  Router router8 ( // @[noc.scala 69:23]
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
    .io_in_NI_valid_in(router8_io_in_NI_valid_in),
    .io_in_NI_din(router8_io_in_NI_din),
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
    .io_out_NI_valid_out(router8_io_out_NI_valid_out),
    .io_out_NI_ready_in(router8_io_out_NI_ready_in),
    .io_out_NI_dout(router8_io_out_NI_dout),
    .io_x(router8_io_x),
    .io_y(router8_io_y)
  );
  Router router9 ( // @[noc.scala 70:23]
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
    .io_in_NI_valid_in(router9_io_in_NI_valid_in),
    .io_in_NI_din(router9_io_in_NI_din),
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
    .io_out_NI_valid_out(router9_io_out_NI_valid_out),
    .io_out_NI_ready_in(router9_io_out_NI_ready_in),
    .io_out_NI_dout(router9_io_out_NI_dout),
    .io_x(router9_io_x),
    .io_y(router9_io_y)
  );
  assign _T_1 = reset == 1'h0; // @[noc.scala 261:9]
  assign io_ni_1_data = router1_io_out_NI_dout; // @[noc.scala 243:16]
  assign io_ni_2_data = router2_io_out_NI_dout; // @[noc.scala 244:16]
  assign io_ni_3_data = router3_io_out_NI_dout; // @[noc.scala 245:16]
  assign io_ni_4_data = router4_io_out_NI_dout; // @[noc.scala 246:16]
  assign io_ni_5_data = router5_io_out_NI_dout; // @[noc.scala 247:16]
  assign io_ni_6_data = router6_io_out_NI_dout; // @[noc.scala 248:16]
  assign io_ni_7_data = router7_io_out_NI_dout; // @[noc.scala 249:16]
  assign io_ni_8_data = router8_io_out_NI_dout; // @[noc.scala 250:16]
  assign io_ni_9_data = router9_io_out_NI_dout; // @[noc.scala 251:16]
  assign router1_clock = clock;
  assign router1_reset = reset;
  assign router1_io_in_N_valid_in = router7_io_out_S_valid_out; // @[noc.scala 149:28]
  assign router1_io_in_N_din = router7_io_out_S_dout; // @[noc.scala 99:23]
  assign router1_io_in_S_valid_in = router4_io_out_N_valid_out; // @[noc.scala 150:28]
  assign router1_io_in_S_din = router4_io_out_N_dout; // @[noc.scala 100:23]
  assign router1_io_in_W_valid_in = router3_io_out_E_valid_out; // @[noc.scala 151:28]
  assign router1_io_in_W_din = router3_io_out_E_dout; // @[noc.scala 101:23]
  assign router1_io_in_E_valid_in = router2_io_out_W_valid_out; // @[noc.scala 152:28]
  assign router1_io_in_E_din = router2_io_out_W_dout; // @[noc.scala 102:23]
  assign router1_io_in_NI_valid_in = io_ni_1_valid_in; // @[noc.scala 282:29]
  assign router1_io_in_NI_din = io_ni_1_din; // @[noc.scala 281:24]
  assign router1_io_out_N_ready_in = router7_io_in_S_ready_out; // @[noc.scala 198:29]
  assign router1_io_out_S_ready_in = router4_io_in_N_ready_out; // @[noc.scala 199:29]
  assign router1_io_out_W_ready_in = router3_io_in_E_ready_out; // @[noc.scala 200:29]
  assign router1_io_out_E_ready_in = router2_io_in_W_ready_out; // @[noc.scala 201:29]
  assign router1_io_out_NI_ready_in = io_ni_1_ready_in; // @[noc.scala 283:30]
  assign router1_io_x = 2'h0; // @[noc.scala 72:16]
  assign router1_io_y = 2'h0; // @[noc.scala 73:16]
  assign router2_clock = clock;
  assign router2_reset = reset;
  assign router2_io_in_N_valid_in = router8_io_out_S_valid_out; // @[noc.scala 154:28]
  assign router2_io_in_N_din = router8_io_out_S_dout; // @[noc.scala 104:23]
  assign router2_io_in_S_valid_in = router5_io_out_N_valid_out; // @[noc.scala 155:28]
  assign router2_io_in_S_din = router5_io_out_N_dout; // @[noc.scala 105:23]
  assign router2_io_in_W_valid_in = router1_io_out_E_valid_out; // @[noc.scala 156:28]
  assign router2_io_in_W_din = router1_io_out_E_dout; // @[noc.scala 106:23]
  assign router2_io_in_E_valid_in = router3_io_out_W_valid_out; // @[noc.scala 157:28]
  assign router2_io_in_E_din = router3_io_out_W_dout; // @[noc.scala 107:23]
  assign router2_io_in_NI_valid_in = io_ni_2_valid_in; // @[noc.scala 286:29]
  assign router2_io_in_NI_din = io_ni_2_din; // @[noc.scala 285:24]
  assign router2_io_out_N_ready_in = router8_io_in_S_ready_out; // @[noc.scala 203:29]
  assign router2_io_out_S_ready_in = router5_io_in_N_ready_out; // @[noc.scala 204:29]
  assign router2_io_out_W_ready_in = router1_io_in_E_ready_out; // @[noc.scala 205:29]
  assign router2_io_out_E_ready_in = router3_io_in_W_ready_out; // @[noc.scala 206:29]
  assign router2_io_out_NI_ready_in = io_ni_2_ready_in; // @[noc.scala 287:30]
  assign router2_io_x = 2'h0; // @[noc.scala 75:16]
  assign router2_io_y = 2'h1; // @[noc.scala 76:16]
  assign router3_clock = clock;
  assign router3_reset = reset;
  assign router3_io_in_N_valid_in = router9_io_out_S_valid_out; // @[noc.scala 159:28]
  assign router3_io_in_N_din = router9_io_out_S_dout; // @[noc.scala 109:23]
  assign router3_io_in_S_valid_in = router6_io_out_N_valid_out; // @[noc.scala 160:28]
  assign router3_io_in_S_din = router6_io_out_N_dout; // @[noc.scala 110:23]
  assign router3_io_in_W_valid_in = router2_io_out_E_valid_out; // @[noc.scala 161:28]
  assign router3_io_in_W_din = router2_io_out_E_dout; // @[noc.scala 111:23]
  assign router3_io_in_E_valid_in = router1_io_out_W_valid_out; // @[noc.scala 162:28]
  assign router3_io_in_E_din = router1_io_out_W_dout; // @[noc.scala 112:23]
  assign router3_io_in_NI_valid_in = io_ni_3_valid_in; // @[noc.scala 290:29]
  assign router3_io_in_NI_din = io_ni_3_din; // @[noc.scala 289:24]
  assign router3_io_out_N_ready_in = router9_io_in_S_ready_out; // @[noc.scala 208:29]
  assign router3_io_out_S_ready_in = router6_io_in_N_ready_out; // @[noc.scala 209:29]
  assign router3_io_out_W_ready_in = router2_io_in_E_ready_out; // @[noc.scala 210:29]
  assign router3_io_out_E_ready_in = router1_io_in_W_ready_out; // @[noc.scala 211:29]
  assign router3_io_out_NI_ready_in = io_ni_3_ready_in; // @[noc.scala 291:30]
  assign router3_io_x = 2'h0; // @[noc.scala 78:16]
  assign router3_io_y = 2'h2; // @[noc.scala 79:16]
  assign router4_clock = clock;
  assign router4_reset = reset;
  assign router4_io_in_N_valid_in = router1_io_out_S_valid_out; // @[noc.scala 164:28]
  assign router4_io_in_N_din = router1_io_out_S_dout; // @[noc.scala 114:23]
  assign router4_io_in_S_valid_in = router7_io_out_N_valid_out; // @[noc.scala 165:28]
  assign router4_io_in_S_din = router7_io_out_N_dout; // @[noc.scala 115:23]
  assign router4_io_in_W_valid_in = router6_io_out_E_valid_out; // @[noc.scala 166:28]
  assign router4_io_in_W_din = router6_io_out_E_dout; // @[noc.scala 116:23]
  assign router4_io_in_E_valid_in = router5_io_out_W_valid_out; // @[noc.scala 167:28]
  assign router4_io_in_E_din = router5_io_out_W_dout; // @[noc.scala 117:23]
  assign router4_io_in_NI_valid_in = io_ni_4_valid_in; // @[noc.scala 294:29]
  assign router4_io_in_NI_din = io_ni_4_din; // @[noc.scala 293:24]
  assign router4_io_out_N_ready_in = router1_io_in_S_ready_out; // @[noc.scala 213:29]
  assign router4_io_out_S_ready_in = router7_io_in_N_ready_out; // @[noc.scala 214:29]
  assign router4_io_out_W_ready_in = router6_io_in_E_ready_out; // @[noc.scala 215:29]
  assign router4_io_out_E_ready_in = router5_io_in_W_ready_out; // @[noc.scala 216:29]
  assign router4_io_out_NI_ready_in = io_ni_4_ready_in; // @[noc.scala 295:30]
  assign router4_io_x = 2'h1; // @[noc.scala 81:16]
  assign router4_io_y = 2'h0; // @[noc.scala 82:16]
  assign router5_clock = clock;
  assign router5_reset = reset;
  assign router5_io_in_N_valid_in = router2_io_out_S_valid_out; // @[noc.scala 169:28]
  assign router5_io_in_N_din = router2_io_out_S_dout; // @[noc.scala 119:23]
  assign router5_io_in_S_valid_in = router8_io_out_N_valid_out; // @[noc.scala 170:28]
  assign router5_io_in_S_din = router8_io_out_N_dout; // @[noc.scala 120:23]
  assign router5_io_in_W_valid_in = router4_io_out_E_valid_out; // @[noc.scala 171:28]
  assign router5_io_in_W_din = router4_io_out_E_dout; // @[noc.scala 121:23]
  assign router5_io_in_E_valid_in = router6_io_out_W_valid_out; // @[noc.scala 172:28]
  assign router5_io_in_E_din = router6_io_out_W_dout; // @[noc.scala 122:23]
  assign router5_io_in_NI_valid_in = io_ni_5_valid_in; // @[noc.scala 298:29]
  assign router5_io_in_NI_din = io_ni_5_din; // @[noc.scala 297:24]
  assign router5_io_out_N_ready_in = router2_io_in_S_ready_out; // @[noc.scala 218:29]
  assign router5_io_out_S_ready_in = router8_io_in_N_ready_out; // @[noc.scala 219:29]
  assign router5_io_out_W_ready_in = router4_io_in_E_ready_out; // @[noc.scala 220:29]
  assign router5_io_out_E_ready_in = router6_io_in_W_ready_out; // @[noc.scala 221:29]
  assign router5_io_out_NI_ready_in = io_ni_5_ready_in; // @[noc.scala 299:30]
  assign router5_io_x = 2'h1; // @[noc.scala 84:16]
  assign router5_io_y = 2'h1; // @[noc.scala 85:16]
  assign router6_clock = clock;
  assign router6_reset = reset;
  assign router6_io_in_N_valid_in = router3_io_out_S_valid_out; // @[noc.scala 174:28]
  assign router6_io_in_N_din = router3_io_out_S_dout; // @[noc.scala 124:23]
  assign router6_io_in_S_valid_in = router9_io_out_N_valid_out; // @[noc.scala 175:28]
  assign router6_io_in_S_din = router9_io_out_N_dout; // @[noc.scala 125:23]
  assign router6_io_in_W_valid_in = router5_io_out_E_valid_out; // @[noc.scala 176:28]
  assign router6_io_in_W_din = router5_io_out_E_dout; // @[noc.scala 126:23]
  assign router6_io_in_E_valid_in = router4_io_out_W_valid_out; // @[noc.scala 177:28]
  assign router6_io_in_E_din = router4_io_out_W_dout; // @[noc.scala 127:23]
  assign router6_io_in_NI_valid_in = io_ni_6_valid_in; // @[noc.scala 302:29]
  assign router6_io_in_NI_din = io_ni_6_din; // @[noc.scala 301:24]
  assign router6_io_out_N_ready_in = router3_io_in_S_ready_out; // @[noc.scala 223:29]
  assign router6_io_out_S_ready_in = router9_io_in_N_ready_out; // @[noc.scala 224:29]
  assign router6_io_out_W_ready_in = router5_io_in_E_ready_out; // @[noc.scala 225:29]
  assign router6_io_out_E_ready_in = router4_io_in_W_ready_out; // @[noc.scala 226:29]
  assign router6_io_out_NI_ready_in = io_ni_6_ready_in; // @[noc.scala 303:30]
  assign router6_io_x = 2'h1; // @[noc.scala 87:16]
  assign router6_io_y = 2'h2; // @[noc.scala 88:16]
  assign router7_clock = clock;
  assign router7_reset = reset;
  assign router7_io_in_N_valid_in = router4_io_out_S_valid_out; // @[noc.scala 179:28]
  assign router7_io_in_N_din = router4_io_out_S_dout; // @[noc.scala 129:23]
  assign router7_io_in_S_valid_in = router1_io_out_N_valid_out; // @[noc.scala 180:28]
  assign router7_io_in_S_din = router1_io_out_N_dout; // @[noc.scala 130:23]
  assign router7_io_in_W_valid_in = router9_io_out_E_valid_out; // @[noc.scala 181:28]
  assign router7_io_in_W_din = router9_io_out_E_dout; // @[noc.scala 131:23]
  assign router7_io_in_E_valid_in = router8_io_out_W_valid_out; // @[noc.scala 182:28]
  assign router7_io_in_E_din = router8_io_out_W_dout; // @[noc.scala 132:23]
  assign router7_io_in_NI_valid_in = io_ni_7_valid_in; // @[noc.scala 306:29]
  assign router7_io_in_NI_din = io_ni_7_din; // @[noc.scala 305:24]
  assign router7_io_out_N_ready_in = router4_io_in_S_ready_out; // @[noc.scala 228:29]
  assign router7_io_out_S_ready_in = router1_io_in_N_ready_out; // @[noc.scala 229:29]
  assign router7_io_out_W_ready_in = router9_io_in_E_ready_out; // @[noc.scala 230:29]
  assign router7_io_out_E_ready_in = router8_io_in_W_ready_out; // @[noc.scala 231:29]
  assign router7_io_out_NI_ready_in = io_ni_7_ready_in; // @[noc.scala 307:30]
  assign router7_io_x = 2'h2; // @[noc.scala 90:16]
  assign router7_io_y = 2'h0; // @[noc.scala 91:16]
  assign router8_clock = clock;
  assign router8_reset = reset;
  assign router8_io_in_N_valid_in = router5_io_out_S_valid_out; // @[noc.scala 184:28]
  assign router8_io_in_N_din = router5_io_out_S_dout; // @[noc.scala 134:23]
  assign router8_io_in_S_valid_in = router2_io_out_N_valid_out; // @[noc.scala 185:28]
  assign router8_io_in_S_din = router2_io_out_N_dout; // @[noc.scala 135:23]
  assign router8_io_in_W_valid_in = router7_io_out_E_valid_out; // @[noc.scala 186:28]
  assign router8_io_in_W_din = router7_io_out_E_dout; // @[noc.scala 136:23]
  assign router8_io_in_E_valid_in = router9_io_out_W_valid_out; // @[noc.scala 187:28]
  assign router8_io_in_E_din = router9_io_out_W_dout; // @[noc.scala 137:23]
  assign router8_io_in_NI_valid_in = io_ni_8_valid_in; // @[noc.scala 310:29]
  assign router8_io_in_NI_din = io_ni_8_din; // @[noc.scala 309:24]
  assign router8_io_out_N_ready_in = router5_io_in_S_ready_out; // @[noc.scala 233:29]
  assign router8_io_out_S_ready_in = router2_io_in_N_ready_out; // @[noc.scala 234:29]
  assign router8_io_out_W_ready_in = router7_io_in_E_ready_out; // @[noc.scala 235:29]
  assign router8_io_out_E_ready_in = router9_io_in_W_ready_out; // @[noc.scala 236:29]
  assign router8_io_out_NI_ready_in = io_ni_8_ready_in; // @[noc.scala 311:30]
  assign router8_io_x = 2'h2; // @[noc.scala 93:16]
  assign router8_io_y = 2'h1; // @[noc.scala 94:16]
  assign router9_clock = clock;
  assign router9_reset = reset;
  assign router9_io_in_N_valid_in = router6_io_out_S_valid_out; // @[noc.scala 189:28]
  assign router9_io_in_N_din = router6_io_out_S_dout; // @[noc.scala 139:23]
  assign router9_io_in_S_valid_in = router3_io_out_N_valid_out; // @[noc.scala 190:28]
  assign router9_io_in_S_din = router3_io_out_N_dout; // @[noc.scala 140:23]
  assign router9_io_in_W_valid_in = router8_io_out_E_valid_out; // @[noc.scala 191:28]
  assign router9_io_in_W_din = router8_io_out_E_dout; // @[noc.scala 141:23]
  assign router9_io_in_E_valid_in = router7_io_out_W_valid_out; // @[noc.scala 192:28]
  assign router9_io_in_E_din = router7_io_out_W_dout; // @[noc.scala 142:23]
  assign router9_io_in_NI_valid_in = io_ni_9_valid_in; // @[noc.scala 314:29]
  assign router9_io_in_NI_din = io_ni_9_din; // @[noc.scala 313:24]
  assign router9_io_out_N_ready_in = router6_io_in_S_ready_out; // @[noc.scala 238:29]
  assign router9_io_out_S_ready_in = router3_io_in_N_ready_out; // @[noc.scala 239:29]
  assign router9_io_out_W_ready_in = router8_io_in_E_ready_out; // @[noc.scala 240:29]
  assign router9_io_out_E_ready_in = router7_io_in_W_ready_out; // @[noc.scala 241:29]
  assign router9_io_out_NI_ready_in = io_ni_9_ready_in; // @[noc.scala 315:30]
  assign router9_io_x = 2'h2; // @[noc.scala 96:16]
  assign router9_io_y = 2'h2; // @[noc.scala 97:16]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1) begin
          $fwrite(32'h80000002,"Router 1 NI data input is %d\n",router1_io_in_NI_din); // @[noc.scala 261:9]
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
          $fwrite(32'h80000002,"Router 1 East data output is %d\n",router1_io_out_E_dout); // @[noc.scala 262:9]
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
          $fwrite(32'h80000002,"Router 2 West data input is %d\n",router2_io_in_W_din); // @[noc.scala 263:9]
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
          $fwrite(32'h80000002,"Router 2 South data output is %d\n",router2_io_out_S_dout); // @[noc.scala 264:9]
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
          $fwrite(32'h80000002,"Router 2 South valid_out output is %d\n",router2_io_out_S_valid_out); // @[noc.scala 265:9]
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
          $fwrite(32'h80000002,"Router 2 South ready_in input is %d\n",router2_io_out_S_ready_in); // @[noc.scala 266:9]
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
          $fwrite(32'h80000002,"Router 9 NI dout is %d\n",router9_io_out_NI_dout); // @[noc.scala 274:9]
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
          $fwrite(32'h80000002,"---------------------------------------------------\n"); // @[noc.scala 275:9]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
