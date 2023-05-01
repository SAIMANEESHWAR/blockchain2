// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract bTs{
    address payable buyer;
    uint count=0;
    struct Items{
        string[] emails;
        string item;
        uint p;
    }
    struct Sellers{
        string order;
        string quote;
        uint n;
    }
    mapping(uint=>Items) B;
    mapping(string=>Sellers) tender;
    function addSeller(string memory email)public{
            tender[email].order="";
            tender[email].n=0;

    }
    function setItems(string[] memory _emails,string memory _item)public{
        B[count].emails=_emails;
        B[count].item=_item;
        B[count].p=count;
        count++;        
    }
    function getItems(string memory mail)public view returns(string memory,uint){
        string[] memory e=B[count-1].emails;
        uint i;uint j;
        for(i=0;i<e.length;i++){
            if( keccak256(abi.encodePacked(mail)) == keccak256(abi.encodePacked(e[i]))){
                j=1;
                break;
            }
        }
        if(j==0){
            return ("",0);
        }
        else{
            return (B[count-1].item,count-1);
            
        }

    }
    function setQuote(string memory _quote,string memory id,string memory _email)public{
        id=string.concat((id)," ");
        tender[_email].quote=string.concat(id,_quote);
    }
    function getQuote(uint id)public view returns(string[] memory){
        uint i;
        string[] memory str=B[id].emails;
        string[] memory q;
        for(i=0;i<str.length;i++){
            q[i]=(tender[str[i]].quote);
        }
        return q;
    }
    function getQuotes()public view returns(string[] memory){
        string[] memory arr;
        for(uint i=0;i<count;i++){
            arr[i]=B[i].item;
        }
        return arr;

    }
}