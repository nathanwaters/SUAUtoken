pragma solidity ^0.4.18;

import "zeppelin-solidity/contracts/ownership/Ownable.sol";

contract ETHairdrop is Ownable {

    function() public payable onlyOwner {}

    function airdrop(address[] dests, uint256 weiTip) public onlyOwner returns (uint256) {
        uint256 i = 0;
        while (i < dests.length) {
           dests[i].transfer(weiTip);
           i += 1;
        }
        return(i);
    }

}
