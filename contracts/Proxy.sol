// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Proxy Contract which will interact with Partner contract
contract Proxy {
    // NOTE: storage layout must be the same as contract A

    address public sender;
    uint256 public value;

    address public Address;

    function setValues() public payable {
        sender = msg.sender;
        value = msg.value;

        Address = address(this);
    }
}
