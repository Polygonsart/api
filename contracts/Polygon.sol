pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Polygon
 * Polygon - a contract for my non-fungible polygons.
 */
contract Polygon is TradeableERC721Token {
  constructor(address _proxyRegistryAddress) TradeableERC721Token("Polygon", "POL", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https:/polygons.art/api/polygon/";
  }
}