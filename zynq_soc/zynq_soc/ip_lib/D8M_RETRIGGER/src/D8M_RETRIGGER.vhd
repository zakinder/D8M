library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity D8M_RETRIGGER is
    Port ( D5M_Pixel_CLK : in STD_LOGIC;
           D5M_Data_i : in STD_LOGIC_VECTOR (9 downto 0);
           HS_i : in STD_LOGIC;
           VS_i : in STD_LOGIC;
           D5M_Data_o : out STD_LOGIC_VECTOR (11 downto 0);
           HS_o : out STD_LOGIC;
           VS_o : out STD_LOGIC);
end D8M_RETRIGGER;
architecture Behavioral of D8M_RETRIGGER is
begin
D8M: process(D5M_Pixel_CLK) begin
    if(D5M_Pixel_CLK'event and D5M_Pixel_CLK = '1') then
        D5M_Data_o <= "00" & D5M_Data_i;
        HS_o <= HS_i;
        VS_o <= VS_i;        
    end if;
end process D8M;

end Behavioral;
