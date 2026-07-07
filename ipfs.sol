// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IPFSStorage {

    string public fileCID;

    function storeCID(string memory _cid) public {
        fileCID = _cid;
    }

    function getFileURL() public view returns(string memory) {
        return string(
            abi.encodePacked(
                "https://ipfs.io/ipfs/",
                fileCID
            )
        );
    }
}
