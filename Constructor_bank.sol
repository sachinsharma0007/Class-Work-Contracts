// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Bank_system {

    address public owner;

    constructor() {
        owner = msg.sender;
    }
    
    struct bank {
        string name;
        uint add_cash;
        uint withdraw_cash;
    }

    mapping(address => bank) public banks;

    modifier onlyowner () {
        require(msg.sender == owner, "not allowed");
        _;
    }

    function setdetails(
        address user_addres,
        string memory name,
        uint add_cash,
        uint withdraw_cash
    ) public onlyowner {

        banks[user_addres] = bank(name, add_cash, withdraw_cash);
    }
}
