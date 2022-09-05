// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import {Contract} from "src/Contract.sol";

contract ContractTest is Test {
    Contract myContract;

    function setUp() public {
        myContract = new Contract("Token", "TKN");
    }

    function testExample() public {
        myContract.mintWithWei{value: 1 wei}();
        assertEq(myContract.balanceOf(address(this)), 1 wei);
    }
}
