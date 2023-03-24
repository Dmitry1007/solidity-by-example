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

        /*
    Negative numbers are allowed for int types.
    Like uint, different ranges are available from int8 to int256
    
    int256 ranges from -2 ** 255 to 2 ** 255 - 1
    int128 ranges from -2 ** 127 to 2 ** 127 - 1
    */
    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; // int is same as int256

    // minimum and maximum of int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}