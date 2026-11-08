// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract CreatorRewards {
    address public owner;
    mapping(address => uint) public creatorPoints;
    uint public totalPointsAwarded;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only platform owner can issue points");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    // Write Function 1: Owner adds points to a creator's wallet
    function issuePoints(address _creator, uint _points) public onlyOwner {
        creatorPoints[_creator] += _points;
        totalPointsAwarded += _points;
    }

    // Write Function 2: Creator redeems points
    function redeemPoints(uint _points) public {
        require(creatorPoints[msg.sender] >= _points, "Insufficient points");
        creatorPoints[msg.sender] -= _points;
    }

    // Read Function 1: Creator checks their own balance
    function getMyPoints() public view returns (uint) {
        return creatorPoints[msg.sender];
    }

    // Read Function 2: View platform total
    function getTotalAwarded() public view returns (uint) {
        return totalPointsAwarded;
    }
} 