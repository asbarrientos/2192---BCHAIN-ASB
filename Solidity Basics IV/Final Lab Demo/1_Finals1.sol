// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackExample {
    event FallbackReceived(address sender, uint amount);
    // Event to log payment received
    event PaymentReceived(address payer, uint256 amount);

    // Fallback function
    fallback() external payable {
        emit FallbackReceived(msg.sender, msg.value);
    }

    // Function to receive Ether
    receive() external payable {
        emit PaymentReceived(msg.sender, msg.value);
    }
}

//This Solidity code creates a contract called "FallbackExample" with a fallback function to manage Ether transfers without a specific function call.
//It also includes a receive function for explicit Ether reception. Events named "FallbackReceived" and "PaymentReceived" are emitted to record when Ether is received through the fallback or receive functions.
//The SPDX-License-Identifier indicates that the code is licensed under the MIT license.