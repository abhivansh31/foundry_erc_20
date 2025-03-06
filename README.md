# Ethereum Token Development Toolkit

## Overview

This project is a toolkit for Ethereum application development, featuring a custom ERC20 token implementation and a testing framework using Foundry. The toolkit includes the following components:

- **OurToken**: A simple ERC20 token contract.
- **DeployOurToken**: A script for deploying the OurToken contract with an initial supply.
- **OurTokenTest**: A test suite for the OurToken contract, ensuring functionality and correctness.

## Components

### OurToken

The `OurToken` contract is an implementation of the ERC20 standard, allowing for the creation and management of fungible tokens. It includes features such as minting, transferring, and balance checking.

### DeployOurToken

The `DeployOurToken` script is used to deploy the `OurToken` contract to the Ethereum network. It allows you to specify the deployer's address and the initial supply of tokens.

### OurTokenTest

The `OurTokenTest` contract contains unit tests for the `OurToken` contract. It verifies the functionality of token transfers and allowances, ensuring that the contract behaves as expected.

