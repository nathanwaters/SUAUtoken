pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";
import "zeppelin-solidity/contracts/token/ERC20/ERC20.sol";

contract SUAUairdrop is Ownable {

    function airdrop(address _tokenAddr, address[] dests, uint256 tokens) public onlyOwner returns (uint256) {
        uint256 i = 0;
        while (i < dests.length) {
           ERC20(_tokenAddr).transfer(dests[i], tokens * (10 ** 18));
           i += 1;
        }
        return(i);
    }

}
