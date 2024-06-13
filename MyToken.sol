// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // Public variables to store the token details
    string public tokenName = "AbhinavKumar";
    string public tokenAbbrv = "abby";
    uint public totalSupply = 1000;

    // Mapping to store balances of addresses
    mapping(address => uint) public balances;

    // Function to mint new tokens
    function mint(address _recipient, uint _amount) public {
        totalSupply += _amount;
        balances[_recipient] += _amount;
    }

    // Function to burn tokens
    function burn(address _account, uint _amount) public {
        require(balances[_account] >= _amount, "Insufficient balance to burn");
        totalSupply -= _amount;
        balances[_account] -= _amount;
    }
}
