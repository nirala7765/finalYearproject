// SPDX-License-Identifier: MIT 
pragma solidity  ^0.8.20;

//bring openzepplin

import '@openzepplin/contracts/token/ERC721/ERC721.sol';
import '@openzepplin/contracts/token/ERC721/extensions/ERC721URIStorage.sol';
import '@openzepplin/contracts/utils/Counters.sol';


contract NFT is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokensIds;


    address contractAddress;


    constructor(address marketplaceAddress) ERC721('arajkrypto','ARAJ'){
        contractAddress = marketplaceAddress;

    }


      function mintToken(string memory tokenURI) public returns(uint) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        // set the token URI: id and url
        _setTokenURI(newItemId, tokenURI);
        // give the marketplace the approval to transact between users
        setApprovalForAll(contractAddress, true);
        // mint the token and set it for sale - return the id to do so 
        return newItemId;
    }

}












