// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract MyNFT is ERC721URIStorage, Ownable {
    uint256 public nextTokenId = 1;
    constructor() ERC721("My NFT", "MNFT") {}
    function mint(string memory tokenURI_) external {
        _safeMint(msg.sender, nextTokenId);
        _setTokenURI(nextTokenId, tokenURI_);
        nextTokenId++;
    }
}