library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tt_um_example is
    port (
        ui_in : in std_logic_vector(7 downto 0);
        uo_out : out std_logic_vector(7 downto 0);
        uio_in : in std_logic_vector(7 downto 0);
        uio_out : out std_logic_vector(7 downto 0);
        uio_oe : out std_logic_vector(7 downto 0);
        ena : in std_logic;
        clk   : in std_logic;
        rst_n : in std_logic;
    );
end entity;

architecture behavioral of tt_um_example is

begin

    uo_out <= std_logic_vector(unsigned(ui_in) + unsigned(uio_in));
    uio_out <= (others => '0');
    uio_oe <= (others => '0');

end architecture;