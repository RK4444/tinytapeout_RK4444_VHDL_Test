library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
    port (
        
    );
end entity;

architecture rtl of tb is
    signal clk : std_logic;
    signal rst_n : std_logic;
    signal ena : std_logic;
    signal ui_in : std_logic_vector(7 downto 0);
    signal uio_in : std_logic_vector(7 downto 0);
    signal uo_out : std_logic_vector(7 downto 0);
    signal uio_out : std_logic_vector(7 downto 0);
    signal uio_oe : std_logic_vector(7 downto 0);
    
begin

    myModule : entity tt_um_RK444_Simple_Start(behavioral)
    port map(
        ui_in => ui_in,
        uo_out => uo_out,
        uio_out => uio_out,
        uio_in => uio_in,
        uio_oe => uio_oe,
        clk => clk,
        rst_n => rst_n,
        ena => ena
    );

end architecture;