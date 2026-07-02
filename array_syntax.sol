// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NumberArray {

uint[] public numbers;

function addNumber(uint num) public {
    numbers.push(num);
}

function removeLast() public {
    numbers.pop();
}

function getLength() public view returns(uint){

return numbers.length;
}
}
