// SPDX-License-Identifier:GPL-3.0
pragma solidity ^0.8.16;

import "@openzeppelin/contracts/access/Ownable.sol";
import "github.com/Prasoon180/superPAD_15Aug/blob/main/IBEP20.sol";

contract claimContract is  Ownable  {

IBEP20 public BEP20Address;

 constructor(address _BEP20Address)   {
    BEP20Address = IBEP20(_BEP20Address); 
 }

    function claim(address _claimer, uint256 _amount) external {
           require(_claimer == msg.sender);
           BEP20Address.transfer(_claimer, _amount);
           }
    
     function ChangeTokenAddress(address _BEP20Address) external onlyOwner {
        BEP20Address = IBEP20(_BEP20Address);
    }
 
}
    

