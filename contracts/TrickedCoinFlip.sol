//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "./CoinFlip.sol";

contract TrickedCoinFlip {
    function trickFlip() external {
        bool guess = true;
        CoinFlip coinFlipContract = CoinFlip(
            0xfB01B8bA039605c2EFD98f1f49f0A58971210e5A
        );

        bool guessed = coinFlipContract.flip(guess);
        if (!guessed) {
            guess = false;
        }

        uint256 i = 0;
        for (i = 0; i < 10; i++) {
            coinFlipContract.flip(guess);
        }
    }
}
