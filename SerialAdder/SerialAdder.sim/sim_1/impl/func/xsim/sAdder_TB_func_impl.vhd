-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Thu Nov 28 19:03:44 2024
-- Host        : DESKTOP-8R40T2G running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/ECE420/SerialAdder/SerialAdder.sim/sim_1/impl/func/xsim/sAdder_TB_func_impl.vhd
-- Design      : sAdder
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity D_Flip_Flop is
  port (
    Cin : out STD_LOGIC;
    D : in STD_LOGIC;
    Q_reg_0 : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end D_Flip_Flop;

architecture STRUCTURE of D_Flip_Flop is
begin
Q_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => Q_reg_0,
      CE => '1',
      CLR => reset_IBUF,
      D => D,
      Q => Cin
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Shift_Register is
  port (
    s_OBUF : out STD_LOGIC;
    Si : in STD_LOGIC;
    \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\ : in STD_LOGIC;
    \temp_Signal_reg[15]_0\ : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
end Shift_Register;

architecture STRUCTURE of Shift_Register is
  signal \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\ : STD_LOGIC;
  signal \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\ : STD_LOGIC;
  signal temp_Signal_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\Shift/temp_Signal_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\Shift/temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12 ";
begin
\temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      D => Si,
      Q => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\
    );
\temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      CE => '1',
      D => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\,
      Q => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      R => '0'
    );
\temp_Signal_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_gate_n_0,
      Q => s_OBUF
    );
temp_Signal_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      I1 => \temp_Signal_reg[15]_0\,
      O => temp_Signal_reg_gate_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Shift_Register_0 is
  port (
    clock : out STD_LOGIC;
    temp_Signal_reg_c_13_0 : out STD_LOGIC;
    Xi : out STD_LOGIC;
    reset_IBUF : in STD_LOGIC;
    x_IBUF : in STD_LOGIC;
    Enable : in STD_LOGIC;
    clock_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Shift_Register_0 : entity is "Shift_Register";
end Shift_Register_0;

architecture STRUCTURE of Shift_Register_0 is
  signal \^clock\ : STD_LOGIC;
  signal \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\ : STD_LOGIC;
  signal \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\ : STD_LOGIC;
  signal temp_Signal_reg_c_0_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_10_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_11_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_12_n_0 : STD_LOGIC;
  signal \^temp_signal_reg_c_13_0\ : STD_LOGIC;
  signal temp_Signal_reg_c_1_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_2_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_3_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_4_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_5_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_6_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_7_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_8_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_9_n_0 : STD_LOGIC;
  signal temp_Signal_reg_c_n_0 : STD_LOGIC;
  signal temp_Signal_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\XShift/temp_Signal_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\XShift/temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12 ";
begin
  clock <= \^clock\;
  temp_Signal_reg_c_13_0 <= \^temp_signal_reg_c_13_0\;
Q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Enable,
      I1 => clock_IBUF,
      O => \^clock\
    );
\temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \^clock\,
      D => x_IBUF,
      Q => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\
    );
\temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      D => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\,
      Q => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      R => '0'
    );
\temp_Signal_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_gate_n_0,
      Q => Xi
    );
temp_Signal_reg_c: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => '1',
      Q => temp_Signal_reg_c_n_0
    );
temp_Signal_reg_c_0: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_n_0,
      Q => temp_Signal_reg_c_0_n_0
    );
temp_Signal_reg_c_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_0_n_0,
      Q => temp_Signal_reg_c_1_n_0
    );
temp_Signal_reg_c_10: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_9_n_0,
      Q => temp_Signal_reg_c_10_n_0
    );
temp_Signal_reg_c_11: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_10_n_0,
      Q => temp_Signal_reg_c_11_n_0
    );
temp_Signal_reg_c_12: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_11_n_0,
      Q => temp_Signal_reg_c_12_n_0
    );
temp_Signal_reg_c_13: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_12_n_0,
      Q => \^temp_signal_reg_c_13_0\
    );
temp_Signal_reg_c_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_1_n_0,
      Q => temp_Signal_reg_c_2_n_0
    );
temp_Signal_reg_c_3: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_2_n_0,
      Q => temp_Signal_reg_c_3_n_0
    );
temp_Signal_reg_c_4: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_3_n_0,
      Q => temp_Signal_reg_c_4_n_0
    );
temp_Signal_reg_c_5: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_4_n_0,
      Q => temp_Signal_reg_c_5_n_0
    );
temp_Signal_reg_c_6: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_5_n_0,
      Q => temp_Signal_reg_c_6_n_0
    );
