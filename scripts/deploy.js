// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// You can also run a script with `npx hardhat run <script>`. If you do that, Hardhat
// will compile your contracts, add the Hardhat Runtime Environment's members to the
// global scope, and execute the script.
const hre = require("hardhat");

async function main() {
  console.log("Deploying Contract... ");

  // new contract is deployed and stored in the variable
  const elon = await hre.ethers.deployContract("ElonNFT");

  // logs the address of the deployed contract to the console 
  console.log("Contract deployed to address: ", elon.target);

  // updated the deployment script for minting NFT in step 5
  console.log("Minting NFT...");

  // mint a new NFT 
  let txn = await elon.mintNFT();

  // waits until the transaction is mined and the NFT is minted 
  await txn.wait();
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
