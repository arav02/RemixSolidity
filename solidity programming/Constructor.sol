// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract Constructor {
    address public owner;
    uint public x;

    constructor(uint _x){
        owner =msg.sender; //set the owner to the account that deployed the contract
        x=_x;
    }
 //unlike regular function that can be called multiple times, the constructor can be called only once when we deploy the contract;

}