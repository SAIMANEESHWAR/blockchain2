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
     string[] roup;
     uint[] rouq;
     uint[] rour;
     uint[] vender2;
     uint[] vender3;

    //  uint buyerstatus=0;
    //  uint venderstatus1=0;
    //  uint venderstatus2=0;
    //  uint venderstatus3=0;
    //  uint venderconform1=0;
    //  uint venderconform2=0;
    //  uint venderconform3=0;

    uint r=0; 

    function push(string[] memory pn,uint[] memory qu) public  {
        for(uint i=0;i<pn.length;i++){
            p.push(pn[i]);
            q.push(qu[i]);
            roup=pn;
            rouq=qu;
            

        }

    }
   function get1() public view returns(string[] memory) {
        return roup;
    }
 function get2() public view returns(uint[] memory) {
        return rouq;
    }





    //1st vender
     function vender1(uint[] memory selgs) public   {
        for(uint i=0;i<selgs.length;i++){
            selgoods.push(selgs[i]);
            rour=selgs;
        }
        

    }
   
     function selget() public view returns(uint[] memory) {
        return rour;
    }






    //main arrays
     function getmain1() public view returns(string[] memory) {
        return p;
    }
 function getmain2() public view returns(uint[] memory) {
        return q;
    }
    function getmain3() public view returns(uint[] memory) {
        return selgoods;
    }




    //vender-2

     function vender22(uint[] memory selgs2) public   {
        
            
            vender2=selgs2;
        
        

    }
   
     function vender2get() public view returns(uint[] memory) {
        return vender2;
    }



 //vender-3

     function vender33(uint[] memory selgs3) public   {
       
            
            vender3=selgs3;
       
        

    }
   
     function vender3get() public view returns(uint[] memory) {
        return vender3;
    }
     
 }