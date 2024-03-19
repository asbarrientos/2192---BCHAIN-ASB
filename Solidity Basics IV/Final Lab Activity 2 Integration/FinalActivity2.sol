// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract MyFinalsActivity2 {
    address payable public owner;
    uint256 public constant INITIAL_ETH_AMOUNT = 2 ether;
    uint256 public remainingEth;
    uint256 public immutable creationTime;

    event EtherReceived(address indexed from, uint256 amount);
    event EtherSent(address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    constructor() {
        owner = payable(msg.sender);
        creationTime = block.timestamp;
        remainingEth = INITIAL_ETH_AMOUNT;
    }

    receive() external payable {
        emit EtherReceived(msg.sender, msg.value);
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }

    function sendEther(address payable _recipient, uint256 _amount) public onlyOwner {
        require(_amount <= remainingEth, "Insufficient funds in the contract");
        _recipient.transfer(_amount);
        remainingEth -= _amount;
        emit EtherSent(_recipient, _amount);
    }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}


//This Solidity code defines a contract named "MyFinalsActivity2" with functionalities to handle Ether. 
//It includes features such as depositing Ether, checking contract balance, sending Ether to specific addresses by the owner, and self-destruct functionality. 
//The contract is licensed under the MIT license, as indicated by SPDX-License-Identifier at the top.