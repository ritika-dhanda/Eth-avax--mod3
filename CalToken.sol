// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CalToken {
    // Public variables here
    string public Token_name = "MyToken";
    string public Token_abb = "MTK";
    uint public Total_supply = 0;

    // Mapping variable here
    mapping(address => uint) public balance;

    // Mint function
    function mint(address add, uint value) public {
        require(add != address(0), "Cannot mint to zero address");
        require(value > 0, "Mint value must be greater than zero");

        Total_supply += value;
        balance[add] += value;

        // Check total supply integrity
        assert(Total_supply >= balance[add]);
    }

    // Burn function
    function burn(address add, uint value) public {
        require(add != address(0), "Cannot burn from zero address");
        require(value > 0, "Burn value must be greater than zero");
        require(balance[add] >= value, "Insufficient balance to burn");

        Total_supply -= value;
        balance[add] -= value;
    }
}
