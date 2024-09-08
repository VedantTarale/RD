// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.9;

contract RD {
    struct RDUser {
        address owner;
        string description;
        string[] image;
        uint256[] user;
        uint256[] timestamp;
    }

    mapping(uint256 => DoorBox) public RDUsers;
    uint256 public RDUserCount = 0;

    function createRDUser(
        string memory _description,
        string[] memory _image,
        uint256[] memory _user,
        uint256[] memory _timestamp
    ) public {
        RDUserCount++;
        RDUsers[RDUserCount] = RDUser(
            msg.sender,
            _description,
            _image,
            _user,
            _timestamp
        );
    }
}
