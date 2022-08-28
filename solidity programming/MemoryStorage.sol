// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract THeContract{
    
    string fname="Aravind";
    //in state variable for string type not using memory/storage

  function Memory() public view returns(string memory,string memory){
      string memory lname="Rajesh";
    return (fname,lname);
  }
}