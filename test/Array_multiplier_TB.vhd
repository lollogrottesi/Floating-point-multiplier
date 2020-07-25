----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.07.2020 11:00:44
-- Design Name: 
-- Module Name: Array_multiplier_TB - Behavioral
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

entity Array_multiplier_TB is
--  Port ( );
end Array_multiplier_TB;

architecture Behavioral of Array_multiplier_TB is

component arraymult is
    Generic (N: integer:=4);
    Port ( X : in  STD_LOGIC_VECTOR (N-1 downto 0); -- factor 1
           Y : in  STD_LOGIC_VECTOR (N-1 downto 0); -- factor 2
           P : out  STD_LOGIC_VECTOR (2*N-1 downto 0)); -- product
end component;

constant N : integer := 5;
signal X, Y: std_logic_vector(N-1 downto 0);
signal P: std_logic_vector (2*N-1 downto 0);

begin

dut : arraymult generic map (N)
                port map (X, Y, P);
    process
    begin
        X <= "00111";
        Y <= "00011";
        wait for 10 ns; 
        X <= "00111";
        Y <= "01000";
        wait for 10 ns; 
        X <= "01101";
        Y <= "00010";
        wait for 10 ns; 
        X <= "10101";
        Y <= "00110";
        wait;
    end process;

end Behavioral;
