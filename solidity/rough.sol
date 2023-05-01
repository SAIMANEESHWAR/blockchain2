// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 
 contract data{


    //buyer order
     string[][] buyerproducts;
    uint[][] buyerquantity;
    uint orderp=0;
    uint orderq=0;
    
    function push(string[] memory pn,uint[] memory qu) public  {
        for(uint i=0;i<pn.length;i++){
            buyerproducts[orderp].push(pn[i]);
            buyerquantity[orderq].push(qu[i]);
            
           
           

        }
         orderp++;
        orderq++;


    }
    function get1() public view returns(string[][] memory) {
        return buyerproducts ;
    }
    function get2() public view returns(uint[][] memory) {
        return buyerquantity;
    }


    //1st vender
    uint[][] tprice;
     function vender1(uint[] memory selgs,uint s) public   {
        
        tprice[s]=selgs;

    }
   
     function selget() public view returns(uint[][] memory) {
        return tprice;
    }






//     //main arrays
//      function getmain1() public view returns(string[] memory) {
//         return p;
//     }
//  function getmain2() public view returns(uint[] memory) {
//         return q;
//     }
//     function getmain3() public view returns(uint[] memory) {
//         return selgoods;
//     }




    //vender-2

   uint[][] tprice2;
     function vender2(uint[] memory selgs,uint s) public   {
        
        tprice2[s]=selgs;

    }
   
     function selget2() public view returns(uint[][] memory) {
        return tprice2;
    }  


 //vender-3

    uint[][] tprice3;
     function vender3(uint[] memory selgs,uint s) public   {
        
        tprice3[s]=selgs;

    }
   
     function selget3() public view returns(uint[][] memory) {
        return tprice3;
    }
     
 }