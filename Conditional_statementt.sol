// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract statements {
    function check (uint num) public pure returns (string memory) {

        if (num > 10) {
            return "num is greater than ten";
        
        }
        return " num is 10 or smaller";
    }
}
