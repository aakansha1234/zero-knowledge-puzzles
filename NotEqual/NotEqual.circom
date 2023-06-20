pragma circom 2.1.4;

include "circomlib/comparators.circom";
// include "https://github.com/0xPARC/circom-secp256k1/blob/master/circuits/bigint.circom";

template Example () {
    signal input a;
    signal input b;

    signal output c;
    
    
    component hash = IsEqual();
    hash.in[1] <== b;
    hash.in[0] <== a;
    log("hash", hash.out);
    c <== 1- hash.out;



}

component main { public [ a ] } = Example();

/* INPUT = {
    "a": "599",
    "b": "77"
} */