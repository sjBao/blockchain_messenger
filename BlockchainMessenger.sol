//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BlockchainMessenger {
  uint public changeCounter;

  string public message;

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function setMessage(string memory newMessage) public {
    if (msg.sender == owner) {
      message = newMessage;
      changeCounter++;
    }
  }
}
