// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract IfElse {
    function foo(int x) public pure returns (uint) {
        if (x < 6) {
            return 0;
        } else if (x > 6) {
            return 1;
        } else {
            return 2;
        }
    }

    function ternary(uint x) public pure returns (uint) {
        return x < 6 ? 0 : 1;
    }
}