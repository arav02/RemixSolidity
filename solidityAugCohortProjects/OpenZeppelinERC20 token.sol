// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    constructor(uint256 initialSupply) ERC20("MyTokenname", "MyTokenSymbol") {
        _mint(msg.sender, initialSupply);
    }

   function decimals() public view virtual override returns (uint8) {
     return 8;
   }
}
