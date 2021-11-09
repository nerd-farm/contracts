// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "./MasterChefJoeV2.sol";
import "./JoeToken.sol";

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5a58fd2de01ac4292510a9f0b30d52a9b4ef8ecd/contracts/token/ERC20/SafeERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5a58fd2de01ac4292510a9f0b30d52a9b4ef8ecd/contracts/utils/EnumerableSet.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5a58fd2de01ac4292510a9f0b30d52a9b4ef8ecd/contracts/utils/Address.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5a58fd2de01ac4292510a9f0b30d52a9b4ef8ecd/contracts/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5a58fd2de01ac4292510a9f0b30d52a9b4ef8ecd/contracts/access/Ownable.sol";


// MasterChefJoe is a boss. He says "go f your blocks lego boy, I'm gonna use timestamp instead".
// And to top it off, it takes no risks. Because the biggest risk is operator error.
// So we make it virtually impossible for the operator of this contract to cause a bug with people's harvests.
//
// Note that it's ownable and the owner wields tremendous power. The ownership
// will be transferred to a governance smart contract once JOE is sufficiently
// distributed and the community can show to govern itself.
//
// With thanks to the Lydia Finance team.
//
// Godspeed and may the 10x be with you.
contract NerdMasterChef is MasterChefJoeV2 {
    constructor(
        JoeToken _joe,
        address _devAddr,
        address _treasuryAddr,
        address _investorAddr,
        uint256 _joePerSec,
        uint256 _startTimestamp,
        uint256 _devPercent,
        uint256 _treasuryPercent,
        uint256 _investorPercent
    ) MasterChefJoeV2(
        _joe,
        _devAddr,
        _treasuryAddr,
        _investorAddr,
        _joePerSec,
        _startTimestamp,
        _devPercent,
        _treasuryPercent,
        _investorPercent
    ) public {}
}
