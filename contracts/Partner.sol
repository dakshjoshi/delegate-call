// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// Partner Contract will have the final buyCover function
contract Partner {
    //These varibales will not be used, but are important because
    address public sender;
    uint256 public value;
    address public Address;

    address public buyer;
    uint256 public sample;

    function buyCover(uint256 sample_) public {
        sample = sample_;
        buyer = msg.sender;
    }
}
