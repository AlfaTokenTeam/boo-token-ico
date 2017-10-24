pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BooToken is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BooToken(address _owner)  UpgradeableToken(_owner) {
    name = "BooToken";
    symbol = "BOTK";
    totalSupply = 1000000000000;
    decimals = 5;

    balances[_owner] = totalSupply;
  }
}