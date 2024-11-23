// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;
import "contracts/simpleStorage.sol";
contract StorageFactory{
    SimpleStorage[] public simpleStorageArray; 
    function createSimpleStorageContract() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }
    function sfStore(uint256 _simplestorageIndex, uint256 _simpleStorageNumber) public {
            SimpleStorage simpleStorage = simpleStorageArray[_simplestorageIndex];
            simpleStorage.store(_simpleStorageNumber);
    }
    function sfGet(uint256 _simplestorageIndex) public view returns(uint256){
            SimpleStorage simpleStorage = simpleStorageArray[_simplestorageIndex]; 
            return simpleStorage.retrieve();
    }
}
