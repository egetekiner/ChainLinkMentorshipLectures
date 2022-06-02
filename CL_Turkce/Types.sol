pragma solidity >=0.6.0 <0.9.0;

contract store_a_number{

    //this will store initialized to 0
    uint256 CLNumber;

    function store(uint256 _CLNumber) public{
        CLNumber = _CLNumber;
        //uint256 test = 4;
    }

    // view

    function retrieve() public view returns(uint256){ //view is an read only function

        return CLNumber;
    }

    //pure
    function retrieve_1(uint256 CLNumber) public pure{ // returns the values only using the parameters passed to the function or local variables present in it

        CLNumber + CLNumber;

    }

    //pure
    function retrieve_2(uint256 CLNumber) public pure returns(uint256){

        //uint256 newnumber = CLNumber + CLNumber;

        return CLNumber + CLNumber;

    }



    //https://docs.soliditylang.org/en/v0.8.11/contracts.html
}
