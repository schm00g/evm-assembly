//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor(string memory _greeting) {
        console.log("Deploying a Greeter with greeting:", _greeting);
        greeting = _greeting;

        int x;
        int y;

        // code inside assembly block is referred to as Yul
        // blocks do not share a namespace
        assembly {
            // Add some code here
            let result := add(x, y)
            mstore(0x0, result)
            return(0x0, 32)
        }
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
