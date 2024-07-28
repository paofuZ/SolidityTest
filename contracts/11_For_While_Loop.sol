// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Loop {
    uint256 public forU = 0;
    uint256 public WhileU = 0;

    function loop() public {
        // for loop
        for (uint256 i = 0; i < 10; i++) {
            if (i == 3) {
                forU = i;
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                forU = i;
                // Exit loop with break
                break;
            }
        }

        // while loop
        uint256 j;
        while (j < 10) {
            j++;
        }
        WhileU = j;
    }
}
