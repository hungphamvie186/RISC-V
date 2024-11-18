library verilog;
use verilog.vl_types.all;
entity wrapper is
    port(
        SW              : in     vl_logic_vector(17 downto 0);
        KEY             : in     vl_logic_vector(3 downto 0);
        CLOCK_50        : in     vl_logic;
        LEDR            : out    vl_logic_vector(17 downto 0);
        LEDG            : out    vl_logic_vector(8 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        SRAM_ADDR       : out    vl_logic_vector(17 downto 0);
        SRAM_DQ         : inout  vl_logic_vector(15 downto 0);
        SRAM_CE_N       : out    vl_logic;
        SRAM_WE_N       : out    vl_logic;
        SRAM_LB_N       : out    vl_logic;
        SRAM_UB_N       : out    vl_logic;
        SRAM_OE_N       : out    vl_logic
    );
end wrapper;
