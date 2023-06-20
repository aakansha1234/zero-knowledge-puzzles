pragma circom 2.1.4;
include "https://github.com/iden3/circomlib/blob/master/circuits/comparators.circom";

// Input 3 values using 'a'(array of length 3) and check if they all are equal.
// Return using signal 'c'.
template Equal() {
    signal input a;
    signal input b;
    signal output out;

    component iszero = IsZero();
    iszero.in <== a-b;

    out <== iszero.out;
}

template Equality() {
   signal input a[3];
   signal c[2];
   signal output out;

   component equal[2];
   for(var i=0; i<2; i++){
        equal[i] = Equal();
        equal[i].a <== a[i];
        equal[i].b <== a[i+1];
        equal[i].out ==> c[i];
   }
   out <== c[0]*c[1];
}


component main = Equality();
/* INPUT ={
    "a": ["31", "30", "31"]
} */
