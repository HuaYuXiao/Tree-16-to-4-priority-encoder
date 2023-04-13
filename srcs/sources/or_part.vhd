library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_part is
port(In_or:in STD_LOGIC_VECTOR (3 downto 0);
     Out_or:out STD_LOGIC);
end or_part;

architecture Behavioral of or_part is
begin
  Out_or<=(In_or(3) or In_or(2)) or (In_or(1) or In_or(0));
end Behavioral;
