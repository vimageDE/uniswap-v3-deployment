// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    uint8 immutable _decimals;

    constructor(string memory name_, string memory symbol_, uint8 decimals_, uint256 mintAmount) ERC20(name_, symbol_) {
        _decimals = decimals_;
        _mint(msg.sender, mintAmount);
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }

    function decimals() public view override returns (uint8) {
        return _decimals;
    }
}
