library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
  
entity Demux is
    port (
           C, D, E, F, G, A, B  : in  std_logic;
           S : in std_logic_vector(2 downto 0);
           O : out std_logic
          );
end Demux;
  
architecture main of Demux is
begin
    --LCD Derecho
    main: process (S) begin
        case S is
            when "000" => O <= C;
            when "001" => O <= D;
            when "010" => O <= E;
            when "011" => O <= F;
            when "100" => O <= G;
            when "101" => O <= A;
            when "110" => O <= B;
            when others => O <= '0';
        end case;
    end process;
end main;