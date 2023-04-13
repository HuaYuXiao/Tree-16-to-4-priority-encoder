library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
port(S_ec:in STD_LOGIC_VECTOR (3 downto 0);
     Z_ec:out STD_LOGIC_VECTOR (1 downto 0);
     r_ec:out STD_LOGIC);
end encoder;
  
architecture Behavioral of encoder is
begin
  Z_ec<= "11" when S_ec(3)='1' else
         "10" when S_ec(2)='1' else
         "01" when S_ec(1)='1' else
         "00" when S_ec(0)='1' else
         "00";
  r_ec<= S_ec(3) or S_ec(2) or S_ec(1) or S_ec(0);
end Behavioral;
