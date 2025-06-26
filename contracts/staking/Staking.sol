// SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

/**
 * @title Staking
 * @notice MVP - Staking scaffold for RealFraction platform token.
 * Stake RFT tokens to earn rewards. Production implementation will add:
 * - Reward distribution logic
 * - Lock periods
 * - Governance integration
 * - APY calculation
 */
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

contract Staking is Ownable {
    using SafeERC20 for IERC20;

    IERC20 public immutable stakingToken;

    mapping(address => uint256) public stakedBalance;
    uint256 public totalStaked;

    event Staked(address indexed user, uint256 amount);
    event Unstaked(address indexed user, uint256 amount);

    constructor(address _stakingToken) Ownable(msg.sender) {
        stakingToken = IERC20(_stakingToken);
    }

    /// @notice Stake tokens
    function stake(uint256 amount) external {
        require(amount > 0, "Amount must be > 0");
        stakingToken.safeTransferFrom(msg.sender, address(this), amount);
        stakedBalance[msg.sender] += amount;
        totalStaked += amount;
        emit Staked(msg.sender, amount);
    }

    /// @notice Unstake tokens
    function unstake(uint256 amount) external {
        require(amount > 0, "Amount must be > 0");
        require(stakedBalance[msg.sender] >= amount, "Insufficient staked balance");
        stakedBalance[msg.sender] -= amount;
        totalStaked -= amount;
        stakingToken.safeTransfer(msg.sender, amount);
        emit Unstaked(msg.sender, amount);
    }

    /// @notice View staked balance for a user
    function balanceOf(address account) external view returns (uint256) {
        return stakedBalance[account];
    }
}
