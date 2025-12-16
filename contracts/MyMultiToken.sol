// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract MyMultiToken is ERC1155 {
    uint256 public constant GOLD = 1;
    uint256 public constant SILVER = 2;

    constructor() ERC1155("https://example.com/metadata/{id}.json") {
        _mint(msg.sender, GOLD, 1000, "");
        _mint(msg.sender, SILVER, 5000, "");
    }
}
// Talent.app verification update
