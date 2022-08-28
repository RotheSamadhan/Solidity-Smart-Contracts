// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.0;

contract ownable{
    address public owner;

    constructor(){
        require(msg.sender == owner);
    }

    modifier OnlyOwner(){
        require(msg.sender==owner,"He is not a Owner");
        _;
    }
    function SetNewOwner(address _NewOwner)public OnlyOwner {
        require(_NewOwner != address(0),"Invalid Address");
        owner=_NewOwner;
    }
}
