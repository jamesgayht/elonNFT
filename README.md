## How to use

npx hardhat compile
npx hardhat run scripts/run.js

## 1. Setting up the environment for our Elon NFT

npm init --yes
npm install --save-dev hardhat

### if hardhat has been properly, we should be able to create a JavaScript project

npx hardhat

- yes for all questions

#### install hardhat ether and hardhat waffle manually if the installaiton wizard does not prompt you

npm install --save-dev @nomicfoundation/hardhat-toolbox

#### install smart contracts library OpenZeppelin to help us develop, run and ship smart contracts

npm install @openzeppelin/contracts

### getting this error below

TypeError: hre.ethers.parseEther is not a function
at main (/media/sanju/Programming/Solidity Tutorial/hh-fcc/react-dapp/scripts/deploy.js:8:35)
at Object.<anonymous> (/media/sanju/Programming/Solidity Tutorial/hh-fcc/react-dapp/scripts/deploy.js:23:1)
at Module.\_compile (node:internal/modules/cjs/loader:1256:14)
at Object.Module.\_extensions..js (node:internal/modules/cjs/loader:1310:10)
at Module.load (node:internal/modules/cjs/loader:1119:32)
at Function.Module.\_load (node:internal/modules/cjs/loader:960:12)
at Function.executeUserEntryPoint [as runMain] (node:internal/modules/run_main:81:12)
at node:internal/main/run_main_module:23:47
error Command failed with exit code 1.

### solution for me was to add "ethers": "^6.8.0" into devDependencies in package.json, run "npm i" and it should be fine now

## 2. Create your Elon.sol file to log out a message once deployed

## 3. Update deploy.js file to deploy the ElonNFT smart contract

## 4. Write the minting script for your NFT using OpenZeppelin

### create a basic contract based on ERC721

https://docs.openzeppelin.com/contracts/4.x/erc721
https://docs.openzeppelin.com/contracts/4.x/api/token/erc721

## 5. Update the deployment script

### POTENTIAL ERRORS & NOTES
1. Counters is only runnable in "@openzeppelin/contracts": "v4.x", update accordingly - npm install @openzeppelin/contracts@v4.0
2. Ensure hardhat.config.js solidity version matches pragma solidity version in contract script

## 6. Set up NFT metadata with Pinata 
- upload an image file to Pinata and retrieve the public sharing link
- create the json file in constants with required metadata and add in your image link
- add the json file into pinata and update the solidity file - _setTokenURI(newItemId, "YOUR-JSON-FILE-LINK-FROM-PINATA");

## 7. Ensure that you have set up the testnet network on Alchemy and your metamask wallet 
- once done head over to this link https://chainlist.org/chain/80001
- connect your metamask wallet and add the test MATIC $$ to your wallet from https://mumbaifaucet.com/ 

## 8. get your private metamask key and 

