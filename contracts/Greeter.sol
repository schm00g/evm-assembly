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

    function addition(uint x, uint y) public pure returns (uint) {
        assembly {
            /*     
                Create a new variable `result`
                -> calculate the sum of `x + y` with the `add` opcode
                -> assign the value to `result`
            */
            let result := add(x, y)   
            /*  
                x + y        
                Use the `mstore` opcode, to:
                -> store `result` in memory
                -> at memory address 0x0
            */
            mstore(0x0, result)       
            /*
                store result in memory
                return 32 bytes from memory address 0x0
            */
            return(0x0, 32)          
        }
    }

    function switch_in_assembly(uint x, uint y) public pure returns (uint) {
        assembly {
            let x := 34
                    
            switch lt(x, 30)
            case true {
                // do something
            }
            case false {
                // do something els
            }
            default {
                // this is not allowed
            }
        } 
    }

    function for_loop_solidity(uint n, uint value) public pure returns(uint) {     
        for ( uint i = 0; i < n; i++ ) {
            value = 2 * value;
        }    
        return value;
    }

    function greet() public view returns (string memory) {
        return greeting;
    }

    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s'", greeting, _greeting);
        greeting = _greeting;
    }
}
