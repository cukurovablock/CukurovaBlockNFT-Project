// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.0/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts@5.0.0/access/Ownable.sol";

contract CukurovaBlockToken is ERC721, ERC721Burnable, Ownable {
    uint256 public constant maxTokenPerWallet = 20;

    constructor(address initialOwner)
        ERC721("CukurovaBlockToken", "CBT")
        Ownable(initialOwner)
    {}

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        require(balanceOf(to) < maxTokenPerWallet, "Sahip olunabilecek token sinirina ulasildi.");
        _safeMint(to, tokenId);
    }

    function transfer(address to, uint256 amount) public {
        require(
            balanceOf(to) < maxTokenPerWallet,
            "Alicinin cuzdaninda token sinirina ulasildi."
        );
        safeTransferFrom(msg.sender, to, amount);
    }
}
