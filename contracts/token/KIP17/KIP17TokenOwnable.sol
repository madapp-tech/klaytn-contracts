pragma solidity ^0.5.0;

import "./KIP17Full.sol";
import "./KIP17MetadataMintable.sol";
import "./KIP17Mintable.sol";
import "./KIP17Burnable.sol";
import "./KIP17Pausable.sol";
import "../../ownership/Ownable.sol";

contract KIP17TokenOwnable is
    KIP17Full,
    KIP17Mintable,
    KIP17MetadataMintable,
    KIP17Burnable,
    KIP17Pausable,
    Ownable
{
    constructor(
        string memory name,
        string memory symbol,
        address payable newOwner
    ) public KIP17Full(name, symbol) {
        transferOwnership(newOwner);
    }
}
