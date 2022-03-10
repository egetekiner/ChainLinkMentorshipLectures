pragma solidity >=0.6.0 <0.9.0;

contract store_a_number{

    //this will store initialized to 0
    uint256 public CLNumber;

    struct Students{
        uint256 CLNumber;
        string name;
        //bool choosebool;
    }

    //Students public Ege = Students({CLNumber: 2, name: "Ege Tekiner", choosebool: true});
    //Students public Ece = Students({CLNumber: 4, name: "Ece Tosun",choosebool: false});
    

    Students[] public Ege;  //it is an dynamic array
    //Students[5] public Ege;  //it is a static array


    //Students[1] public Ege = Students({CLNumber: 2, name: "Ege Tekiner"});

    //Students[] public Ege;  //it is an dynamic array


    function add_student(string memory _name, uint256 _CLNumber) public{
        Ege.push(Students({name: _name, CLNumber: _CLNumber}));

    }
}
