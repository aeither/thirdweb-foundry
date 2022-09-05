// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@thirdweb-dev/contracts/token/TokenERC20.sol";

contract Contract is TokenERC20 {
    constructor() {}

    fallback() external payable {}

    receive() external payable {}

    function mintWithWei() public payable {
        // only minter can mint
        // mintTo(msg.sender, msg.value);

        _mint(msg.sender, msg.value);
    }
}
