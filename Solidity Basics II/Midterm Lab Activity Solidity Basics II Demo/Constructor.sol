// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Constructor {
    uint256 public myNumber;

    constructor() {
        myNumber = 100;
    }
}