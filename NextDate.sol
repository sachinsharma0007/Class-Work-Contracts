// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NextDate {

    function getNextDate(uint date) public pure returns (uint) {
        
        uint year = date / 10000;
        uint month = (date / 100) % 100;
        uint day = date % 100;

        // Days in month (simple version)
        uint[12] memory daysInMonth = [uint(31),28,31,30,31,30,31,31,30,31,30,31];

        day += 1;

        if((year%100==0 &&year%400==0) ||(year%100!=0 &&year%4==0)){
        daysInMonth[1] = 29;

       if(day > daysInMonth[month - 1]){
            day = 1;
            month += 1;
        }

        if(month > 12){
            month = 1;
            year += 1;
        }

        }

        else{

        if(day > daysInMonth[month - 1]){
            day = 1;
            month += 1;
        }

        if(month > 12){
            month = 1;
            year += 1;
        }
        }
        
        return (year * 10000) + (month * 100) + day;
    }
}
