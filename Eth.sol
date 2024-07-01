// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;
contract Ruppes {
string public Token = "Ruppes";
string public abbrvforToken = "Rs";
uint256 public supplyAvailable = 0;
mapping (address => uint256) individualBalance;
function mintRuppes (address creditingWallet, uint numberOfCoins) public
    {
        individualBalance[creditingWallet] += numberOfCoins;
        supplyAvailable += numberOfCoins;
    }

function burnRuppes (address RsWallet, uint TotalCoins) public
    {
        if (individualBalance[RsWallet] >= TotalCoins)
        {
            individualBalance[RsWallet] -= TotalCoins;
            supplyAvailable -= TotalCoins;
        }
    }
}
