# Eth-avax--mod3
Eth-avax intermediate Module 3
Introduction
The code in this repository comprises a Solidity smart contract that implements an ERC-20 token. The contract includes essential functionalities like token minting, burning.

- Use the mint function to create the new tokens.
- Use the burn function to destroy a certain amount of tokens.
Implementation
Clone the repository and install its dependencies:
git clone https://github.com/yashsharma8433/ETH-AVAX-MODULE-3.git

npm install
Install the @remix-project/remixd dependency to connect Remix IDE:
npm install -g @remix-project/remixd
Run the following command in the terminal to connect Remix IDE to the Hardhat local host:
remixd -s ./ --remix-ide https://remix.ethereum.org
Open a new terminal and start Hardhat's testing network:
npx hardhat node
Open the Remix online IDE in your browser.
In the REMIX workspace, select "localhost" to connect to the local Hardhat network.
Select the file from the contracts directory "Lock.sol".
Compile the contract in the Remix IDE.
In the deploy section of Remix, select the environment as "Dev-Hardhat Provider".
Deploy your contract on the local Hardhat network using the deploy button in Remix.
Confirm the deployment transaction in Remix.
Wait for the deployment transaction to be confirmed on the local Hardhat network.
Once the contract is deployed, you will see the contract address in the Remix console.
License
This project is licensed under the MIT License. See the LICENSE file for more information.
