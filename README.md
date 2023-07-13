# Circuit Implementation using circom

This Circom program is a simple circuit implementation program that demonstrates the basic syntax and functionality of the Circom circuits and circom programming language.
Functionality

circuit.circom implementation
Compile the circuit to generate circuit intermediaries
Generate a proof using inputs A=0 B=1
Deploy a solidity verifier to  Testnet
Call the verifyProof() method on the verifier contract and assert output is true


## Description

This program is a simple program written in Circom, a programming language used for developing circuits on the  blockchain. The contract has  functions that returns the string True". This program serves as a simple and straightforward introduction to Circom programming, and can be used as a stepping stone for more complex projects in the future.

## Steps
* Write .circom circuit implementation.
* Deploy on the Ethereum test net.
* Verify proof using solidity.
  
## Getting Started

### Executing program
Write implement.circuit code using circom.
```javascript
pragma circom 2.0.0;

template ANDGate() {
  signal input First;
  signal input second;
  signal output final;

  final <== First*second;
}

template NOTGAte() {
  signal input second;
  signal output Y;

  Y <== 1 + second - 2*second;
}

template ORGate() {
  signal input final;
  signal input Y;
  signal output Q;

  Q <== final + Y - final*Y;
}

component main = ORGate();

/*INPUT = {
    "a": "0",
    "b": "1"
}*/
```
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:
and verify proof.
```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Verifier {
    function verifyProof(bool a, bool b) public pure returns (bool) {
    
        bool and = a && b;
        bool not = !b;
        bool or= and || not;
        assert(or == true);

        return true;
    }
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

Once the contract is deployed, you can interact with it.

## Authors

Govind Pandey.


## License

This project is licensed under the MIT License.
