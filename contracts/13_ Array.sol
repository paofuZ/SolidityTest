// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Array {
    // 初始化数组的集中方式
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];
    uint256[3] public arr3; // 默认是0

    function getArr3(uint256 index) public view returns (uint256) {
        return arr3[index];
    }

    // push
    function pushArr(uint256 i) public {
        // Append to array
        // This will increase the array length by 1.
        arr.push(i);
    }

    // pop 数组删除
    function popArr() public {
        // 数组最后一个会移除掉, pop 只能清楚最后一个
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function delArr(uint16 index) public {
        // 删除数组指定位置的元素, 不会改变数据长度，恢复默认值
        delete arr[index];
    }

    function examples() external pure returns (uint256[] memory) {
        // 创建一个内存数组、只能是固定长度
        uint256[] memory a = new uint256[](5);
        return a;
    }
}
