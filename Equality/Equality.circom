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
   signal c[3];
   signal output out;

   component equal = Equal();
   equal.a <== a[1];
   equal.b <== a[2];
   equal.out ==> c[0];

   component equal1 = Equal();
   equal1.a <== a[0];
   equal1.b <== a[1];
   equal1.out ==> c[1];

   component equal3 = Equal();
   equal3.a <== a[0];
   equal3.b <== a[2];
   equal3.out ==> c[2];

   // return 1 if c[0] and c[1] and c[2] are 1, return 0 if any of c's is 0
   // (1,1,1) => 1, (0,1,1)...(0,0,1), (0,0,0) -> 0
   signal temp <== c[0]*c[1];
   out <== temp*c[2];
}

component main = Equality();
/* INPUT ={
    "a": ["31", "31", "31"]
} */
