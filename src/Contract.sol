// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/base/ERC20Base.sol";

contract Contract is ERC20Base {
    constructor(string memory _name, string memory _symbol)
        ERC20Base(_name, _symbol)
    {}

    fallback() external payable {}

    receive() external payable {}

    function mintWithWei() public payable {
        // only minter can mint
        // mintTo(msg.sender, msg.value);

        _mint(msg.sender, msg.value);
    }
}
