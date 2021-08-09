// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface PartnerI {
    function buyCover(uint256) external;
}

// Main Contract which will interact with Proxy contract
contract Main {
    address public sender;
    uint256 public value;
    address public Address;

    function setValues(address _contract, address partner_) public payable {
        // A's storage is set, B is not modified.
        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("setValues(address)", partner_)
        );
    }

    function buyerI(address partner_, uint256 sample_) public payable {
        PartnerI(partner_).buyCover(sample_);
    }
}
