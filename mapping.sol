// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {

   mapping(address => uint) public balances;

   function deposit(uint amount) public {
       balances[msg.sender] += amount;
   }

   function withdraw(uint amount) public {
       require(balances[msg.sender] >= amount, "Insufficient balance");
       balances[msg.sender] -= amount;
   }

   function getBalance(address user) public view returns(uint){
       return balances[user];
   }

}
