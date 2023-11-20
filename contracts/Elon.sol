// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

// Uncomment this line to use console.log
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

import "hardhat/console.sol";

// ERC721URIStorage contract provides functionality for storing and retrieving the URI of an NFT
contract ElonNFT is ERC721URIStorage {
    // Counters contract provides utility for generating unique sequential token IDs
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    // constructor function is called when contract is first deployed onto the ethereum network
    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        // increment the tokenID counter
        _tokenIds.increment();

        // retrieve the current value of the token ID counter
        uint256 newItemId = _tokenIds.current();

        // mint a new NFT and assign it to the tokenID
        _mint(msg.sender, newItemId);

        // set the URI to Hello World
        _setTokenURI(newItemId, "https://coral-defeated-mackerel-301.mypinata.cloud/ipfs/Qmc8ciGiYKTkPEVXEB6YCWTTyttXUt5aNV1Eyi3rPnXy3u?_gl=1*17k2fv8*_ga*MTkzMTg1OTczMy4xNzAwNDQ3NzYy*_ga_5RMPXG14TE*MTcwMDQ0Nzc2Mi4xLjEuMTcwMDQ0ODY4MS40Mi4wLjA.");

        // checks if the NFT has been minted and it's ID
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
