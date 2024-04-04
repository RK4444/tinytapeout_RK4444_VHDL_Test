library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tt_um_RK444_Simple_Start is
    port (
        ui_in : in std_logic_vector(7 downto 0); -- Dedicated inputs
        uo_out : out std_logic_vector(7 downto 0); -- Dedicated outputs
        uio_in : in std_logic_vector(7 downto 0); -- IOs: Input path
        uio_out : out std_logic_vector(7 downto 0); -- IOs: Output path
        uio_oe : out std_logic_vector(7 downto 0); -- IOs: Enable path (active high: 0=input, 1=output)
        ena : in std_logic; -- will go high when the design is enabled
        clk   : in std_logic; -- clock
        rst_n : in std_logic -- reset_n - low to reset
    );
end entity;

architecture behavioral of tt_um_RK444_Simple_Start is

begin
    -- All output pins must be assigned. If not used, assign to 0.
    uo_out <= std_logic_vector(unsigned(ui_in) + unsigned(uio_in));
    uio_out <= (others => '0');
    uio_oe <= (others => '0');

end architecture;