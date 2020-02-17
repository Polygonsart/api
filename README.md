## Polygons ERC721 contracts

### About Polygons.

Polygons its another point of view of express the art through low poly.

## Requirements

### Node version

Either make sure you're running a version of node compliant with the `engines` requirement in `package.json`, or install Node Version Manager [`nvm`](https://github.com/creationix/nvm) and run `nvm use` to use the correct version of node.

## Installation

Run
```bash
npm install
```

If you run into an error while building the dependencies and you're on a Mac, run the code below, remove your `node_modules` folder, and do a fresh `npm install`:

```bash
xcode-select --install # Install Command Line Tools if you haven't already.
sudo xcode-select --switch /Library/Developer/CommandLineTools # Enable command line tools
sudo npm explore npm -g -- npm install node-gyp@latest # Update node-gyp
```

## Deploying

### Deploying to the Rinkeby network.

1. You'll need to sign up for [Infura](https://infura.io). and get an API key.
2. Using your API key and the mnemonic for your Metamask wallet (make sure you're using a Metamask seed phrase that you're comfortable using for testing purposes), run:

```
export INFURA_KEY="<infura_key>"
export MNEMONIC="<metmask_mnemonic>"
truffle deploy --network rinkeby
```

### Minting tokens.

After deploying to the Rinkeby network, there will be a contract on Rinkeby that will be viewable on [Rinkeby Etherscan](https://rinkeby.etherscan.io).

```
export OWNER_ADDRESS="<my_address>"
export NFT_CONTRACT_ADDRESS="<deployed_contract_address>"
export NETWORK="rinkeby"
node scripts/mint.js
```

Note: When running the minting script on mainnet, your environment variable needs to be set to `mainnet` not `live`.  The environment variable affects the Infura URL in the minting script, not truffle. When you deploy, you're using truffle and you need to give truffle an argument that corresponds to the naming in truffle.js (`--network live`).
