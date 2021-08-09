// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Main Contract which will interact with Proxy contract
contract Main {
    address public sender;
    uint256 public value;
    address public Address;

    function setValues(address _contract) public payable {
        // A's storage is set, B is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setValues()")
        );
    }
}
