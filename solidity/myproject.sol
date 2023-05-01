// SPDX-License-Identifier: MIT
// Version of Solidity compiler this program was written for
pragma solidity ^0.8.0;
 contract data{
    //  struct alldiv{
    //     uint[] units;
    
    // }
    // mapping(uint=>alldiv) ulist;

    // function addunits(uint _divid,uint _ids) public{
    //     ulist[_divid].units.push(_ids);
    //}


    /**/


     struct venders{
         string[][] pname;
        uint[][] quantity;
        string[] ldate;
        uint orderno;
        /**/
        string[] status;
        uint[] statusacceptedby;
        uint [] statusno;
    }

    struct div{
        string[][] pnamed;
        uint[][] quantityd;
        string[] ldated;
        uint[] ven;
        uint[] ordernod;
        mapping(uint=> venders) allvenders;

    }
    mapping(uint=>div) mydiv;
    
  
    function unit(uint  _id,uint _venid,string[] memory _p,uint[] memory _q,string memory _l) public {
        mydiv[_id].allvenders[_venid].pname.push(_p);
        mydiv[_id].allvenders[_venid].quantity.push(_q);
        mydiv[_id].allvenders[_venid].ldate.push(_l);
        mydiv[_id].allvenders[_venid].orderno++;
    }
    /*giving uints products*/
    function showproducts(uint  _id,uint _venid) public view returns(string[][] memory,uint[][] memory,string[] memory) {
        return (
        mydiv[_id].allvenders[_venid].pname,
        mydiv[_id].allvenders[_venid].quantity,
        mydiv[_id].allvenders[_venid].ldate
        );
    }

     /*publishing*/
    function publish(uint  _id,uint _venid,uint _ordno,string[] memory _p,uint[] memory _q,string memory _l) public{
        mydiv[_id].pnamed.push(_p);
        mydiv[_id].quantityd.push(_q);
        mydiv[_id].ldated.push(_l);
        mydiv[_id].ven.push(_venid);
        mydiv[_id].ordernod.push(_ordno);

    }
    
    /*conforming*/
    function conforming(uint _id,uint _myvenid,string memory _status,uint _venid,uint _ord) public{
        mydiv[_id].allvenders[_venid].status.push(_status);
        mydiv[_id].allvenders[_venid].statusno.push(_ord);
        mydiv[_id].allvenders[_venid].statusacceptedby.push(_myvenid);
        
    }


    /*published*/
    function published(uint  _id,uint _venid) public view returns(uint[] memory,uint[] memory,uint){
       return ( mydiv[_id].ven,mydiv[_id].ordernod,_venid);

    }
    function published2(uint  _id,uint _venid)public view returns(string[] memory,uint[] memory,uint[] memory){
       return (mydiv[_id].allvenders[_venid].status,
                mydiv[_id].allvenders[_venid].statusno,
                mydiv[_id].allvenders[_venid].statusacceptedby); 
    }
    /*giving unit orderno*/
    function unitorderno(uint _id,uint _venid) public view returns(uint){
        return mydiv[_id].allvenders[_venid].orderno;
    }


}