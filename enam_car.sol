// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Car_showroom{

    enum Car_type{hatchback, coupe, sedan, suv, micro_suv}

    struct Details{
        uint id;
        Car_type Types;
    }

    mapping(uint => Details) mappingg;

    Car_type private Types;

    function Default_type(uint _id) public {
        Types = Car_type.coupe;

        mappingg[_id].id = _id;                 
        mappingg[_id].Types = Car_type.coupe;   
    }

    function Get_detail(uint _id) public view returns (uint, Car_type) {
        return (mappingg[_id].id, mappingg[_id].Types);
    }

    function Update_type(uint _id, uint _type) public {
        mappingg[_id].id = _id;                     
        mappingg[_id].Types = Car_type(_type);      
    }
}
