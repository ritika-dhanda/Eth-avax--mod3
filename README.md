# Create and Mint Tokens

Write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix.

## ETH+AVAX Module 3

In this assesment ,we  have to write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix .An ERC20 token is a standard used for creating and issuing smart contracts on the Ethereum blockchain. It defines a common list of rules that all Ethereum tokens must follow, ensuring interoperability between different tokens and platforms.

## Getting Started

## Prerequisites

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [MetaMask](https://metamask.io/) (for interacting with the token)
- [HardHat](https://hardhat.org/) (for deploying with HardHat)
- [Remix IDE](https://remix.ethereum.org/) (for deploying with Remix)

## Project Setup

1. **Clone the Repository**

   ```bash
   git clone https://github.com/your-username/erc20-token-project.git
   cd erc20-token-project
   ```

2. **Install Dependencies**

   ```bash
   npm install
   ```

## Smart Contract Code

The ERC20 token contract is located in the `contracts/` directory. Below is the code for `CalToken.sol`:

/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {
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



## Deployment with Remix

1. **Open Remix IDE**

   Go to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**

   Create a new file named `CalToken.sol` and paste the smart contract code.

3. **Compile the Contract**

   Use the Solidity compiler to compile the contract.

4. **Deploy the Contract**

   Go to the "Deploy & Run Transactions" tab. Select the `CalToken` contract and provide the initial supply as a constructor argument. Click "Deploy".

## Interacting with the Token

You can interact with your deployed token contract using:

- **Web3 Libraries**: Use libraries like Web3.js or Ethers.js in your web application.
- **MetaMask**: Add your token using the contract address.

## Contributing

Feel free to submit issues, suggestions, or pull requests. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
