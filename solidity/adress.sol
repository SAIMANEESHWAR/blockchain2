// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;

contract VendorContract {
    address payable public vendor1;
    address payable public vendor2;
    address payable public vendor3;

    constructor(address payable _vendor1, address payable _vendor2, address payable _vendor3) {
        vendor1 = _vendor1;
        vendor2 = _vendor2;
        vendor3 = _vendor3;
    }

    function buyFromVendor1() public payable {
        require(msg.sender == vendor1, "Only vendor1 can execute this function");
        // perform vendor1's transaction here
        vendor1.transfer(msg.value);
    }

    function buyFromVendor2() public payable {
        require(msg.sender == vendor2, "Only vendor2 can execute this function");
        // perform vendor2's transaction here
        vendor2.transfer(msg.value);
    }

    function buyFromVendor3() public payable {
        require(msg.sender == vendor3, "Only vendor3 can execute this function");
        // perform vendor3's transaction here
        vendor3.transfer(msg.value);
    }
}
