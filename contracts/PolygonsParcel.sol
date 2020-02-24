pragma solidity ^0.5.0;

import "./TradeableERC721Token.sol";
import "openzeppelin-solidity/contracts/ownership/Ownable.sol";

/**
 * @title Polygons Parcel
 * Polygons Parcel - a contract for my non-fungible polygons.
 */
contract PolygonsParcel is TradeableERC721Token {
  constructor(address _proxyRegistryAddress) TradeableERC721Token("Polygons Parcel", "POLPA", _proxyRegistryAddress) public {  }

  function baseTokenURI() public view returns (string memory) {
    return "https://www.polygons.art/api/parcel/";
  }
}