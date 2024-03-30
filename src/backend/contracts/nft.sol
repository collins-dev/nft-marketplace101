// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4; // version of solidity

import "@openzeppelin/contracts/token/ERC721/ERC721.sol"; // import ERC721
import "@openzeppelin/contracts/utils/Counters.sol"; // to count the number of tokens
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol"; // to store the token URI

contract NFT is ERC721URIStorage
{ 
    uint public tokenCount; // token count variable to keep track of the number of tokens
     constructor()ERC721("ZEE NFT", "DAPP"){} // constructor to initialize the contract with the name and symbol of the token

    function mint(string memory _tokenURI) external returns(uint){ // function to mint a new token and return the token id
        tokenCount++;// increment the token count by 1 for each new token
        _safeMint(msg.sender, tokenCount); // mint the token and assign it to the sender
        _setTokenURI(tokenCount, _tokenURI); // set the token URI for the token id 
        return tokenCount; // return the token id
    }
}