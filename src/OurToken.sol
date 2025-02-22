// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OurToken is ERC20 {
    // Constructor to initialize the token with a name, symbol, and initial supply
    constructor(uint256 intialSupply) ERC20("OurToken", "OTKN") {
        _mint(msg.sender, intialSupply); // Mint the initial supply of tokens to the deployer's address
    }
}
