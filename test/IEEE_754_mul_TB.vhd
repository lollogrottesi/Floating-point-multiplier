----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.07.2020 12:24:45
-- Design Name: 
-- Module Name: IEEE_754_mul_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IEEE_754_mul_TB is
--  Port ( );
end IEEE_754_mul_TB;

architecture Behavioral of IEEE_754_mul_TB is

component IEEE_754_Floating_Point_Multiplier is
    port (FP_a: in std_logic_vector(31 downto 0);--Normalized  biased values.
          FP_b: in std_logic_vector(31 downto 0);
          overflow: out std_logic;
          FP_z: out std_logic_vector(31 downto 0));
end component;

signal a, b, z: std_logic_vector(31 downto 0);
signal overflow: std_logic;
begin

dut : IEEE_754_Floating_Point_Multiplier port map (a, b, overflow, z);

process
    begin
        --Test addition.
        b <= x"40400000";
        a <= x"40000000";
        wait for 10 ns;
        b <= x"406ccccd";
        a <= x"400ccccd";
        wait for 10 ns;  
        b <= x"408e147b";
        a <= x"3f99999a";
        wait for 10 ns;
        b <= x"3f000000";
        a <= x"408e147b";
        wait for 10 ns;
        b <= x"3f000000";
        a <= x"3f000000";
        wait for 10 ns;
        b <= x"400eb852";
        a <= x"40eccccd";
        wait for 10 ns;
        b <= x"c0b00000";
        a <= x"40eccccd";
        wait for 10 ns;
        b <= x"c0b00000";
        a <= x"c0566666";
        wait;
    end process;
end Behavioral;
