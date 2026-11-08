# Creator Rewards dApp - Blockchain Technology for Business

**Network:** Sepolia Testnet  
**Contract Address: `0x5c3c045D8dc97fD484a4f2D115568DEE1efd3404`  

## Project Overview
This project is a mini decentralized application (dApp) that acts as a digital reward tracker for short-form video creators. It includes a Solidity smart contract with read and write functions, and a simple web-based frontend using HTML, CSS, and JavaScript to interact with the blockchain.

## Repository Structure
*   `SmartContract.sol`: The Solidity contract defining the logic for issuing and redeeming creator points.
*   `index.html`: The frontend UI containing headings, paragraphs, lists, buttons, and scripts to connect with the smart contract via `ethers.js`.
*   `style.css`: External stylesheet for basic UI styling.
*   `screenshots/`: A directory containing three required screenshots demonstrating the contract deployment on Remix and the MetaMask UI interaction.
*   `README.md`: Project documentation and setup instructions.

## Setup & Interaction Instructions
To test this dApp locally, please follow these steps to connect and execute transactions:

1.  **Prerequisites:** Ensure you have the MetaMask browser extension installed and configured to use the Sepolia testnet. You will need a small amount of Sepolia ETH to cover transaction gas fees.
2.  **Launch the UI:** Open `index.html` using a local web server (such as the VS Code Live Server extension) to prevent browser security blocks on local files.
3.  **Connect Wallet:** Click the **Connect MetaMask** button on the page. Approve the connection prompt in your MetaMask extension to link your wallet to the frontend.
4.  **Read/Write Data:** 
    *   The platform owner can deploy the contract and issue points via Remix IDE.
    *   Use the **Refresh Balance** button to execute a read function and view your current points.
    *   Enter an amount in the input field and click **Redeem** to execute a write function, which will prompt MetaMask for transaction approval.