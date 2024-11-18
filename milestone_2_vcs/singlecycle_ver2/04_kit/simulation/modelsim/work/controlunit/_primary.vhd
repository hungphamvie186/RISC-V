library verilog;
use verilog.vl_types.all;
entity controlunit is
    port(
        instr           : in     vl_logic_vector(31 downto 0);
        br_less         : in     vl_logic;
        br_equal        : in     vl_logic;
        pc_sel          : out    vl_logic;
        br_un           : out    vl_logic;
        rd_wren         : out    vl_logic;
        mem_wren        : out    vl_logic;
        op_a_sel        : out    vl_logic;
        op_b_sel        : out    vl_logic;
        wb_sel          : out    vl_logic_vector(1 downto 0);
        alu_op          : out    vl_logic_vector(3 downto 0);
        w_b_LSU         : out    vl_logic;
        l_unsigned      : out    vl_logic;
        o_insn_vld      : out    vl_logic
    );
end controlunit;
