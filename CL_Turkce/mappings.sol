pragma solidity ^0.6.0;

contract CL_Mapping_Contract {
    // Mappings
    mapping(uint => string) public names; //isimleri 1. isim, 2. isim 3. isim gibi saklayaabiliriz
    mapping(uint => Book) public books; 
    mapping(address => mapping(uint => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public { //The constructor is executed one time when the contract is first created and does not run again
        names[1] = "Ege";
        names[2] = "Elif";
        names[3] = "Ahmet";
        names[37] = "Doga";
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }
    
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
