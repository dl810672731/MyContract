// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import "@openzeppelin/contracts/proxy/utils/Initializable.sol";

contract BoxV2 is Initializable {
    uint256 public x;

    function initialize(uint256 _val) external initializer {
        x = _val;
    }

    function call() external {
        x = x + 2;
    }

    function showInvoke() external pure returns (bytes memory) {
        return abi.encodeWithSelector(this.initialize.selector, 1);
    }
}
