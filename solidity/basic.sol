// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract Get{
    string public hello="hello world";
    string public myName;
    function set(string memory _myName)public {
        myName=_myName;
    }
    function getMyName()public view returns(string memory){
        return myName;
    }
}