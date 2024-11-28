// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Telephone {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address _owner) public {
        /*
            tx.origin refers to the original external owned account (EOA) that initiated the transaction. 
            It remains constant throughout the transaction chain, even if the transaction passes through multiple contracts. 
            In other words, tx.origin always points to the “leftmost” EOA in the call chain.
        */
        if (tx.origin != msg.sender) {
            owner = _owner;
        }
    }
}