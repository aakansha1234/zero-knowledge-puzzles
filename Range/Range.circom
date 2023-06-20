pragma circom 2.1.4;
include "circomlib/comparators.circom";
// In this exercise , we will learn how to check the range of a private variable and prove that 
// it is within the range . 

// For example we can prove that a certain person's income is within the range
// Declare 3 input signals `a`, `lowerbound` and `upperbound`.
// If 'a' is within the range, output 1 , else output 0 using 'out'


template Range() {
    signal input a;
    signal input lowerbound;
    signal input upperbound;
    signal d;
    signal e;
    signal output out;

    component hash = LessEqThan(251);
    hash.in[0] <== a;
    hash.in[1] <== upperbound;
    d <== hash.out;
    log("hash", hash.out);

    component hashe = GreaterEqThan(251);
    hashe.in[0] <== a;
    hashe.in[1] <== lowerbound;
    e <== hashe.out;
    log("hashe", hashe.out);

    out <== e * d;
}

component main  = Range();

/* INPUT = {
    "a": "11",
    "lowerbound": "4",
    "upperbound": "10"
} */


