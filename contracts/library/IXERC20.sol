// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IXERC20 is IERC20 {
    /**
     * @dev Moves `amount` tokens from the caller's account to `to` in `chainId`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a  event.
     */
    function xTransfer(
        uint8 chainId,
        address to,
        uint256 amount,
        uint256 gasLimit,
        uint256 gasPrice
    ) external returns (bool, bytes32);

    event XTransfer(uint8 chainId, address to, uint256 amount);
    event XReceive(address to, uint256 amount);
}
