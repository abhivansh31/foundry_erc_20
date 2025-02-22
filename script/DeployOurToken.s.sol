// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script, console} from "lib/forge-std/src/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script {
    // Function to deploy the OurToken contract
    function run(address deployer) public returns (OurToken) {
        vm.startBroadcast(deployer); // Broadcasting transactions from the deployer's address
        OurToken ourToken = new OurToken(1000 ether); // Deploying the OurToken contract with a supply of 1000 tokens
        vm.stopBroadcast();
        return ourToken;
    }
}
