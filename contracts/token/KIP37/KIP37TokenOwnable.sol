pragma solidity ^0.5.0;

import "./KIP37Token.sol";
import "../../ownership/Ownable.sol";

contract KIP37TokenOwnable is KIP37Token, Ownable {
    constructor(string memory uri, address payable newOwner)
        public
        KIP37Token(uri)
    {
        transferOwnership(newOwner);
    }
}
