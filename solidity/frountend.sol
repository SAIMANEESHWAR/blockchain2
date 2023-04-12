// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 
contract sai{
    uint256 bal;
    constructor() {
        bal=1;

    }
    function getBalance() public view returns(uint) {
        return bal;
    }
    function addamount(uint amount) public {
        bal=bal+amount;
    }
    function withdraw(uint amount) public{
        bal=bal-amount;
    }
} 