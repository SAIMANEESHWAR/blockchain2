// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 contract data{


    //buyer order
    //  string[][] buyerproducts;
    // uint[][] buyerquantity;
    // uint orderp;
    // uint orderq;
    uint count=0;
    struct sai{
        string[] pp;
        uint[] qq;
    }
    // function push(string[] memory pn,uint[] memory qu) public  {
    //     for(uint i=0;i<pn.length;i++){
    //         buyerproducts[orderp].push(pn[i]);
    //         buyerquantity[orderq].push(qu[i]);
            
    //         orderp++;
    //         orderq++;


    //     }

    // }


     
    mapping(uint=>sai) mulreq;
function push(string[] memory pn,uint[] memory qu) public  {
    mulreq[count].pp=pn;
    mulreq[count].qq=qu;
   

    }
    function retur(uint co) public returns(string[] memory)  {
    return mulreq[co].pp;
   

    }
















    // function get1() public view returns(string[][] memory) {
    //     return buyerproducts ;
    // }
    // function get2() public view returns(uint[][] memory) {
    //     return buyerquantity;
    // }

    //order conform of buyer
    uint[][] buyerorderconform;





    //signup vender
    string ep;
    string[] allvenders;
    uint[]   allvendersid;
    uint id=1000;
    function vendersignup(string memory e,string memory p) public returns(uint,uint) {
       uint conform=0;
        ep =string(abi.encodePacked(e, p));
         for(uint i=0;i<allvenders.length;i++){
            if( keccak256(abi.encodePacked(ep)) != keccak256(abi.encodePacked(allvenders[i]))){
                allvenders.push(ep);
                allvendersid.push(id);
                id=id+16;
                conform=1;
                
            }
            
        }
        return (conform,id-16);
    }




    //login vender
    function venderlogin(string memory e,string memory p) public returns(uint) {
       uint conform=0;
        ep =string(abi.encodePacked(e, p));
         for(uint i=0;i<allvenders.length;i++){
            if( keccak256(abi.encodePacked(ep)) == keccak256(abi.encodePacked(allvenders[i]))){
                
                conform=1;
                
            }
            
        }
        return conform;
    }




//totalprice for  all vender
struct ven{
        uint[][] vendertotalprice;
        uint[] statu;
        
    }
    mapping(uint=>ven) venders;
uint[][] accepted;
uint accnum=0;

 function allventotalp(uint vid,uint[] memory tp,uint numorder,uint s) public   {
        venders[vid].vendertotalprice[numorder]=tp;
        venders[vid].statu[numorder]=s;
        if(s==1){
        accepted[numorder][accnum]=vid;
        accnum++;
        }

        } 


//totalprice details from vender to buyer

 function allventotal(uint vid) public view returns(uint[][] memory,uint[] memory) {
        
        return (venders[vid].vendertotalprice,venders[vid].statu);
        }    


//buyer acceptance

uint[][] buyeracceptedvender;
function buyvender(uint _id,uint numorder) public{



}









 }