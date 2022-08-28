// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract GlobalVariables{
    function globalVars() external view returns(address,uint,uint) {
        address sender= msg.sender; // msg.sender is a G.V that stores the address that call this function
        uint timestamp =block.timestamp;//block.timestamp stores the unix timestamp of when this function is called
        uint blockNum = block.number;//block.number stores the current block number
         return(sender, timestamp, blockNum);

    }
}