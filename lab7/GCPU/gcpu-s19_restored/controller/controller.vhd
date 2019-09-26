library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity controller is
    PORT
    (
        -- General Inputs
        CLK, RESET_n                            : in std_logic;
        
        -- Data Buses
        IR                                      : in std_logic_vector(5  downto 0);
        
        -- Bus Control
        R_nW                                    : out std_logic;
        
        -- MUX control
        MSC                                     : out std_logic_vector(3 downto 0);
        MSA, MSB                                : out std_logic_vector(1 downto 0);
        ADDR_SEL1                               : out std_logic;
        ADDR_SEL0                               : out std_logic;
        
        -- Status Bits
        NEG_FLAG, ZERO_FLAG                     : in std_logic;

        -- Internal register control
        nIR_LD,
        nMAR_LD_LOWER, nMAR_LD_UPPER, MAR_INC,
        nX_LD_LOWER, nX_LD_UPPER, X_INC, XD_LD, 
        nY_LD_LOWER, nY_LD_UPPER, Y_INC, YD_LD,
        nPC_LD_LOWER, nPC_LD_UPPER, PC_INC        : out std_logic;
        
        -- Debug outputs
        STATES                                  : out std_logic_vector(5 downto 0)
    );

end controller;

architecture BHV of controller is
    ---------------------------------------------------------------------------------------
    -- State Constants
    ---------------------------------------------------------------------------------------
    constant IR_FETCH           : std_logic_vector(5 downto 0) := "000000";
    constant IR_DECODE          : std_logic_vector(5 downto 0) := "000001";
    
    constant LDAI_0             : std_logic_vector(5 downto 0) := "000010";
    
    constant LDBI_0             : std_logic_vector(5 downto 0) := "000011";
    
    constant LDAA_0             : std_logic_vector(5 downto 0) := "000100";
    constant LDAA_1             : std_logic_vector(5 downto 0) := "000101";
    constant LDAA_2             : std_logic_vector(5 downto 0) := "000110";
    
    constant LDBA_0             : std_logic_vector(5 downto 0) := "000111";
    constant LDBA_1             : std_logic_vector(5 downto 0) := "001000";
    constant LDBA_2             : std_logic_vector(5 downto 0) := "001001";
    
    constant STAA_0             : std_logic_vector(5 downto 0) := "001010";
    constant STAA_1             : std_logic_vector(5 downto 0) := "001011";
    constant STAA_2             : std_logic_vector(5 downto 0) := "001100";
    
    constant STBA_0             : std_logic_vector(5 downto 0) := "001101";
    constant STBA_1             : std_logic_vector(5 downto 0) := "001110";
    constant STBA_2             : std_logic_vector(5 downto 0) := "001111";
    
    constant LDXI_0             : std_logic_vector(5 downto 0) := "010000";
    constant LDXI_1             : std_logic_vector(5 downto 0) := "010001";
    
    constant LDYI_0             : std_logic_vector(5 downto 0) := "010010";
    constant LDYI_1             : std_logic_vector(5 downto 0) := "010011";
    
    constant LDXA_0             : std_logic_vector(5 downto 0) := "010100";
    constant LDXA_1             : std_logic_vector(5 downto 0) := "010101";
    constant LDXA_2             : std_logic_vector(5 downto 0) := "010110";
    constant LDXA_3             : std_logic_vector(5 downto 0) := "010111";
    
    constant LDYA_0             : std_logic_vector(5 downto 0) := "011000";
    constant LDYA_1             : std_logic_vector(5 downto 0) := "011001";
    constant LDYA_2             : std_logic_vector(5 downto 0) := "011010";
    constant LDYA_3             : std_logic_vector(5 downto 0) := "011011";
    
    constant LDAX_0             : std_logic_vector(5 downto 0) := "011100";
    constant LDAX_1             : std_logic_vector(5 downto 0) := "011101";
    constant LDAY_0             : std_logic_vector(5 downto 0) := "011110";
    constant LDAY_1             : std_logic_vector(5 downto 0) := "011111";
    
    constant LDBX_0             : std_logic_vector(5 downto 0) := "100000";
    constant LDBX_1             : std_logic_vector(5 downto 0) := "100001";
    constant LDBY_0             : std_logic_vector(5 downto 0) := "100010";
    constant LDBY_1             : std_logic_vector(5 downto 0) := "100011";
    
    constant STAX_0             : std_logic_vector(5 downto 0) := "100100";
    constant STAX_1             : std_logic_vector(5 downto 0) := "100101";
    constant STAY_0             : std_logic_vector(5 downto 0) := "100110";
    constant STAY_1             : std_logic_vector(5 downto 0) := "100111";
    
    constant STBX_0             : std_logic_vector(5 downto 0) := "101000";
    constant STBX_1             : std_logic_vector(5 downto 0) := "101001";
    constant STBY_0             : std_logic_vector(5 downto 0) := "101010";
    constant STBY_1             : std_logic_vector(5 downto 0) := "101011";
    
    constant BEQ_0              : std_logic_vector(5 downto 0) := "101100";
    constant BEQ_1              : std_logic_vector(5 downto 0) := "101101";
    
    constant BNE_0              : std_logic_vector(5 downto 0) := "101110";
    constant BNE_1              : std_logic_vector(5 downto 0) := "101111";
    
    constant BN_0               : std_logic_vector(5 downto 0) := "110000";
    constant BN_1               : std_logic_vector(5 downto 0) := "110001";
    
    constant BP_0               : std_logic_vector(5 downto 0) := "110010";
    constant BP_1               : std_logic_vector(5 downto 0) := "110011";
    
    ---------------------------------------------------------------------------------------
    -- Select Line Constants
    ---------------------------------------------------------------------------------------  
    -- ALU
        constant MSC_OUTA       : std_logic_vector(3 downto 0) := "0000";
        constant MSC_OUTB       : std_logic_vector(3 downto 0) := "0001";
        constant MSC_ADD        : std_logic_vector(3 downto 0) := "0010";
        constant MSC_AND        : std_logic_vector(3 downto 0) := "0011";
        constant MSC_OR	        : std_logic_vector(3 downto 0) := "0100";
        constant MSC_COMA       : std_logic_vector(3 downto 0) := "0101";
        constant MSC_COMB       : std_logic_vector(3 downto 0) := "0110";
        constant MSC_SHLA       : std_logic_vector(3 downto 0) := "0111";
        constant MSC_SHRA       : std_logic_vector(3 downto 0) := "1000";
        constant MSC_SHLB       : std_logic_vector(3 downto 0) := "1001";
        constant MSC_SHRB       : std_logic_vector(3 downto 0) := "1010";
        constant MSC_RSV0       : std_logic_vector(3 downto 0) := "1011";
        constant MSC_RSV1       : std_logic_vector(3 downto 0) := "1100";
        constant MSC_RSV2       : std_logic_vector(3 downto 0) := "1101";
        constant MSC_RSV3       : std_logic_vector(3 downto 0) := "1110";
        constant MSC_RSV4       : std_logic_vector(3 downto 0) := "1111";
        
    -- A MUX
        constant MSA_DATA       : std_logic_vector(1 downto 0) := "00";
        constant MSA_REGA       : std_logic_vector(1 downto 0) := "01";
        constant MSA_REGB       : std_logic_vector(1 downto 0) := "10";
        constant MSA_OUT        : std_logic_vector(1 downto 0) := "11";
        
    -- B MUX
        constant MSB_DATA       : std_logic_vector(1 downto 0) := "00";
        constant MSB_REGA       : std_logic_vector(1 downto 0) := "01";
        constant MSB_REGB       : std_logic_vector(1 downto 0) := "10";
        constant MSB_OUT        : std_logic_vector(1 downto 0) := "11";
        
    -- Address Bus
        constant ADDR_PC        : std_logic_vector(1 downto 0) := "00";
        constant ADDR_MAR       : std_logic_vector(1 downto 0) := "01";
        constant ADDR_X         : std_logic_vector(1 downto 0) := "10";
        constant ADDR_Y         : std_logic_vector(1 downto 0) := "11";
     
    ---------------------------------------------------------------------------------------
    -- Operation Codes
    --------------------------------------------------------------------------------------- 
    -- Data Movement
        constant TAB            : std_logic_vector(5 downto 0) := "000000";
        constant TBA            : std_logic_vector(5 downto 0) := "000001";
        constant LDAI           : std_logic_vector(5 downto 0) := "000010";
        constant LDBI           : std_logic_vector(5 downto 0) := "000011";
        constant LDAA           : std_logic_vector(5 downto 0) := "000100";
        constant LDBA           : std_logic_vector(5 downto 0) := "000101";
        constant STAA           : std_logic_vector(5 downto 0) := "000110";
        constant STBA           : std_logic_vector(5 downto 0) := "000111";
        constant LDXI           : std_logic_vector(5 downto 0) := "001000";
        constant LDYI           : std_logic_vector(5 downto 0) := "001001";
        constant LDXA           : std_logic_vector(5 downto 0) := "001010";
        constant LDYA           : std_logic_vector(5 downto 0) := "001011";
        constant LDAX           : std_logic_vector(5 downto 0) := "001100";
        constant LDAY           : std_logic_vector(5 downto 0) := "001101";
        constant LDBX           : std_logic_vector(5 downto 0) := "001110";
        constant LDBY           : std_logic_vector(5 downto 0) := "001111";
        constant STAX           : std_logic_vector(5 downto 0) := "010000";
        constant STAY           : std_logic_vector(5 downto 0) := "010001";
        constant STBX           : std_logic_vector(5 downto 0) := "010010";
        constant STBY           : std_logic_vector(5 downto 0) := "010011";
        
    -- ALU Related
        constant SUM_BA         : std_logic_vector(5 downto 0) := "010100";
        constant SUM_AB         : std_logic_vector(5 downto 0) := "010101";
        constant AND_BA         : std_logic_vector(5 downto 0) := "010110";
        constant AND_AB         : std_logic_vector(5 downto 0) := "010111";
        constant OR_BA          : std_logic_vector(5 downto 0) := "011000";
        constant OR_AB          : std_logic_vector(5 downto 0) := "011001";
        constant COMA           : std_logic_vector(5 downto 0) := "011010";
        constant COMB           : std_logic_vector(5 downto 0) := "011011";
        constant SHLA           : std_logic_vector(5 downto 0) := "011100";
        constant SHRA           : std_logic_vector(5 downto 0) := "011101";
        constant SHLB           : std_logic_vector(5 downto 0) := "011110";
        constant SHRB           : std_logic_vector(5 downto 0) := "011111";
        constant INCX           : std_logic_vector(5 downto 0) := "110000";
        constant INCY           : std_logic_vector(5 downto 0) := "110001";
        
    -- Branch
        constant BEQ            : std_logic_vector(5 downto 0) := "100000";
        constant BNE            : std_logic_vector(5 downto 0) := "100001";
        constant BN             : std_logic_vector(5 downto 0) := "100010";
        constant BP             : std_logic_vector(5 downto 0) := "100011";
        
    ---------------------------------------------------------------------------------------
    -- Extra Signals
    ---------------------------------------------------------------------------------------
    signal state, next_state    : std_logic_vector(5 downto 0);
    signal addr_sel             : std_logic_vector(1 downto 0);
    
    signal IR_LD,
    MAR_LD_LOWER, MAR_LD_UPPER,
    X_LD_LOWER, X_LD_UPPER,
    Y_LD_LOWER, Y_LD_UPPER,
    PC_LD_LOWER, PC_LD_UPPER    : std_logic;
        
