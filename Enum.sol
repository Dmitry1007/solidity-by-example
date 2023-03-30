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

    function setStatus(Status status) public {
        s_status = status;
    }

    function cancel() public {
        s_status = Status.Canceled;
    }

    function shipped() public {
        s_status = Status.Shipped;
    }

    function reset() public {
        delete s_status;
    }
}