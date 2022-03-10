//SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Program {

    string public message;
    string public tag = "Hello ";
    
    constructor(string memory helloMessage) {
        message = helloMessage;
    }

    function createMessage(string memory newMessage) public {
        message = newMessage;
    }

    function viewMessage() public view returns (string memory) {
        return string(abi.encodePacked(tag, message));
    }
}