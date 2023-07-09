# ETH-AVAX-PROOF-m1
# Error Handling In Solidity (Module-1):
The contract includes a function called "mark attendance" that allows users to cast their marked their attendance. Let's explore the error handling process in this function:

The "require" statement is used to check if the sender (the person executing the transaction) has already attended. If the sender has already attended, the execution is immediately stopped, and an exception is thrown with the error message "Already attended". This prevents multiple attendance from the same address and ensures the integrity of the marking attendance process.

Afterward, the total number of antendee's is incremented, and the sender's attendance status is marked as true in the "hasmarked" mapping.

Next, an "if" statement is used to check if the total number of attended exceeds the limit of 100. If the condition is met, the "revert" statement is triggered, causing the transaction to be reverted with the error message "marking limit exceeded". This handles the case where the class attending limit has been reached, and no further person can attend the session.

To provide an additional layer of validation, an "assert" statement is placed after the attendance counting logic. It ensures that the total number of attendance does not exceed the limit. If the assertion fails, indicating a logical error, the execution is halted, catching any unexpected behavior that may violate the voting logic.

The "markAtendance" function demonstrates how require, assert, and revert statements are used for error handling in the Attend contract, preventing duplicate Attendance, enforcing Attending limits, and maintaining the contract's integrity.

### More on require, assert, revert:

**require**: The require statement is used to validate certain conditions before proceeding with the execution of a function. It takes a condition as the first argument and an optional error message as the second argument. If the condition evaluates to false, the execution of the function is immediately halted, and any changes made to the state are reverted. An error message can be provided to indicate the reason for the failure. The require statement is typically used for input validation and to ensure certain conditions are met before executing further code.

**assert**: The assert statement is used to check for conditions that should never evaluate to false. It is typically used to validate internal consistency or invariants of the contract. If the condition provided to assert evaluates to false, it signifies a critical error in the code, and the execution is halted. Unlike require, assert does not allow for recovery or error messages. The purpose of assert is to catch logical errors during development and testing.

**revert**: The revert statement is used to flag an error and revert the current transaction. It is often used when an unexpected or invalid state is encountered, and there is no safe way to proceed with the execution. The revert statement can optionally include an error message to provide more information about the error. When revert is triggered, all changes made to the state within the transaction are undone, and any Ether sent along with the transaction is returned. It is essential for preventing erroneous states and preserving the integrity of the contract.

In summary, require is used for input validation and conditional checks, assert is used for internal consistency and catching critical errors, and revert is used to flag and revert transactions when encountering unexpected or invalid states. Each statement serves a specific purpose in handling different types of errors and ensuring the integrity of the contract.



## License:
The code is released under the MIT License, which permits you to use, modify, and distribute it according to the terms of the license.
