library verilog;
use verilog.vl_types.all;
entity subtractor is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        cin             : in     vl_logic;
        sub             : out    vl_logic_vector(31 downto 0);
        cout            : out    vl_logic
    );
end subtractor;
