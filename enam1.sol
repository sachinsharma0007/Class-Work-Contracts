// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderSystem {

    enum Status {Pending, Packed, shipped, Delivered}

    struct Order{
        uint id;
        string product;
        Status status;
    }

    mapping(uint => Order) public orders;

    function createOrder(uint _id, string memory _product) public {
        orders[_id] = Order(_id, _product, Status.Pending);
    }

    function updateStatus(uint _id, uint _status) public {
        orders[_id].status = Status(_status);
    }

    // function getOrder(uint _id) public view returns (uint, string memory, Status){
    //     Order memory o = orders[_id];
    //     return (o.id, o.product, o.status);
    // }
}
