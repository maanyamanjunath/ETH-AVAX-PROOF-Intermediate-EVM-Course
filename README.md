# ErrorContract

This Solidity program demonstrates how to handle errors in smart contracts. It includes functions to check if a given number is positive and shows how to use require, revert, and assert statements for error handling.

## Description

The program serves as a demonstration of error handling techniques in Solidity, specifically focusing on ensuring certain conditions are met when dealing with numbers in smart contracts. 
The program is to check if a number is divisible by 10 

### Executing Program

you can use Remix, an online IDE. https://remix.ethereum.org/.

1. Once on website Remix, create a new file on the left-hand sidebar "+" icon. Save the file with a .sol extension (e.g., ErrorHandling.sol).
2. Copy and paste the following code into the file:

```solidity
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
```

3. To compile the code, navigate to the "Solidity Compiler" tab located in the left-hand sidebar. Set the "Compiler" option to "^0.8.7" and then proceed by clicking the "Compile ErrorHandling.sol" button.

4. Upon successful compilation, initiate deployment by accessing the "Deploy & Run Transactions" tab from the left-hand sidebar. Choose the "ErrorHandling" contract from the options available in the Deployed Contracts tab, followed by clicking the "Deploy" button.

5. After deployment, you can interact with the contract by calling its functions. Click on the "ErrorHandling" contract in the left-hand sidebar, and then click on any of its functions to interact with it.

## Authors

Geetha Manjunath 

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
