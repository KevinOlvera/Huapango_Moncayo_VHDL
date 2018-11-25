
--  CYPRESS NOVA XVL Structural Architecture

--  JED2VHD Reverse Assembler - 6.3 IR 35


--    VHDL File: Demux.vhd

--    Date: Thu Nov 22 15:36:02 2018

--  Disassembly from Jedec file for: c22v10

--  Device Ordercode is: PALC22V10D-25PC
library ieee;
use ieee.std_logic_1164.all;

library primitive;
use primitive.primitive.all;


-- Beginning Test Bench Header

ENTITY demux IS
    PORT (
	                   c :    in std_logic ;
	                   d :    in std_logic ;
	                   e :    in std_logic ;
	                   f :    in std_logic ;
	                   g :    in std_logic ;
	                   a :    in std_logic ;
	                   b :    in std_logic ;
	                   s :    in std_logic_vector (2 downto 0) ;
	                   o : inout std_logic
    );
END demux;

-- End of Test Bench Header

ARCHITECTURE DSMB of demux is

	signal jed_node1	: std_logic:='0' ; -- s(2)
	signal jed_node2	: std_logic:='0' ; -- s(1)
	signal jed_node3	: std_logic:='0' ; -- s(0)
	signal jed_node4	: std_logic:='0' ; -- g
	signal jed_node5	: std_logic:='0' ; -- f
	signal jed_node6	: std_logic:='0' ; -- e
	signal jed_node7	: std_logic:='0' ; -- d
	signal jed_node8	: std_logic:='0' ; -- c
	signal jed_node9	: std_logic:='0' ; -- b
	signal jed_node10	: std_logic:='0' ; -- a
	signal jed_node11	: std_logic:='0' ;
	signal jed_node12	: std_logic:='0' ;
	signal jed_node13	: std_logic:='0' ;
	signal jed_node15	: std_logic:='0' ;
	signal jed_node16	: std_logic:='0' ;
	signal jed_node17	: std_logic:='0' ;
	signal jed_node18	: std_logic:='0' ;
	signal jed_node19	: std_logic:='0' ;
	signal jed_node20	: std_logic:='0' ;
	signal jed_node21	: std_logic:='0' ;
	signal jed_node22	: std_logic:='0' ;
	signal jed_node23	: std_logic:='0' ;
	signal jed_node24	: std_logic:='0' ;

	for all: c22v10m use entity primitive.c22v10m (sim);

SIGNAL  one:std_logic:='1';
SIGNAL  zero:std_logic:='0';
SIGNAL  jed_oept_1:std_logic:='0';
--Attribute PIN_NUMBERS of s(2):SIGNAL is "0001";

SIGNAL  jed_oept_2:std_logic:='0';
--Attribute PIN_NUMBERS of s(1):SIGNAL is "0002";

SIGNAL  jed_oept_3:std_logic:='0';
--Attribute PIN_NUMBERS of s(0):SIGNAL is "0003";

SIGNAL  jed_oept_4:std_logic:='0';
--Attribute PIN_NUMBERS of g:SIGNAL is "0004";

SIGNAL  jed_oept_5:std_logic:='0';
--Attribute PIN_NUMBERS of f:SIGNAL is "0005";

SIGNAL  jed_oept_6:std_logic:='0';
--Attribute PIN_NUMBERS of e:SIGNAL is "0006";

SIGNAL  jed_oept_7:std_logic:='0';
--Attribute PIN_NUMBERS of d:SIGNAL is "0007";

SIGNAL  jed_oept_8:std_logic:='0';
--Attribute PIN_NUMBERS of c:SIGNAL is "0008";

SIGNAL  jed_oept_9:std_logic:='0';
--Attribute PIN_NUMBERS of b:SIGNAL is "0009";

SIGNAL  jed_oept_10:std_logic:='0';
--Attribute PIN_NUMBERS of a:SIGNAL is "0010";

SIGNAL  jed_oept_14:std_logic:='0';
SIGNAL  jed_sum_14,jed_fb_14:std_logic:='0';
--Attribute PIN_NUMBERS of o:SIGNAL is "0014";

SIGNAL  jed_oept_25:std_logic:='0';
SIGNAL  jed_node25,jed_sum_25:std_logic:='0';
SIGNAL  jed_oept_26:std_logic:='0';
SIGNAL  jed_node26,jed_sum_26:std_logic:='0';

BEGIN
jed_node1 <= s(2) ;
jed_node2 <= s(1) ;
jed_node3 <= s(0) ;
jed_node4 <= g ;
jed_node5 <= f ;
jed_node6 <= e ;
jed_node7 <= d ;
jed_node8 <= c ;
jed_node9 <= b ;
jed_node10 <= a ;
Mcell_14:c22v10m
generic map(comb,
   ninv,
   xpin,
   	25 ns, --tpd
	25 ns, --tea
	25 ns, --ter
	15 ns, --tco
	18 ns, --ts
	0 ns, --th
	14 ns, --twh
	14 ns, --twl
	13 ns, --tcf
	25 ns, --taw
	25 ns, --tar
	25 ns, --tap
	25 ns  --tspr
)
port map(
     d=>jed_sum_14,
     clk=>jed_node1,
     oe=>jed_oept_14,
     ss=>jed_sum_26,
     ar=>jed_sum_25,
     y=>o,
     fb=>jed_fb_14
   );

jed_node25<=jed_sum_25;
jed_node26<=jed_sum_26;
jed_oept_14<=(one);

jed_sum_14<= (((jed_node1) and (jed_node2) and not(jed_node3) and (jed_node9)
) or
((jed_node1) and not(jed_node2) and (jed_node3) and (jed_node10)
) or
((jed_node1) and not(jed_node2) and not(jed_node3) and (jed_node4)
) or
(not(jed_node1) and (jed_node2) and (jed_node3) and (jed_node5)
) or
(not(jed_node1) and (jed_node2) and not(jed_node3) and (jed_node6)
) or
(not(jed_node1) and not(jed_node2) and (jed_node3) and (jed_node7)
) or
(not(jed_node1) and not(jed_node2) and not(jed_node3)
 and (jed_node8)));

end DSMB;
