pragma solidity ^0.5.0;

import "./KIP37Token.sol";
import "../../ownership/Ownable.sol";

contract KIP37TokenOwnable is KIP37Token, Ownable {
    // Contract name
    string public name;
    // Contract symbol
    string public symbol;

    constructor(
        string memory _name,
        string memory _symbol,
        string memory uri,
        address payable newOwner
    ) public KIP37Token(uri) {
        transferOwnership(newOwner);
        name = _name;
        symbol = _symbol;
    }
}
