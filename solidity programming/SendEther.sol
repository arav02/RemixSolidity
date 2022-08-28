// SPDX-License-Identifier: MIT  

pragma solidity ^0.8.7;

import "hardhat/console.sol";

contract Mycontract{

     
    address payable leela = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);
    address payable ram = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);
  //if u want to send ether to EOA then u have to make it payable

constructor(){
    owner=payable(msg.sender);
}
   
   uint leelaMoney=0;
   uint ramMoney=0;

    function addMoney() public payable{}
    
    function viewContractBalance() public view returns(uint){
       return address(this).balance;
    }

    function viewLeelaBalance() public view returns(uint){
       return leela.balance;
    }
    function viewRamBalance() public view returns(uint){
       return ram.balance;
    }
//  call vs transfer vs send
function sendMoneyToLeela() public payable{
    require(leelaMoney <= 4,"Money withdraw exceeded");
    leelaMoney++;
    leela.transfer(1 ether);
}
//if u want to do any sort of money transaction u should make the function payable
//"send" and "transfer" are only available for objects of type "address payable", not "address"
function sendMoneyToRam() public payable{
    require(ramMoney <=4,"Money withdraw exceeded");
    ramMoney++;
    ram.transfer(1 ether);
}


// trasnfer balance amount to owner account;
function transferFunds() public payable{
    owner.transfer(address(this).balance);
//we should make it owner only function otherwise someone else will break the purpose of the contract

}
}

