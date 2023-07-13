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
