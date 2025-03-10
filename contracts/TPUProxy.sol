// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
import "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

contract TPUProxy is TransparentUpgradeableProxy {

    
    constructor(
        address _logic, // 业务合约的地址
        address initialOwner,// 管理员的地址
        bytes memory _data
    ) payable TransparentUpgradeableProxy(_logic, initialOwner, _data) {}

    function proxAdmin() external view returns (address) {
        return _proxyAdmin();
    }

    function getImplements() external view returns (address) {

        return _implementation();
    }
}
