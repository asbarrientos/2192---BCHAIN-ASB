// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SelfDestruct {
    event Deposit (uint amount);
    event Withdraw(uint amount);
    address public owner = msg.sender;

    receive() external payable {
        emit Deposit(msg.value);
    }

    function withdraw() external {
        require(msg.sender == owner, "Not owner!");
        emit Withdraw(address(this).balance);
        selfdestruct(payable(msg.sender));
    }
}

contract SendEther {
    constructor() payable {}

    receive() external payable {}

    function sendViaTransfer(address payable _to) external payable { 
        _to.transfer(100); 
        }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(100);
        require(sent, "Sending failed.");
    }

    function sendViaCall(address payable _to) external payable { (bool success, ) = _to.call{value:100}(""); require(success, "Call failed.");
    }

    }

    contract ReceiveEther {
        event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}

//This Solidity code consists of three contracts. The "SelfDestruct" contract allows for depositing and withdrawing Ether, with a self-destruct feature controlled by the owner.
//The "SendEther" contract facilitates sending Ether using transfer, send, or call methods. The "ReceiveEther" contract logs incoming Ether and the remaining gas when it's received.
//The SPDX-License-Identifier indicates that the code is licensed under the MIT license.