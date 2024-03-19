// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract EtherWallet {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {}

    function withdraw(uint256 _amount) public {
        require(msg.sender == owner, "Only the owner can withdraw Ether.");
        require(_amount <= address(this).balance, "Insufficient balance.");
        owner.transfer(_amount);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

//This Solidity code defines a contract named "EtherWallet" for managing Ether.
//It features functionalities to receive Ether, withdraw a specified amount of Ether by the owner, and check the contract's current balance.
//The SPDX-License-Identifier at the top indicates that the code is licensed under the MIT license.