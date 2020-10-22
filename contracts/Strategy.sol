/// SPDX-License-Identifier: MIT
/// @title Yearn Strategy Interface

pragma solidity ^0.5.16;

interface Strategy {
    function want() external view returns (address);

    function deposit() external;

    // NOTE: must exclude any tokens used in the yield
    /// @dev Controller role - withdraw should return to Controller
    function withdraw(address) external;

    /// @dev  Controller | Vault role - withdraw should always return to Vault
    function withdraw(uint256) external;

    /// @dev Controller | Vault role - withdraw should always return to Vault
    function withdrawAll() external returns (uint256);

    function balanceOf() external view returns (uint256);
}
