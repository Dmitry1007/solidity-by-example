// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Enum {
    enum Status {
        Pending, // 0
        Shipped, // 1
        Accepted, // 2
        Rejected, // 3
        Canceled // 4
    }

    Status public s_status;

    function getStatus() public view returns (Status) {
        return s_status;
    }
}