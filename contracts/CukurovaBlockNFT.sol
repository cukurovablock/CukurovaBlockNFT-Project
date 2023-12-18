// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CukurovaBlockNFT is ERC721, ERC721Burnable, Ownable {
    uint256 private _nextTokenId;
    uint256 public constant maxTokenPerWallet = 20;


    constructor()
        ERC721("CukurovaBlockNFT", "CUBLOCK")
        Ownable(msg.sender)
    {}

    function _baseURI() internal pure override returns (string memory) {
        return "ipfs://bafybeiczsscdsbs7ffqz55asqdf3smv6klcw3gofszvwlyarci47bgf354/";
    }

    function safeMint(address to) public onlyOwner {
        require(balanceOf(to) < maxTokenPerWallet, "Sahip olunabilecek token sinirina ulasildi.");
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }

    function transfer(address to, uint256 amount) public {
        require(
            balanceOf(to) < maxTokenPerWallet,
            "Alicinin cuzdaninda token sinirina ulasildi."
        );
        transferFrom(msg.sender, to, amount);
    }
}
