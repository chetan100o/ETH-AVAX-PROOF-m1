// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attend {

    uint public totalAttendance;
    mapping(address => bool) public hasAttended;

    function markAtendance() public {
        require(!hasAttended[msg.sender], "Already marked"); // Check if the person has already marked attendance

        totalAttendance++;
        hasAttended[msg.sender] = true;

        if (totalAttendance > 100) {
            revert("marking limit exceeded"); // Revert the transaction if the attendend limit is exceeded
        }

        assert(totalAttendance <= 100); // Ensure that the total attended does not exceed the limit
    }
}
