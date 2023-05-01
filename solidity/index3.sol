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
    uint[] q;
     uint[] selgoods;

    

    function push22(string[] memory pn,uint[] memory qu) public  {
        for(uint i=0;i<pn.length;i++){
            p.push(pn[i]);
            q.push(qu[i]);
        }

    }

    function get1() public view returns(string[] memory) {
        return p;
    }
 function get2() public view returns(uint[] memory) {
        return q;
    }

    //2nd interface vender
     function sel(uint[] memory selgs) public  {
        for(uint i=0;i<selgs.length;i++){
            selgoods.push(selgs[i]);
            
        }

    }
     function selget() public view returns(uint[] memory) {
        return selgoods;
    }

     
 }