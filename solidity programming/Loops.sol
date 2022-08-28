// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract ForAndWhileLoops{
 
 function loops() external pure returns (uint){
     
     //for loop
     for(uint i=0;i<10;i++){
         if(i==3) {
             continue;
         }//more code
         if(i==5){
             break;
         }
     }
    //while loop
      uint j = 0;
      uint sum = 0;
      while(j<10){
          j++;
          sum +=1;
      }
    return sum;
 }
}