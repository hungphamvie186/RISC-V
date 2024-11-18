library verilog;
use verilog.vl_types.all;
entity register_nor is
    generic(
        WIDTH           : integer := 32
    );
    port(
        rst             : in     vl_logic;
        en              : in     vl_logic;
        clk             : in     vl_logic;
        D               : in     vl_logic_vector;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end register_nor;
