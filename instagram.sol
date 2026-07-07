// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Like_Dislike {

    address public owner;

    constructor() {
        owner = msg.sender;
    }

    mapping(address => uint) private id;

     modifier onlyowner() {
        require(msg.sender == owner,"not owner");
        _;
    }

    uint public Like_count = 0;

    function Like() public {
        Like_count += 1;
    }

    function Dislike() public {
        require(Like_count > 0, "No likes");
        Like_count -= 1;
    }
}
