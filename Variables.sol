// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    // state variables stored on the blockchain
    string public greet = "Sup Sup";
    uint public num = 777;

    function doSomething() public view returns(uint, uint, address) {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // gloval variables
        uint timeStamp = block.timestamp;
        address sender = msg.sender;
        
        return (i, timeStamp, sender);
    }
}