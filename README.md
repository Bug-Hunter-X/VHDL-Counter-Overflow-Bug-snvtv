# VHDL Counter Overflow Bug
This repository demonstrates a common error in VHDL:  an integer counter that can overflow. The `buggy_counter.vhdl` file contains the flawed code, while `fixed_counter.vhdl` provides a corrected version.

**Problem:** The original counter lacks bounds checking, leading to unexpected behavior when the counter reaches its maximum value (15 in this case).

**Solution:** The corrected counter utilizes a modulo operator to wrap around once it reaches the maximum value, preventing overflow.