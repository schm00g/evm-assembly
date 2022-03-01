# Using assembly in solidity

[Walkthrough](https://jeancvllr.medium.com/solidity-tutorial-all-about-assembly-5acdfefde05c)

## Why use assembly?

Gives fine grained control interacting with the EVM directly and opportunity to reduce gas costs.

### Project setup

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, a sample script that deploys that contract, and an example of a task implementation, which simply lists the available accounts.

Try running some of the following tasks:

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node
node scripts/sample-script.js
npx hardhat help
```
