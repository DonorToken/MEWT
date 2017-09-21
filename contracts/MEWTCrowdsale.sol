pragma solidity ^0.4.13;

import "DonorToken/contracts/token/DonorToken.sol";
import "DonorToken/contracts/crowdsale/DonorCrowdsale.sol";

/**
 * @title MEWToken
 * @dev ERC token meant to be used in a crowdsale contract.
 */
contract MEWToken is DonorToken {

  string public constant name = "MyEtherWallet Token";
  string public constant symbol = "MEWT";
  uint8 public constant decimals = 0;

}

/**
 * @title MEWTCrowdsale
 * @dev Crowdsale contract to sell ERC tokens.
 */
contract MEWTCrowdsale is DonorCrowdsale {

  uint256 public constant TOKEN_RATE = 1 finney; // ether cost per token, aka minimum payment
  address public constant INITIAL_WALLET = 0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8; // getAddr('mewtopia.eth');

  // if _startTime == 0, _startTime => now
  // if _startTime == 1, _startTime => UINT256_MAX
  // if _startTime == _endTime (i.e. UINT256_MAX), we can deploy, then one-time launch when ready
  function MEWTCrowdsale(uint256 _startTime, address _tokenAddr)
    DonorCrowdsale(
      ((_startTime == 0) ? now : ((_startTime == 1) ? UINT256_MAX : _startTime)), // thx ternary
        UINT256_MAX, TOKEN_RATE, INITIAL_WALLET, CAP_DEFAULT)
  {
    // instead of Crowdsale creating token, we create it beforehand to decouple & split gas costs
    token = MEWToken(_tokenAddr);
    // remember to also token.transferOwnership to this contract after deploying
    // remember to also onetimeLaunch(uint256 _startTime) after deploying, if necessary (be sure to set after next block will be mined!)
  }

  function createTokenContract() internal returns (MintableToken) {
    return token; // don't actually create new token since we're assigning in constructor
  }

}