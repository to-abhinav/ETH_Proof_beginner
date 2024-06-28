# Abhinav Token Smart Contract

This repository contains a basic Solidity smart contract for a token named "AbhinavKumar" with the symbol "Abby". The contract manages balances for various addresses and supports token minting and burning.

## Contract Information

- **Token Symbol**: Abby
- **Token Name**: AbhinavKumar
- **Total Supply**: Starts at 0

## Features

- **Minting Tokens**: Increases the total supply and credits tokens to a specified address.
- **Burning Tokens**: Decreases the total supply and debits tokens from a specified address if it has enough tokens.

## Functions

### Open Variables

- `string public tokenName`: The token's name.
- `string public tokenSymbol`: The token's symbol.
- `uint256 public totalSupply`: The token's total supply.

### Mapping

A mapping that maintains the balance for each address: `mapping(address => uint256) public balances`.

### Mint Function

The `mint` function creates and assigns tokens to a specified address. This increases both the recipient address's balance and the total token supply.

### Burn Function

The `burn` function destroys tokens from a given address. Checking if the holder has sufficient tokens to burn, this reduces both the total supply of tokens and the balance of the address.

## Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

## Author

Abhinav Kumar

## License

This project is licensed under the MIT License.
