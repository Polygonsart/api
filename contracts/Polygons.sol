pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Polygons
 * Polygons - a contract for my non-fungible polygons.
 */
contract Polygons is TradeableERC721Token {
  constructor(address _proxyRegistryAddress) TradeableERC721Token("Polygons", "POL", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https:/polygons.art/api/polygon/";
  }
}