// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;
contract simpleStorage{

    //types in solidity boolean, uint, int, address, bytes

    // bool hasFavotiteNumber =true;
    // int favoriteNumberInInt =-123;
    // string favoriteNumberInText = "two";
    // address myAccount= 0x3F963Ba9B8d194b22FA39Ba20c626D9f56Fa86Ee;
    // bytes32 favoriteNumberInByte= "cat";

    // public, private, external, internal
    uint256 public favoriteNumber;   
    // uint256[] public favoriteNumber;   

    // people public person= People({favoriteNumber: 2, name:"rutvik"});
     struct People {
        uint256 favoriteNumber;
        string name;
     } 
     
    //array
    People[] public people; 
    //maping
    mapping(string => uint256)public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public  {
        favoriteNumber = _favoriteNumber;   
    }
     function retrieve() public view returns(uint256){
        return favoriteNumber;
     }
     function addPerson(string memory _name, uint _favotrietNumber) public{
        people.push(People(_favotrietNumber, _name));
        nameToFavoriteNumber[_name] = _favotrietNumber;
     }
}
