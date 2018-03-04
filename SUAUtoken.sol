pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract SUAUtoken is StandardToken {

  string public name = "SingularityU Australia Summit Token";
  string public symbol = "SUAU";
  uint public decimals = 18;
  uint public INITIAL_SUPPLY = 1000000000 * (10 ** decimals);

  function SUAUtoken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }

}
