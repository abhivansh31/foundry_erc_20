// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test, console} from "lib/forge-std/src/Test.sol";
import {OurToken} from "../src/OurToken.sol";
import {DeployOurToken} from "../script/DeployOurToken.s.sol";

contract OurTokenTest is Test {
    OurToken private ourToken;
    DeployOurToken private deployOurToken;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");

    // Setup function to deploy the OurToken contract and transfer some tokens to Bob
    function setUp() external {
        deployOurToken = new DeployOurToken(); // Create a new instance of the DeployOurToken script
        ourToken = deployOurToken.run(address(this)); // Deploy the OurToken contract using the DeployOurToken script
        ourToken.transfer(bob, 10 ether);
    }

    function testTransfer() public view {
        assertEq(ourToken.balanceOf(bob), 10 ether);
    }

    // Test function to check the allowance and transferFrom functionality
    function testAllowance() public {
        vm.prank(bob);
        ourToken.approve(alice, 5 ether); // Bob approves Alice to spend 5 tokens on his behalf
        vm.prank(alice);
        ourToken.transferFrom(bob, alice, 5 ether); // Alice transfers 5 tokens from Bob to herself
        assertEq(ourToken.balanceOf(bob), 5 ether);
    }
}
