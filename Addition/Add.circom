pragma circom 2.1.4;


// In this exercise , you need to create a circuit that takes an array "a"
// of length '2' as input and a output "c" .
// Create a circuit that adds the 2 inputs and outputs it .

template Add() {
    signal input a ;
    signal input b ;

    signal output c ;

    c <== a + b ;
}

component main  = Add();
/* INPUT ={
    "a":32,
    "b":2
} */
