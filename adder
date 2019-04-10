Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity adder is
    port (
    a,b : in std_logic_vector(8 downto 0);
    y : out std_logic_vector(8 downto 0);
    );
end adder;
architecture behav of adder is 
    y <= std_logic_vector(signed(a) + signed(b));
end behav;

