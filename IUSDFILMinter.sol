// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IUSDFILMinter {
    // FIL deposit related functions
    function depositFIL_safe() external payable;
    function getAllFILPendingDeposits() external view returns (
        address[] memory users, uint256[] memory amounts, uint256[] memory approxMintAmounts, uint256[] memory depositTimes, uint256[] memory blockNumbers
    );
    function refundAllFILTimeouts() external;

    // USDFIL deposit related functions
    function depositUSDFIL_safe(uint256 amount) external;
    function getAllUSDFILPendingDeposits() external view returns (
        address[] memory users, uint256[] memory amounts, uint256[] memory approxMintAmounts, uint256[] memory depositTimes, uint256[] memory blockNumbers
    );
    function refundAllUSDFILTimeouts() external;

    // RFIL deposit related functions
    function depositRFIL(uint256 amount) external;

    // management functions
    function getStateSnapshot() external view returns (
        uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256, uint256
    );
}