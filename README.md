# MEWT (MyEtherWallet Token)
[![Build Status](https://img.shields.io/travis/DonorToken/MEWT.svg?branch=master&style=flat-square)](https://travis-ci.org/DonorToken/MEWT)
[![Coverage Status](https://coveralls.io/repos/github/DonorToken/MEWT/badge.svg?branch=master)](https://coveralls.io/github/DonorToken/MEWT?branch=master)

MEWT (pronounced "mute") is a [DonorToken](https://github.com/DonorToken/DonorToken) for [MyEtherWallet (MEW)](https://github.com/kvhnuke/etherwallet).

[MEWT Crowdsale smart contract](#coming-soon) / [MEWToken contract](#coming-soon)

## About
MEWT was inspired by a [reddit comment about MEW](https://www.reddit.com/r/ethtrader/comments/6jsdt1/useless_ethereum_token_the_worlds_first_100/djhj8y1/) which noted that while people are spending tens of thousands of dollars on useless "joke" tokens, the creators of MEW have received meager donations in comparison.

DonorToken believes MEW is a foundational piece of the Ethereum ecosystem, and that without the efforts of MEW's creators, Ethereum would not be where it is today. We believe that MEW's creators fully deserve the opportunity to dedicate full-time focus to such an important project which so many of us use, and a development fund to continue to invest in the technology.

But we know that ERC tokens are an important, exciting, fun, and useful piece of the Ethereum ecosystem, too!

That's where MEWT comes in. You can now not only contribute to the development of MEW, but you'll also receive MEWT in return. 95% of MEWT proceeds go directly to MEW's donation address (*0x7cB57B5A97eAbe94205C07890BE4c1aD31E486A8*); the remaining 5% goes to the DonorToken dev fund (*0x2F6dA3986a36f8dBd559b94CF9D6857779b429E2*), which is used for getting listed on exchanges, dev team compensation, continuing development, etc.

We know how much MyEtherWallet has meant to the Ethereum/crypto community ([ex](https://www.reddit.com/r/ethereum/comments/6bd0aw/myetherwallet_an_appreciation/)). Recently they have even been hiring some of us to continue improving features (ex [1](https://www.reddit.com/r/ethereum/comments/6v4yw1/myetherwallet_is_looking_for_an/) [2](https://www.reddit.com/r/ethereum/comments/6tqrs1/myetherwallet_needs_motivated_devs/) [3](https://www.reddit.com/r/ethereum/comments/6019gy/looking_for_highlymotivated_frontend_js_wizards/)). Now it's our turn to give back, with MEWT. Our proceeds should allow them to continue to hire developers and support staff, to continue improving features and lowering barriers to entry for newcomers, and driving the value of Ethereum and its ecosystem.

In a sense, MEWT's value will be tied to the continual success of the MyEtherWallet team (we believe the future is very bright!).

Upcoming MEWT features include a stakeholder DAO contract where MEWT holders can vote for features and changes they would like to see in MEW (weighted by holdings). This will allow MEW's creators to see what issues are the most important to their biggest donors, and we will work with them to convey this information. They may even build MEW features/badges/Easter eggs/etc which are "unlockable" based on one's MEWT balance!

(Another cool perk, as we will also be releasing DonorTokens for other worthy projects and causes, is that we will be launching an additional contract where holders of *any* DonorToken (i.e. MEWT) can perform similar votes, get other bonuses, etc, for our DonorToken project itself!)

Some may ask, if 5% goes to the dev fund, isn't that money which should have gone to the donee instead? Our view is that any donations we are able to raise via DonorToken is money which likely would not have been raised in the first place, thus providing a net benefit; and that 5% also provides an incentive to make it a win-win for all, while continuing to improve and contribute back to the community via DonorToken. However, if this is a problem for you, we are happy for you to forgo the MEWT and donate directly! :)

Last but not least, MEWT/DonorToken are intended to be an example of a best practices, easy-to-use ERC token the ETH/open source community can model after. We hope you enjoy. Now let's take MEWT to the moon... and MEW along with it!

### MEWT's characteristics
* MEWT is purchased by sending your donation to the MEWT Crowdsale smart contract; your MEWT will automatically be issued.
	* NOTE: gas used is typically between 50,000-150,000 depending on the tx amount and contract state at the time (i.e. whether the new tx triggers a donee transfer, etc); we recommend sending with gas limit on the high end (150k+), remembering that any unused gas will be automatically returned to you.
* "Rate" is 1 finney (.001 ETH) per token. If donations are received of less than 1 finney or of some remainder (ex: 1.5 finney, the .5 finney is a remainder), a refund of the unused value will be attempted; if the refund attempt fails due to not enough gas, it will be kept as a "dust donation".
* Capped @ 100k ether donations received; no "premine" or initial balances.
* Rewards **bonus tokens** for:
	* "EARLYBIRDS", i.e. donors during the first 4 weeks. The bonus is 27% on day 1, and decreases by 1% per day until day 27, when it is 1%. Note that decimals/fractions of tokens are rounded down, i.e. if you donated 1 finney on day 1, your 1.27 MEWT would be truncated to 1 MEWT. You would need to donate at least 4 finney to get a bonus token (4 * 1.27 =  5.08 => 5 MEWT).
	* "WHALES", i.e. donations in multiples of 1 ether. The bonus is 100 bonus tokens per ETH. Note that this is calculated on a per-donation basis, not cumulative. So if you were to donate 2.5 ETH, you would receive 200 bonus tokens. If you then donated another .5 ETH, even though your cumulative donation is 3 ETH, you would not receive an additional 100 bonus tokens since the latter donation was not >= 1 ETH.
	* So, **the best bang for your buck is to get your MEWT early, and in multiples of 1 ether!**
* For every 1 ETH donated (cumulative), the donee and dev also receive 1 token. This is a fun way for all parties to keep track of cumulative donations received - as well as maintain a vested interest in the token itself. Also, other ERC tokens sent to this crowdsale will be assumed intended for the dev fund, because we don't want to auto-send potential token spam to the donee, but as we say... devs don't mind! :)
* Theoretical final max supply if cap is reached: 137,200,000 (if all donations received on day 1 and all donations are in multiples of 1+ ether; unlikely). Theoretical final min supply if cap is reached: 100,200,000 (if no donations received until day 28+ and all donations are < 1 ether; also unlikely). Actual final supply will be somewhere in the middle.
* Disclaimer: tokens are a reward for donating and should not be treated as or considered a security or investment.
* Remember: don't donate from an exchange-based ETH wallet address if you want to receive tokens!

### Technical info
Built on OpenZeppelin standard contracts. Implements ERC20; ERC23 (tokenFallback); ERC677 ([transfer|approve]AndCall, receive[Transfer|Approval]). Our token contract creates the concepts of 'benship' (beneficiary ownership) and 'devship' (developer ownership), for operations which should only be permitted by those parties. Otherwise the contract is self-owned, transferring ownership to itself on initialization, so no one - dev or not - can change it.

### Testnet contracts
* [MEWT Crowdsale smart contract @ Kovan Testnet](https://kovan.etherscan.io/address/0x324c6e7d8e2e2d0c3e5437b8b6f50cc5af861e2e)
* [MEWToken smart contract @ Kovan Testnet](https://kovan.etherscan.io/address/0xb1e57be197dfb0a0d8afb6fc2887b7101fb3892e)

### About DonorToken
We've striven to give back to the community by creating a project using best practices, and creating some best practices of our own where no precedent exists. We invite code critiques & audits!


## Getting Started
```sh
npm install
npm run test
```

You'll also get all the DonorToken contracts in the `node_modules/DonorToken/contracts` folder.

We also recommend the excellent [solidity-flattener](https://github.com/BlockCatIO/solidity-flattener) to flatten deploy-ready Solidity code with imports into a single file, i.e.:
```sh
export DT_PAR="/path/to/parentdir" # put this in .bash_profile and reboot terminal
solidity_flattener --solc-paths="DonorToken/=$DT_PAR/MEWT/node_modules/DonorToken/ zeppelin-solidity/=$DT_PAR/MEWT/node_modules/zeppelin-solidity/" --output flattened/flat-YOURFILE.sol contracts/YOURFILE.sol
```


## Security
DonorToken is meant to provide secure, tested, and community-audited code, but please use common sense when doing anything that deals with real money! We take no responsibility for your implementation decisions and any security problem you might experience.

If you find a security issue, please email [dev@DonorToken.com](mailto:dev@DonorToken.com).

## Contributing
- [Issue tracker](https://github.com/DonorToken/MEWT/issues)
- [Contribution guidelines](CONTRIBUTING.md)
- Dev fund (ETH): 0x2F6dA3986a36f8dBd559b94CF9D6857779b429E2

## Discuss & Follow
- [r/DonorToken](https://www.reddit.com/r/DonorToken)
- [@DonorToken](https://twitter.com/DonorToken)
- [+DonorToken](https://www.facebook.com/DonorTokens)
- [DonorToken @ Telegram](https://t.me/DonorTokens)
- [MEWT @ r/DonorToken](http://reddit.MEWT.DonorToken.com)
- [MEWT @ BitcoinTalk](http://bitcointalk.MEWT.DonorToken.com)
- [MEWT.DonorToken.com](http://MEWT.DonorToken.com)


## License
Code released under the [MIT License](LICENSE).
