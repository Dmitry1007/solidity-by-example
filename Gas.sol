// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Gas {
    uint public i = 0;

    function deplete() public {
        // use up all the gas!
        // transaction will fail when gas is used up
        while (true) {
            i += 1;
        }
    }
}