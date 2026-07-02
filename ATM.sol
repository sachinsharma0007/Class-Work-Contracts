// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./userbank.sol";

contract SBI_ATM{

    userbank bank;

    constructor (address bank_address){

     bank = userbank(bank_address); 
    }

    function add_cash (uint _amount) public{
        bank.deposit(_amount);
    }
    function withdraw_amount (uint amount) public{
        bank.withdraw_cash (amount);
    }
    function available_balance() public view returns (uint){
        return bank.get_balance();
    }
}
