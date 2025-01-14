pragma circom 2.1.4;

include "circomlib/poseidon.circom";
// Go through the circomlib library and import the poseidon hashing template using node_modules
// Input 4 variables,namely,'a','b','c','d' , and output variable 'out' .
// Now , hash all the 4 inputs using poseidon and output it . 
template sample() {
    signal input a;
    signal input b;
    signal input c;
    signal input d;
    signal output out;
    component hash = Poseidon(4);
    hash.inputs[0] <== a;
    hash.inputs[1] <== b;
    hash.inputs[2] <== c;
    hash.inputs[3] <== d;
    out<== hash.out;

}

component main = sample();

/* INPUT = {
    "a": "5",
    "b": "77",
    "c": 2,
    "d": 4
} */