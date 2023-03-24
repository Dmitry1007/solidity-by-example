// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Primitives {
    bool public boo = true;
    // uint8 ranges from 0 to 2 ** 8 - 1 or 0 - 255
    uint8 public u8 = 255; 
    // uint16  ranges from 0 to 2 ** 16 - 1 or 0 - 65535
    uint16 public u16 = 65535;
    // uint is an alias for uint 256
    // // uint16  ranges from 0 to 2 ** 256 - 1 or 0 - 1.157920892E77
    uint public u = 1.157920892E77;
    uint256 public u256 = 1.157920892E77;
}