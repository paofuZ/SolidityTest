// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Variables {
    // 三种变量
    // local、state、global

    // state变量，存放在 区块链上
    string public text = "123";
    uint public num = 123;

    function justFuc() public view returns (uint256, address) {
        // local的变量不会存放在区块链中
        // uint i = 123;
        // 全局变量、从区块链读取
        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
        return (timestamp, sender);
    }
}