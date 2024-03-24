// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract ErrorHandling {
    string public process = "It is divisible by 10";

    function requireCheck(int _x) public view returns (string memory) {
        require((_x %10) == 0, "Number should be divisible by 10");
        return process;
    }

    function assertCheck(int _x) public view returns (string memory) {
        assert((_x %10) == 0);
        return process;
    }

    function revertCheck(int _x) public view returns (string memory) {
        if ((_x %10) != 0) {
            revert("Number should be divisible by 10");
        }
        return process;
    }
}