// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC20DropVote.sol";

contract Vote is ERC20DropVote {
      constructor(
        string memory _name,
        string memory _symbol,
        address _primarySaleRecipient
    )
        ERC20DropVote(
            _name,
            _symbol,
            _primarySaleRecipient
        )
    {}

    function _canSetPrimarySaleRecipient() internal view override returns (bool) {
        if(msg.sender == owner()) {
            return true;
        } else {
            return false;
        }
    }

    function _canSetOwner() internal view override returns (bool) {
        if(msg.sender == owner()) {
            return true;
        } else {
            return false;
        }
    }

    function _canSetClaimConditions() internal view override returns (bool) {
        if(msg.sender == owner()) {
            return true;
        } else {
            return false;
        }
    }
}