pragma solidity >=0.6.0 <0.9.0;

// Fix this bank ;) 

contract HelloWorld_Bank{
address public owner;
  	mapping (address => uint) private balances;
  
  	constructor () public payable {
    		owner = msg.sender; 
 	 }
    
//Setting Up authorization
    	function isOwner () public view returns(bool) {
        		return msg.sender == owner;
  	}

    	modifier onlyOwner() {
        		require(isOwner());
         		_;
  	}
  
  	function deposit () public payable {
        		require((balances[msg.sender] + msg.value) >= balances[msg.sender]);
        		balances[msg.sender] += msg.value;
    	}

    	function withdraw (uint withdrawAmount) public payable {
        	require (withdrawAmount <= balances[msg.sender]);
        
        	balances[msg.sender] -= withdrawAmount;
        	payable(msg.sender).transfer(withdrawAmount);
    	}
  
  
    	function withdrawAll() public onlyOwner {
        		payable(msg.sender).transfer(address(this).balance);
 	 }

	    function getBalance () public view returns (uint){
        		return balances[msg.sender];
    	}
}
