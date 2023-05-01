// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 
 contract data{

uint count=0;
    struct sai{
        string[] pp;
        uint[] qq;
    }
     mapping(uint=>sai) mulreq;
function push(string[] memory pn,uint[] memory qu) public  {
    mulreq[count].pp=pn;
    mulreq[count].qq=qu;
    count++;
   }

function numreq()public view returns(uint){
    return (count-1);
}



    function returpp(uint co) public view returns(string[] memory)  {
    return mulreq[co].pp;
   

    }
    function returqq(uint co) public view returns(uint[] memory)  {
    return mulreq[co].qq;
   

    }





        //signup vender
    string ep;
    string[] allvenders;
 
    uint[]   allvendersid;
    uint id=1000;
     uint conform=0;
     uint k=1;
     uint onlystart=0;
     function onlyatstart() public {
         if(onlystart==0){
             allvenders.push("...");
                allvendersid.push(0);
        
         }
         onlystart=1;
    }

    function vendersignup(string memory e,string memory p) public  {
      
        ep =string(abi.encodePacked(e, p));
         for(uint i=0;i<k;i++){
            if( keccak256(abi.encodePacked(ep)) != keccak256(abi.encodePacked(allvenders[i]))){
                
                conform=1;
                
            }
            
        }
        if(conform==1){
            allvenders.push(ep);
                allvendersid.push(id);
               k++;
        }
       
        
    }



    function getid() public view   returns(uint){
        if(conform==1){
            
            return id;
        }
        else{
            return 0;
        }
        
    }

function reset() public  {
        
        conform=0;
    }
//



    //login vender
    uint conform2=0;
    function venderlogin(string memory e,string memory p) public  {
       
        ep =string(abi.encodePacked(e, p));
         for(uint i=0;i<k;i++){
            if( keccak256(abi.encodePacked(ep)) == keccak256(abi.encodePacked(allvenders[i]))){
                
                conform2=1;
                
            }
            
        }
        
    }


    function getloginconform() public view returns(uint){
        if(conform2==1){
            
            return 1;

        }
        else{
            return 0;
        }
    }
function reset2() public{
        conform2=0;
    }

//




//totalprice for  all vender
struct ven{
        uint[] reuestnumber;
        string[] vendertotalprice;
        uint[] statu;
        
    }
    mapping(uint=>ven) venders;
// uint[][] accepted;
// uint accnum=0;

 function allventotalp(uint vid,string memory tp,uint numorder,uint s) public   {
        venders[vid].reuestnumber.push(numorder);
        venders[vid].vendertotalprice.push(tp);
        venders[vid].statu.push(s);
        // if(s==1){
        // accepted[numorder][accnum]=vid;
        // accnum++;
        // }

        } 


//totalprice details from vender to buyer

 function allventotal(uint vid) public view returns(string[] memory,uint[] memory,uint[] memory) {
        
        return (venders[vid].vendertotalprice,venders[vid].reuestnumber,venders[vid].statu);
        }    






   
     
 }