# Ada Unhandled Exception Bug
This repository demonstrates a common error in Ada: failing to handle exceptions that may arise during program execution.  The example shows a simple area calculation function that is prone to issues if the input values are negative or not properly validated. The solution shows how to incorporate exception handling for a more robust program.

## Bug Description
The `Calculate_Area` function does not include any exception handling.  If the `Length` or `Width` values are invalid (e.g., negative), the program will terminate unexpectedly.  This is because multiplication is a standard Ada operation, but there is no built-in check for negative values in this function.

## Solution
The solution adds exception handling to gracefully manage potential errors, preventing unexpected program termination.