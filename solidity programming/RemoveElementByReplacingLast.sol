// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract  ArrayReplaceLast{
    uint[] public arr;

    function remove(uint index) public {
       arr=[1,2,3,4];
       arr[index]=arr[arr.length-1];
       arr.pop();
    }

    function returnArray(uint _index) public view returns (uint[] memory){
        
        assert(arr[_index]==4);
        return arr;
    }
}