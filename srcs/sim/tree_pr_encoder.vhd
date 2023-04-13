library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith;

entity tree_pr_encoder is
Port ( S : in STD_LOGIC_VECTOR (15 downto 0);
       Z : out STD_LOGIC_VECTOR (3 downto 0);
       r : out STD_LOGIC);
end tree_pr_encoder;
  
architecture structure of tree_pr_encoder is
component encoder is
port(S_ec:in STD_LOGIC_VECTOR (3 downto 0);
     Z_ec:out STD_LOGIC_VECTOR (1 downto 0);
     r_ec:out STD_LOGIC);
end component encoder;
component or_part is
port(In_or:in STD_LOGIC_VECTOR (3 downto 0);
     Out_or:out STD_LOGIC);
end component or_part;
signal z1,z2,z3,z4:STD_LOGIC_VECTOR (1 downto 0);
signal r1,r2,r3,r4:STD_LOGIC;
signal o_t:STD_LOGIC_VECTOR (3 downto 0);
begin
  ec1:encoder port map(S(3 downto 0),z1,r1);
  ec2:encoder port map(S(7 downto 4),z2,r2);
  ec3:encoder port map(S(11 downto 8),z3,r3);
  ec4:encoder port map(S(15 downto 12),z4,r4);
  Z<="11" & z4 when r4='1' else
     "10" & z3 when r3='1' else
     "01" & z2 when r2='1' else
     "00" & z1;
  o_t <= r1 & r2 & r3 & r4;
  or1:or_part port map(o_t,r);
end structure;
