// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {Script, console} from "lib/forge-std/src/Script.sol";
import {OurToken} from "../src/OurToken.sol";

contract DeployOurToken is Script {
    function run(address deployer) public returns (OurToken) {
        vm.startBroadcast(deployer); 
        OurToken ourToken = new OurToken(1000 ether); 
        vm.stopBroadcast();
        return ourToken;
    }
}
