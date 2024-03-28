// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.4;

contract Har_Token {
   
  // public variables are listed here (No private variables)
    string public tokenName = "Harshit";
    string public tokenAbbry = "HAR";
    uint public totalSupply = 0;
    
 // mapping variable to the address
    mapping(address => uint) public balances;

 // burn function starts from here
    function burn (address _address, uint _value) public {
       if (balances[_address] >= _value) {
          totalSupply -= _value;
          balances[_address] -= _value;
       }
    }     

// mint function starts from here
    function mint (address _address, uint _value) public {
       totalSupply += _value;
       balances[_address] += _value;
    }
}
