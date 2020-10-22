/// SPDX-License-Identifier: MIT
/// @title Yearn Converter Interface

pragma solidity ^0.5.16;

interface Converter {
    function convert(address) external returns (uint256);
}
