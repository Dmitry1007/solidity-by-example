// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Loop {

    // More loops means more gas
    function loop() external view {
        // for loop
        for (uint i = 0; i < 10; i++) {
            console.log(i);
            if (i == 3) {
                console.log("i == 3 continue");
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                console.log("i == 5, break");
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint j;
        while (j < 10) {
            console.log(j, "is less than 10");
            j++;
        }
    }
}