temp_Signal_reg_c_7: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_6_n_0,
      Q => temp_Signal_reg_c_7_n_0
    );
temp_Signal_reg_c_8: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_7_n_0,
      Q => temp_Signal_reg_c_8_n_0
    );
temp_Signal_reg_c_9: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clock\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_c_8_n_0,
      Q => temp_Signal_reg_c_9_n_0
    );
temp_Signal_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      I1 => \^temp_signal_reg_c_13_0\,
      O => temp_Signal_reg_gate_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Shift_Register_1 is
  port (
    Yi : out STD_LOGIC;
    y_IBUF : in STD_LOGIC;
    \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\ : in STD_LOGIC;
    \temp_Signal_reg[15]_0\ : in STD_LOGIC;
    reset_IBUF : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Shift_Register_1 : entity is "Shift_Register";
end Shift_Register_1;

architecture STRUCTURE of Shift_Register_1 is
  signal \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\ : STD_LOGIC;
  signal \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\ : STD_LOGIC;
  signal temp_Signal_reg_gate_n_0 : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\YShift/temp_Signal_reg ";
  attribute srl_name : string;
  attribute srl_name of \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\ : label is "\YShift/temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12 ";
begin
\temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '1',
      A3 => '1',
      CE => '1',
      CLK => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      D => y_IBUF,
      Q => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\
    );
\temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      CE => '1',
      D => \temp_Signal_reg[13]_srl14_XShift_temp_Signal_reg_c_12_n_0\,
      Q => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      R => '0'
    );
\temp_Signal_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\,
      CE => '1',
      CLR => reset_IBUF,
      D => temp_Signal_reg_gate_n_0,
      Q => Yi
    );
temp_Signal_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_n_0\,
      I1 => \temp_Signal_reg[15]_0\,
      O => temp_Signal_reg_gate_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity full_adder is
  port (
    Si : out STD_LOGIC;
    D : out STD_LOGIC;
    Yi : in STD_LOGIC;
    Xi : in STD_LOGIC;
    Cin : in STD_LOGIC
  );
end full_adder;

architecture STRUCTURE of full_adder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cout : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of Sum : label is "soft_lutpair0";
begin
Cout: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => Xi,
      I1 => Cin,
      I2 => Yi,
      O => D
    );
Sum: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Yi,
      I1 => Xi,
      I2 => Cin,
      O => Si
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sAdder is
  port (
    x : in STD_LOGIC;
    y : in STD_LOGIC;
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    START : in STD_LOGIC;
    s : out STD_LOGIC;
    END1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sAdder : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of sAdder : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of sAdder : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of sAdder : entity is "848ec586";
end sAdder;

architecture STRUCTURE of sAdder is
  signal Cin : STD_LOGIC;
  signal D : STD_LOGIC;
  signal END1_OBUF : STD_LOGIC;
  signal END1_reg_i_1_n_0 : STD_LOGIC;
  signal Enable : STD_LOGIC;
  signal START_IBUF : STD_LOGIC;
  signal Si : STD_LOGIC;
  signal XShift_n_0 : STD_LOGIC;
  signal XShift_n_1 : STD_LOGIC;
  signal Xi : STD_LOGIC;
  signal Yi : STD_LOGIC;
  signal \addingBitCount[5]_i_1_n_0\ : STD_LOGIC;
  signal addingBitCount_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal clock_IBUF : STD_LOGIC;
  signal clock_IBUF_BUFG : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal s_OBUF : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal x_IBUF : STD_LOGIC;
  signal y_IBUF : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of END1_reg : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of END1_reg : label is "VCC:GE";
  attribute XILINX_LEGACY_PRIM of Enable_reg : label is "LDP";
  attribute XILINX_TRANSFORM_PINMAP of Enable_reg : label is "VCC:GE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addingBitCount[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addingBitCount[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addingBitCount[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addingBitCount[4]_i_2\ : label is "soft_lutpair1";
begin
Adder: entity work.full_adder
     port map (
      Cin => Cin,
      D => D,
      Si => Si,
      Xi => Xi,
      Yi => Yi
    );
CoutDFF: entity work.D_Flip_Flop
     port map (
      Cin => Cin,
      D => D,
      Q_reg_0 => XShift_n_0,
      reset_IBUF => reset_IBUF
    );
END1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => END1_OBUF,
      O => END1
    );
END1_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => START_IBUF,
      D => END1_reg_i_1_n_0,
      G => END1_reg_i_1_n_0,
      GE => '1',
      Q => END1_OBUF
    );
