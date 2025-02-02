# Silent Range Errors in Ada

This example demonstrates a potential issue in Ada where range checks are not explicitly enforced, leading to silent errors. The `Check_Range` function intends to validate that an integer is within a specific range (10-20). However, if values outside this range are passed, the function will return `True` or `False` without raising any exceptions.  This can be difficult to debug, as the error won't be immediately apparent.

## How to reproduce the bug
1. Compile and run the provided `bug.ada` code.
2. Observe that no runtime error occurs even when values outside the 10-20 range are used.

## How to fix the bug (see `bugSolution.ada`)
The best approach is to use Ada's range constraints to explicitly define the allowed input range.  This forces the compiler to perform range checks, and an exception will be raised at runtime if a value falls outside the defined range. 