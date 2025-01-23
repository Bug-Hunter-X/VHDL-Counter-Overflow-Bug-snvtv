```vhdl
ENTITY fixed_counter IS
  PORT (
    clk : IN  STD_LOGIC;
    rst : IN  STD_LOGIC;
    count : OUT INTEGER RANGE 0 TO 15
  );
END ENTITY fixed_counter;

ARCHITECTURE behavioral OF fixed_counter IS
  SIGNAL internal_count : INTEGER RANGE 0 TO 15 := 0;
BEGIN
  PROCESS (clk, rst)
  BEGIN
    IF rst = '1' THEN
      internal_count <= 0;
    ELSIF rising_edge(clk) THEN
      internal_count <= (internal_count + 1) MOD 16; 
    END IF;
  END PROCESS;
  count <= internal_count;
END ARCHITECTURE behavioral;
```