END1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => addingBitCount_reg(3),
      I1 => addingBitCount_reg(1),
      I2 => addingBitCount_reg(2),
      I3 => addingBitCount_reg(0),
      I4 => addingBitCount_reg(5),
      I5 => addingBitCount_reg(4),
      O => END1_reg_i_1_n_0
    );
Enable_reg: unisim.vcomponents.LDPE
    generic map(
      INIT => '1'
    )
        port map (
      D => '0',
      G => END1_reg_i_1_n_0,
      GE => '1',
      PRE => START_IBUF,
      Q => Enable
    );
START_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => START,
      O => START_IBUF
    );
Shift: entity work.Shift_Register
     port map (
      Si => Si,
      reset_IBUF => reset_IBUF,
      s_OBUF => s_OBUF,
      \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\ => XShift_n_0,
      \temp_Signal_reg[15]_0\ => XShift_n_1
    );
XShift: entity work.Shift_Register_0
     port map (
      Enable => Enable,
      Xi => Xi,
      clock => XShift_n_0,
      clock_IBUF => clock_IBUF,
      reset_IBUF => reset_IBUF,
      temp_Signal_reg_c_13_0 => XShift_n_1,
      x_IBUF => x_IBUF
    );
YShift: entity work.Shift_Register_1
     port map (
      Yi => Yi,
      reset_IBUF => reset_IBUF,
      \temp_Signal_reg[14]_XShift_temp_Signal_reg_c_13_0\ => XShift_n_0,
      \temp_Signal_reg[15]_0\ => XShift_n_1,
      y_IBUF => y_IBUF
    );
\addingBitCount[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addingBitCount_reg(0),
      O => p_0_in(0)
    );
\addingBitCount[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => addingBitCount_reg(0),
      I1 => addingBitCount_reg(1),
      O => p_0_in(1)
    );
\addingBitCount[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => addingBitCount_reg(0),
      I1 => addingBitCount_reg(1),
      I2 => addingBitCount_reg(2),
      O => p_0_in(2)
    );
\addingBitCount[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => addingBitCount_reg(1),
      I1 => addingBitCount_reg(0),
      I2 => addingBitCount_reg(2),
      I3 => addingBitCount_reg(3),
      O => p_0_in(3)
    );
\addingBitCount[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => addingBitCount_reg(4),
      I1 => addingBitCount_reg(5),
      I2 => addingBitCount_reg(0),
      I3 => addingBitCount_reg(2),
      I4 => addingBitCount_reg(1),
      I5 => addingBitCount_reg(3),
      O => sel
    );
\addingBitCount[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => addingBitCount_reg(2),
      I1 => addingBitCount_reg(0),
      I2 => addingBitCount_reg(1),
      I3 => addingBitCount_reg(3),
      I4 => addingBitCount_reg(4),
      O => p_0_in(4)
    );
\addingBitCount[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CA"
    )
        port map (
      I0 => addingBitCount_reg(5),
      I1 => p_0_in(5),
      I2 => sel,
      O => \addingBitCount[5]_i_1_n_0\
    );
\addingBitCount[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => addingBitCount_reg(3),
      I1 => addingBitCount_reg(1),
      I2 => addingBitCount_reg(0),
      I3 => addingBitCount_reg(2),
      I4 => addingBitCount_reg(4),
      I5 => addingBitCount_reg(5),
      O => p_0_in(5)
    );
\addingBitCount_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => sel,
      CLR => START_IBUF,
      D => p_0_in(0),
      Q => addingBitCount_reg(0)
    );
\addingBitCount_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => sel,
      CLR => START_IBUF,
      D => p_0_in(1),
      Q => addingBitCount_reg(1)
    );
\addingBitCount_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => sel,
      CLR => START_IBUF,
      D => p_0_in(2),
      Q => addingBitCount_reg(2)
    );
\addingBitCount_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => sel,
      CLR => START_IBUF,
      D => p_0_in(3),
      Q => addingBitCount_reg(3)
    );
\addingBitCount_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => sel,
      CLR => START_IBUF,
      D => p_0_in(4),
      Q => addingBitCount_reg(4)
    );
\addingBitCount_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock_IBUF_BUFG,
      CE => '1',
      CLR => START_IBUF,
      D => \addingBitCount[5]_i_1_n_0\,
      Q => addingBitCount_reg(5)
    );
clock_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clock_IBUF,
      O => clock_IBUF_BUFG
    );
clock_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clock,
      O => clock_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
s_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => s_OBUF,
      O => s
    );
x_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => x,
      O => x_IBUF
    );
y_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => y,
      O => y_IBUF
    );
end STRUCTURE;
