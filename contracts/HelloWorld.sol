// SPDX-License-Identifier: UNLICENSED
 
pragma solidity ^0.8.4;
 
contract HelloWorld {
    //events - we trigger event to change state(function call)
    //states - variables, nfts, tokens
    //functions - used to change the state of the variables
 
    event messagechanged(string oldmsg, string newmsg);
 
    string public message;
 
    constructor(string memory firstmessage) {
        message = firstmessage;   
    }
 
    function update(string memory newmesssage) public {
        string memory oldmsg = message;
        message = newmesssage;
 
        emit messagechanged(oldmsg, newmesssage);
     }
}