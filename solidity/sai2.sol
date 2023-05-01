// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 
 contract data{
     struct details{
         string pname;
         string quantity;
     }
     details[] public dete;
    string[] p;
    string[] q;

    

    function push(string memory pn,string memory qu) public  {
        dete.push(details(pn,qu));
        p.push(pn);
        q.push(qu);

    }

    function get1() external view returns(string[] memory) {
        return (p);
    }
 function get2() external view returns(string[] memory) {
        return (q);
    }

     
 }