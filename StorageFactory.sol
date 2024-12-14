// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;
import {SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfContracts;
    function createSimpleContract() public {
       SimpleStorage  newSimpleCotract = new SimpleStorage();
       listOfContracts.push(newSimpleCotract);
    }


    function sfStore (uint256 _simpleStorageIndex , uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageNumber) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfContracts[_simpleStorageNumber];
        return mySimpleStorage.retrieve();
    }
}