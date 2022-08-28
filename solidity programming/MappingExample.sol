// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract Mycontract{

     address payable owner;
    
//creating a mapping from address to uint
 address addr = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
 mapping(address => uint) public mp;
 mapping(address =>bool) public whitelist;
 
 uint timeToWithdraw =10 seconds;
 mapping(address =>uint) public timestamp;

constructor(){
    owner=payable(msg.sender);
}

    function addMoney() public payable{}
    
    function viewContractBalance() public view returns(uint){
       return address(this).balance;
    }
  
  //create a function that will return the balance of msg.sender;
  function getBalance() public view returns(uint){
      return msg.sender.balance;
  }
 //create a function to transfer 1 ether to msg.sender
 function transferMoneyTosender() public payable{

    require(mp[msg.sender] <= 4,"enough boi");
    require(whitelist[msg.sender]==true,"Not authorized");
    require(block.timestamp - timestamp[msg.sender] >=10,"Hey boy, calmdown" );
    mp[msg.sender]+=1;  
    timestamp[msg.sender]=block.timestamp;
    payable(msg.sender).transfer(1 ether);
 }
//function to whitelist
  function whitelistfunction(address accountToBeWhitelstedByTheOwner) public{
      require(msg.sender==owner,"Not authorised");
      whitelist[accountToBeWhitelstedByTheOwner]=true;
      timestamp[accountToBeWhitelstedByTheOwner]=block.timestamp;  
  }


// trasnfer balance amount to owner account;
function transferFunds() public payable{
   require(owner==msg.sender,"Not authorized");
    owner.transfer(address(this).balance);
//we should make it owner only function otherwise someone else will break the purpose of the contract

}
}
