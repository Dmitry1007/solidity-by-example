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

        /*
    In Solidity, the data type byte represent a sequence of bytes. 
    Solidity presents two type of bytes types :

     - fixed-sized byte arrays
     - dynamically-sized byte arrays.
     
     The term bytes in Solidity represents a dynamic array of bytes. 
     It’s a shorthand for byte[] .

     bytes are represented in hexadecimal format
     where each byte is represented by two hexadecimal digits
     For example, the value 0x1234 is a bytes2 array with two bytes: 0x12 and 0x34
    */
    bytes1 public bytesOne   = 0xb5;   // [10110101]
    bytes2 public bytesUno   = 0x79d3; // [01010110]
    bytes3 public bytesThree = 0x79d3d8;
    bytes4 public bytesFour  = 0x79d3d883;
    bytes32 public bytesThirtyTwo = 0x79d3d8832d904592c0bf9818b621522c988bb8b0c05cdc3b15aea1b6e8db0c15;
    bytes public bytesDefault; // a dynamic array of bytes, which can have a variable length

    // Default values
    // Unassigned variables have a default value
    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000

    function getBalance() public view returns (uint256) {
        return addr.balance;
    }

    function getBalanceInEth() public view returns (uint256) {
        return addr.balance / 10**18;
    }
}