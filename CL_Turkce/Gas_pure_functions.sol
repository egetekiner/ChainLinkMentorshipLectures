pragma solidity ^0.8.14;


contract PureFunctionTest {

   uint state;

// In this type of case, there won't be any transaction initiated because this will be like just 
// querying the blockchain for its current state and nothing will be changed.

    function addNumbers(uint a, uint b) public pure returns (uint) {
       return a +b ;
   }

// Gas cost for a transaction depends on the number of EVM opcodes executed while completing it, 
// so executing that pure function is also within that set of opcodes. That's why it's said that it costs gas.
   function updateState(uint a, uint b) public {
       
     uint c = addNumbers(a,b);
     state = c;
   }

   function addThreeNumbers(uint a, uint b, uint c) public pure returns (uint) {
       
       uint temp = addNumbers(a,b);
       uint num  = addNumbers(temp,c);
       return num;
   }
}

//They do cost gas if they're part of a transaction that needs to be mined. Gas compensates the network for running your code. 
//It doesn't matter that this particular function doesn't update state; it still takes resources to execute, so it costs gas.
