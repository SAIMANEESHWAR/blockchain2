// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
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