# Decentralized Voting App

Decentralized apps are gaining more and more attention as technology and hardware develops.Here is a decentralized app(Dapp) for election purposes.The smart contract aloows each account  to vote once for the candidate of their choice.The app is built over ethereum blockchain using truffle framework.  
## Getting Started

```git clone https://github.com/jeswincyriac/Election-Dapp.git ```
This copies the code to your local machine.

### Prerequisites

 * truffle framework  ```npm install -g truffle```
 * [ganache ](https://truffleframework.com/ganache) :- Local blockchain for development puposes.
 * [metamask](https://metamask.io/) :- Connects your blockchain to browser. 
 
### Installing 

 * `cd` into the Election-Dapp directory and run `npm install`
 
 ## Deploying
 
 * Fire up ganache blockchain by going to the downloaded folder and running `./filename.Appimage`
 * `truffle migrate --reset ` :-Deploys the smartcontract to block chain.
 * `npm run dev` :- Starts the server for frontend.
 * Open browser and go to `localhost:3000` and make an account in metamask.
 * select custom RPC  Network and enter the url shown in ganache.Reload the page.
 * Import the other accounts to metamask from ganache using private key.

## Final output


<img src="Peek voting app final.gif"  />

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


