# Eth-avax--mod3
Eth-avax intermediate Module 3
#Introduction
The code in this repository comprises a Solidity smart contract that implements an ERC-20 token. The contract includes essential functionalities like token minting, burning.

- Use the mint function to create the new tokens.
- Use the burn function to destroy a certain amount of tokens.


#Implementation
1.Clone the repository and install its dependencies:
2.npm install
3.Install the @remix-project/remixd dependency to connect Remix IDE:
4.npm install -g @remix-project/remixd
5.Run the following command in the terminal to connect Remix IDE to the Hardhat local host:
remixd -s ./ --remix-ide https://remix.ethereum.org
6.Open a new terminal and start Hardhat's testing network:
npx hardhat node
7.Open the Remix online IDE in your browser.
8.In the REMIX workspace, select "localhost" to connect to the local Hardhat network.
9.Select the file from the contracts directory "CalToken.sol".
10.Compile the contract in the Remix IDE.
11.In the deploy section of Remix, select the environment as "Dev-Hardhat Provider".
12.Deploy your contract on the local Hardhat network using the deploy button in Remix.
13.Confirm the deployment transaction in Remix.
14.Wait for the deployment transaction to be confirmed on the local Hardhat network.
Once the contract is deployed, you will see the contract address in the Remix console.
License
This project is licensed under the MIT License. See the LICENSE file for more information.
