// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Mapping {
    mapping(address => uint) public myMap;

    function set(address addr, uint num) public {
        myMap[addr] = num;
    }

    function get(address addr) public view returns(uint) {
        return myMap[addr];
    }

    function remove(address addr) public {
        delete myMap[addr];
    }
}