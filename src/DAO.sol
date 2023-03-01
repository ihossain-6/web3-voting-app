// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@thirdweb-dev/contracts/base/ERC20DropVote.sol";

contract Contract is ERC20DropVote {
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
}