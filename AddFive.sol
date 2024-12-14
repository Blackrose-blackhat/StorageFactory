
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFive is SimpleStorage  {
    function store(uint256 _newNumber) public override {
        myFavoriteNumber  = _newNumber + 5;
        
    }
}
