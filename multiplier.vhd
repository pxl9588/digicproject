Library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity multiplier is
    port (
    a,b : in std_logic_vector(8 downto 0);
    y : out std_logic_vector(8 downto 0);
    );
end multiplier;
architecture behav of multplier is 
    signal temp : std_logic_vector(8 downto 0);
    signal tempa : std_logic_vector(8 downto 0);
    signal tempb : std_logic_vector(8 downto 0);
    signal tempProduct : std_logic_vector(15 downto 0);
    signal temp2 : std_logic_vector(15 downto 0);
    signal temp3 : std_logic_vector(15 downto 0);
    begin
	IF a(8) = '1' THEN
		temp <= not a;
		tempa <= std_logic_vector(unsigned(temp + 1));
	ELSE
		tempa <= a;
	END IF;

	IF b(8) = '1' THEN
		temp <= not b;
		tempb <= std_logic_vector(unsigned(temp + 1));
	ELSE
		tempb <= b;
	END IF;

	tempProduct <= tempa * tempb

	IF a(8) xor b(8) = '1' THEN
		temp2 <= not tempProduct;
		temp3 <= std_logic_vector(unsigned(temp2 + 1));
	ELSE
		temp3 <= tempProduct;
	END IF;

	y <= temp3(12 downto 4);

end behav;
