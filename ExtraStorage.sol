// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./simpleStorage.sol";

contract ExtraStorage is SimpleStorage {
    // Override the store function to add 5 to the input
    function store(uint256 _favoriteNumber) public override {
        favoriteNumber = _favoriteNumber + 5;
    }
}
