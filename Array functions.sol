// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

 contract Addnumbers {

    uint []public numbers = [0,5,10,20,45450,854650];

    function addnumber (uint num) public {
        numbers.push(num);
    }

    function remove_number () public {
        numbers.pop();
    }

    function totallenght () public view returns (uint) {
        return numbers.length;
    }
    
    function get_allnumber () public view returns (uint [] memory) {
        return numbers ;
    }
 }
