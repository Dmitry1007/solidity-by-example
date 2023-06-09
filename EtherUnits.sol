// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EtherUnits {
    uint public oneWei = 1 wei;
    bool public isOneWei = oneWei == 1;
    uint public oneEther = 1 ether;
    bool public isOneEther = oneEther == 1e18;
}