// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    uint8 private _decimals;

    constructor(string memory name, string memory symbol, uint8 decimal) ERC20(name, symbol) {
        _decimals = decimal;
    }

    function mint(address target, uint256 amount) external {
        _mint(target, amount);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
