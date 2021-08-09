// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

interface IPartner {
    function buyCover(uint256) external;
}

// Proxy Contract which will interact with Partner contract
contract Proxy {
    // NOTE: storage layout must be the same as contract A

    address public sender;
    uint256 public value;

    address public Address;

    function setValues(address _contract) public payable {
        sender = msg.sender;
        value = msg.value;

        Address = address(this);

        (bool success, bytes memory data) = _contract.call(
            abi.encodeWithSignature("buyCover(uint256)", 5)
        );
    }

    function setValues3(address _contract) public payable {
        sender = msg.sender;
        value = msg.value;

        Address = address(this);

        (bool success, bytes memory data) = _contract.delegatecall(
            abi.encodeWithSignature("buyCover(uint256)", 5)
        );
    }

    //This will not work as desired, this will set the buyer in partner.sol as the main contract address
    function setValues2(address _partner) public payable {
        sender = msg.sender;
        value = msg.value;

        Address = address(this);

        IPartner(_partner).buyCover(5);
    }
}
