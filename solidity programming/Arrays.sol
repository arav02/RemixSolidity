// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract Array{
    uint[] public nums=[1,2,3];//intialising dynamic array
    uint[3] public numsFixed=[1,2,3];//fixed array

  function insertItem() external{
      nums.push(4);//[1,2,3,4] 
      uint x = nums[1];
      nums[3]=5;//updating array element [1,2,3,5]
      delete nums[1];//[1,0,3,5]-->deleting an element from the array
      //remember: while deleting the elemt at the specified index will only get changed to default value that is zero.
      //in short ==> LENGTH OF THE ARRAY remains same
     
      nums.pop();//remove the last elemnt ->[1,0,3]
      uint len= nums.length;//3

      //create array in mmemory
      uint[] memory a =new uint[](5);
      //remember an array in memmory has to be fixed size.
      //operations like push and pop not available for arraya created using memmory
      a[1]=8;//but we will be able to update

}

 function returnArray() external view returns (uint[] memory ){
       return nums;
     }
     //uint[] teels solidity to copy state variable nums to memory and return it.
     //it is not recommended to return array from funtionbcz it may end up using all the gas


    
}