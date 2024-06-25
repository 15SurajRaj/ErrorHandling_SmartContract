# ErrorHandlingContract

This Solidity smart contract demonstrates basic error handling using 'require', 'assert', and 'revert' statements.

## Contract Overview

### Variables
- value (uint): A public state variable that stores an unsigned integer.

### Functions
1. **setVal**
   - Description: Sets the value state variable to a given unsigned integer.
   - Parameters: 
     - _val (uint): The value to set.
   - Logic:
     - Ensures _val is greater than zero using require.
     - Uses assert to ensure the new value _val is not equal to the current value.
     - Sets the state variable value to _val.

2. **operationDivision**
   - Description: Performs division of two unsigned integers.
   - Parameters: 
     - _numerator (uint): The numerator.
     - _denominator (uint): The denominator.
   - Returns: 
     - The result of _numerator divided by _denominator.
   - Logic:
     - Ensures the denominator _denominator is not zero using require.
     - Checks if the numerator _numerator is divisible by the denominator _denominator. If not, it reverts the transaction with an error message.
     - Returns the division result.

## Error Handling

This contract uses three types of error handling methods:

- require: Ensures a condition is met; otherwise, it reverts the transaction with an error message.
- assert: Used to check for conditions that should never occur. If the condition is false, it indicates a bug in the contract and reverts the transaction.
- revert: Explicitly reverts the transaction with an error message when certain conditions are not met.


