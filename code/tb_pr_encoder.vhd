library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

entity tb_pr_encoder is
end tb_pr_encoder;
  
architecture Behavioral of tb_pr_encoder is
component pr_encoder is
Port ( S : in STD_LOGIC_VECTOR (15 downto 0);
       Z : out STD_LOGIC_VECTOR (3 downto 0);
       r : out STD_LOGIC);
end component pr_encoder;
signal S_tb: STD_LOGIC_VECTOR (15 downto 0);
signal Z_tb: STD_LOGIC_VECTOR (3 downto 0);
signal r_tb: STD_LOGIC;
begin
UUT: pr_encoder port map (S=>S_tb, Z=>Z_tb, r=>r_tb);
process is
begin
  this_loop: for i in 0 to 2**16-1 loop
    S_tb<=conv_std_logic_vector(i,16);
    wait for 1 ps;
  end loop this_loop;
end process;
end Behavioral;
