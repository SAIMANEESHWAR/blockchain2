// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 
 contract data{
//      struct details{
//          string pname;
//          string quantity;
//      }
//      details[] public dete;
//     string[] p;
//     uint[] q;
//      uint[] selgoods;
//      string[] roup;
//      uint[] rouq;
//      uint[] rour;
//      uint[] vender2;
//      uint[] vender3;

    //  uint buyerstatus=0;
    //  uint venderstatus1=0;
    //  uint venderstatus2=0;
    //  uint venderstatus3=0;
    //  uint venderconform1=0;
    //  uint venderconform2=0;
    //  uint venderconform3=0;

  
uint count=0;
    struct sai{
        string[] pp;
        uint[] qq;
        uint id;
    }
     mapping(uint=>sai) mulreq;
function push(string[] memory pn,uint[] memory qu) public  {
    mulreq[count].pp=pn;
    mulreq[count].qq=qu;
    count++;
   }

function numreq()public view returns(uint){
    return (count);
}




function returpp(uint co) public view returns(string[] memory)  {
    return mulreq[co].pp;
}
    function returqq(uint co) public view returns(uint[] memory)  {
    return mulreq[co].qq;
}











    //1st vender
   uint[][] venarr1;
   uint[] reqnumber1;
   uint[] status1;
  
   
function vender1(uint[] memory selgs,uint co,uint s) public   {
        
        venarr1.push(selgs);
        reqnumber1.push(co);
        status1.push(s);
    
      
        }
   
     function selget1() public view returns(uint[][] memory,uint[] memory,uint[] memory) {

return (venarr1,status1,reqnumber1);
    }





    //vender-2
       uint[][] venarr2;
   uint[] reqnumber2;
   uint[] status2;
  
   
function vender2(uint[] memory selgs,uint co,uint s) public   {
        
        venarr2.push(selgs);
        reqnumber2.push(co);
        status2.push(s);
    
      
        }
   
     function selget2() public view returns(uint[][] memory,uint[] memory,uint[] memory) {

return (venarr2,status2,reqnumber2);
    }







 //vender-3

    uint[][] venarr3;
   uint[] reqnumber3;
   uint[] status3;
  
   
function vender3(uint[] memory selgs,uint co,uint s) public   {
        
        venarr3.push(selgs);
        reqnumber3.push(co);
        status3.push(s);
    
      
        }
   
     function selget3() public view returns(uint[][] memory,uint[] memory,uint[] memory) {

return (venarr3,status3,reqnumber3);
    }






    //  function buyerconform(){

}