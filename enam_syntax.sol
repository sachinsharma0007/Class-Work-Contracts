// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Order_status{

    enum Status{pending, shipped, delivered}

    Status public currentStatus;

    function set_shipped() public {
        currentStatus = Status.shipped;
    }
}