begin
    process(CLK, RESET_n)
    begin
        if(RESET_n = '0') then
            state <= IR_FETCH;
        elsif(clk'event and clk = '1') then
            state <= next_state;
        end if;
    end process;
    
    process(state, IR, ZERO_FLAG, NEG_FLAG)
        -- Simple type wrapper
        subtype SLV6 is std_logic_vector(5 downto 0);
    begin
        ---------------------------------------------------------------------------------------
        -- Default Values
        --------------------------------------------------------------------------------------- 
        -- State machine
        next_state      <= state;
        
        -- Bus control
        R_nW            <= '1';
        
        -- MUX control
        MSC             <= MSC_OUTA; -- Select ALU functions
        MSA             <= MSA_REGA;        -- Select input for ALU A
        MSB             <= MSA_REGB;        -- Select input for ALU B
        ADDR_SEL        <= ADDR_PC; -- Select PC
        
        -- Internal register control
        IR_LD           <= '0';
        
        MAR_LD_LOWER    <= '0';
        MAR_LD_UPPER    <= '0';
        MAR_INC         <= '0';
        
        X_LD_LOWER      <= '0';
        X_LD_UPPER      <= '0';
        X_INC           <= '0';
        XD_LD           <= '0';
        
        Y_LD_LOWER      <= '0';
        Y_LD_UPPER      <= '0';
        Y_INC           <= '0';
        YD_LD           <= '0';
        
        PC_LD_LOWER     <= '0';
        PC_LD_UPPER     <= '0';
        PC_INC          <= '0';
        
        case state is
            when IR_FETCH =>
                ---------------------------------------------------------------------------------------
                -- The instruction register gets its input from the databus and outputs directly
                --  to the controller. This state is the only time the instruction register should load.
                ---------------------------------------------------------------------------------------
                -- Load the IR
                IR_LD <= '1';

                -- Next state is used to decode the IR
                next_state <= IR_DECODE;
   
            when IR_DECODE =>
                -- INC the program counter
                pc_inc <= '1';
                
                case SLV6'(IR) is
                    when TAB =>
                        -- Transfer RegA into RegB
                        MSB <= MSB_REGA;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when TBA =>
                        -- Transfer RegB into RegA
                        MSA <= MSA_REGB;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                    
                    when LDAI =>
                        -- Let PC inc once, then continue
                        next_state <= LDAI_0;
                    
                    when LDBI =>
                        -- Let PC inc once, then continue
                        next_state <= LDBI_0;
                        
                    when LDAA =>
                        -- Let PC inc once, then continue
                        next_state <= LDAA_0;
                        
                    when LDBA =>
                        -- Let PC inc once, then continue
                        next_state <= LDBA_0;
                        
                    when STAA =>
                        -- Let PC inc once, then continue
                        next_state <= STAA_0;
                     
                    when STBA =>
                        -- Let PC inc once, then continue
                        next_state <= STBA_0;
                      
                    when LDXI =>
                        -- Let PC inc once, then continue
                        next_state <= LDXI_0;
                        
                    when LDYI =>
                        -- Let PC inc once, then continue
                        next_state <= LDYI_0;
                        
                    when LDXA =>
                        -- Let PC inc once, then continue
                        next_state <= LDXA_0;
                        
                    when LDYA =>
                        -- Let PC inc once, then continue
                        next_state <= LDYA_0;
                  
                    when LDAX =>
                        -- Let PC inc once, then continue
                        next_state <= LDAX_0;
                        
                    when LDAY =>
                        -- Let PC inc once, then continue
                        next_state <= LDAY_0;
                        
                    when LDBX =>
                        -- Let PC inc once, then continue
                        next_state <= LDBX_0;
                        
                    when LDBY =>
                        -- Let PC inc once, then continue
                        next_state <= LDBY_0;
                        
                    when STAX =>
                        -- Let PC inc once, then continue
                        next_state <= STAX_0;
                        
                    when STAY =>
                        -- Let PC inc once, then continue
                        next_state <= STAY_0;
                        
                    when STBX =>
                        -- Let PC inc once, then continue
                        next_state <= STBX_0;
                        
                    when STBY =>
                        -- Let PC inc once, then continue
                        next_state <= STBY_0;
                        
                    when SUM_BA =>
                        -- SUM A and B
                        MSC <= MSC_ADD;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when SUM_AB => 
                        -- SUM A and B
                        MSC <= MSC_ADD;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when AND_BA =>
                        -- AND A and B
                        MSC <= MSC_AND;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when AND_AB =>
                        -- AND A and B
                        MSC <= MSC_AND;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when OR_BA  =>
                       -- OR A and B
                        MSC <= MSC_OR;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when OR_AB  =>
                        -- OR A and B
                        MSC <= MSC_OR;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when COMA   =>
                        -- Complement A
                        MSC <= MSC_COMA;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when COMB   =>
                        -- Complement B
                        MSC <= MSC_COMB;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when SHLA   =>
                        -- Shift A left once
                        MSC <= MSC_SHLA;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when SHRA   =>
                        -- Shift A right once
                        MSC <= MSC_SHRA;
                        
                        -- Load result into A
                        MSA <= MSA_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when SHLB   =>
                        -- Shift B left once
                        MSC <= MSC_SHLB;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when SHRB   =>
                        -- Shfit B right once
                        MSC <= MSC_SHRB;
                        
                        -- Load result into B
                        MSB <= MSB_OUT;
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when BEQ =>
                        -- Branch if Zero
                        if ZERO_FLAG = '1' then
                            next_state <= BEQ_0;
                         else
                            next_state <= BEQ_1;
                         end if;
                 
                    when BNE =>
                        -- Branch if not Zero
                        if ZERO_FLAG = '0' then
                            next_state <= BNE_0;
                        else
                            next_state <= BNE_1;
                        end if;
                    
                    when BN =>
                        -- Branch if Negative
                        if NEG_FLAG = '1' then
                            next_state <= BN_0;
                        else
                            next_state <= BN_1;
                        end if;
                    
                    when BP =>
                        -- Branch if not Negative
                        if NEG_FLAG = '0' then
                            next_state <= BP_0;
                        else
                            next_state <= BP_1;
                        end if;
                        
                    when INCX   =>
                        -- Increment X once
                        x_inc   <= '1';
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                        
                    when INCY   =>
                        -- Increment Y once
                        y_inc   <= '1';
                        
                        -- Fetch a new instruction
                        next_state <= IR_FETCH;
                            
                    when OTHERS =>
                        -- There is no good default for a bad opcode. Just don't do it? In this instance,
                        --  a bad opcode will simply be skipped and IR_FECTCH will run again.
                        next_state <= IR_FETCH;
                end case;
                
            when LDAI_0 =>
                -- INC the program counter
                pc_inc <= '1';
                
                -- Load what is on data bus into regA
                MSA <= MSA_DATA;
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;        
                    
            when LDBI_0 =>
                -- INC the program counter
                pc_inc <= '1';
                
                -- Output regB onto data bus
                MSC <= MSC_OUTB;
                
                -- Load what is on data bus into regB
                MSB <= MSB_DATA;
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDAA_0 =>
                -- INC the program counter
                pc_inc 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= LDAA_1;
                
            when LDAA_1 =>
                -- INC the program counter
                PC_INC  <= '1';
                
                -- Load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= LDAA_2;
                
            when LDAA_2 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on data bus into regA
                MSA <= MSA_DATA;
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDBA_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= LDBA_1;
                
            when LDBA_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= LDBA_2;
                
            when LDBA_2 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on data bus into regB
                MSB <= MSB_DATA;
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when STAA_0 =>
                -- INC the program counter
                pc_inc 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= STAA_1;
                
            when STAA_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= STAA_2;
                
            when STAA_2 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Output regA onto data bus
                MSC <= MSC_OUTA;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when STBA_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= STBA_1;
                
            when STBA_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= STBA_2;
                
            when STBA_2 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Output regB onto data bus
                MSC <= MSC_OUTB;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDXI_0 =>
                -- INC the program counter
                PC_INC  <= '1';
      
                -- Load what is on data bus into X_L
                X_LD_LOWER <= '1';
                
                next_state <= LDXI_1;
                
            when LDXI_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into X_H
                X_LD_UPPER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDYI_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
      
                -- Load what is on data bus into Y_L
                Y_LD_LOWER <= '1';
                
                next_state <= LDYI_1;
                
            when LDYI_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into Y_H
                Y_LD_UPPER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDXA_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= LDXA_1;
                
            when LDXA_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= LDXA_2;
                
            when LDXA_2 =>
                -- INC the Memory Address Register
                MAR_INC <= '1';
                
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on the data bus into X_L
                X_LD_LOWER <= '1';
               
                next_state <= LDXA_3;
                
            when LDXA_3 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on the data bus into X_H
                X_LD_UPPER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDYA_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Load what is on data bus into MAR_L
                MAR_LD_LOWER <= '1';
                
                next_state <= LDYA_1;
                
            when LDYA_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- load what is on data bus into MAR_H
                MAR_LD_UPPER <= '1';
                
                next_state <= LDYA_2;
                
            when LDYA_2 =>
                -- INC the Memory Address Register
                MAR_INC <= '1';
                
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on the data bus into Y_L
                Y_LD_LOWER <= '1';
               
                next_state <= LDYA_3;
                
            when LDYA_3 =>
                -- Set address bus to MAR
                addr_sel <= ADDR_MAR;
                
                -- Load what is on the data bus into Y_H
                Y_LD_UPPER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;

            when LDAX_0 =>
                -- INC the program counter
                PC_INC  <= '1';
    
                -- Load displacement into X
                XD_LD <= '1';
                
                next_state <= LDAX_1;
                
            when LDAX_1 =>
                -- Set address bus to X
                addr_sel <= ADDR_X;
                
                -- Load what is on the data bus into regA
                MSA <= MSA_DATA;
                
                 -- Fetch a new instruction
                next_state <= IR_FETCH; 
  
            when LDAY_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
    
                -- Load displacement into Y
                YD_LD <= '1';
                
                next_state <= LDAY_1;
                
            when LDAY_1 =>
                -- Set address bus to Y
                addr_sel <= ADDR_Y;
                
                -- Load what is on the data bus into regA
                MSA <= MSA_DATA;
                
                 -- Fetch a new instruction
                next_state <= IR_FETCH;   
             
            when LDBX_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
    
                -- Load displacement into X
                XD_LD <= '1';
                
                next_state <= LDBX_1;
                
            when LDBX_1 =>
                -- Set address bus to X
                addr_sel <= ADDR_X;
                
                -- Load what is on the data bus into regB
                MSB <= MSB_DATA;
                
                 -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when LDBY_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
    
                -- Load displacement into Y
                YD_LD <= '1';
                
                next_state <= LDBY_1;
                
            when LDBY_1 =>
                -- Set address bus to Y
                addr_sel <= ADDR_Y;
                
                -- Load what is on the data bus into regA
                MSB <= MSB_DATA;
                
                 -- Fetch a new instruction
                next_state <= IR_FETCH;
 
            when STAX_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
     
                -- Load displacement into X
                XD_LD <= '1';
            
                next_state <= STAX_1;
                
            when STAX_1 =>
                 -- Set address bus to X
                addr_sel <= ADDR_X;
 
                -- Output regA onto data bus
                MSC <= MSC_OUTA;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when STAY_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
     
                -- Load displacement into Y
                YD_LD <= '1';
            
                next_state <= STAY_1;
                
            when STAY_1 =>
                 -- Set address bus to Y
                addr_sel <= ADDR_Y;
 
                -- Output regA onto data bus
                MSC <= MSC_OUTA;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;

            when STBX_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
     
                -- Load displacement into X
                XD_LD <= '1';
            
                next_state <= STBX_1;
                
            when STBX_1 =>
                 -- Set address bus to X
                addr_sel <= ADDR_X;
 
                -- Output regB onto data bus
                MSC <= MSC_OUTB;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when STBY_0 =>
                -- INC the program counter
                PC_INC 	<= '1';
     
                -- Load displacement into Y
                YD_LD <= '1';
            
                next_state <= STBY_1;
                
            when STBY_1 =>
                 -- Set address bus to Y
                addr_sel <= ADDR_Y;
 
                -- Output regB onto data bus
                MSC <= MSC_OUTB;
                
                -- Set data bus to write
                R_nW <= '0';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
    
            when BEQ_0 =>
                -- Load what is on data bus into PC_L
                PC_LD_LOWER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when BEQ_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when BNE_0 =>
                -- Load what is on data bus into PC_L
                PC_LD_LOWER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when BNE_1 =>
                -- INC the program counter
                PC_INC  <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;

            when BN_0 =>
                -- Load what is on data bus into PC_L
                PC_LD_LOWER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when BN_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;

            when BP_0 =>
                -- Load what is on data bus into PC_L
                PC_LD_LOWER <= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when BP_1 =>
                -- INC the program counter
                PC_INC 	<= '1';
                
                -- Fetch a new instruction
                next_state <= IR_FETCH;
                
            when OTHERS =>
                -- This can't be reached, since the state_type defines all states, and there is no other
                --  input. But my ma'ma raised me better so this is a catch all for the state machine.
                null;
        end case;        
    end process;
    
    -- This is here to make life easier
    ADDR_SEL0 <= addr_sel(0);
    ADDR_SEL1 <= addr_sel(1);
    STATES <= state;
    
    -- Inverting for active low signals
    nIR_LD          <= not IR_LD;
    
    nMAR_LD_LOWER   <= not MAR_LD_LOWER;
    nMAR_LD_UPPER   <= not MAR_LD_UPPER;
    
    nX_LD_LOWER     <= not X_LD_LOWER;
    nX_LD_UPPER     <= not X_LD_UPPER;
    
    nY_LD_LOWER     <= not Y_LD_LOWER;
    nY_LD_UPPER     <= not Y_LD_UPPER;
    
    nPC_LD_LOWER    <= not PC_LD_LOWER;
    nPC_LD_UPPER    <= not PC_LD_UPPER;
    
end BHV;