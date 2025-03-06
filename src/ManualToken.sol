// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract ManualToken {
    mapping(address => uint) private s_balances;

    function name() public pure returns (string memory) {
        return "MyToken";
    }

    function symbol() public pure returns (string memory) {
        return "MTKN";
    }

    function decimals() public pure returns (uint8) {
        return 18;
    }

    function totalSupply() public pure returns (uint256) {
        return 10_000_000_000;
    }

    function balanceOf(address _owner) public view returns (uint256) {
        return s_balances[_owner];
    }

    function transfer(address _to, uint256 amount) public {
        uint256 previousBalances = balanceOf(msg.sender) + balanceOf(_to);
        s_balances[msg.sender] = s_balances[msg.sender] - amount;
        s_balances[_to] = s_balances[_to] + amount;
        require(balanceOf(msg.sender) + balanceOf(_to) == previousBalances); 
    }
}
