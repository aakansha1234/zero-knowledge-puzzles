pragma circom 2.1.4;

// Input : 'a',array of length 2 .
// Output : 'c
// Using a forLoop , add a[0] and a[1] , 4 times in a row .

template ForLoop() {
    signal input a[2];
    signal b[4];
    signal output c;
    b[0] <== a[0] +a[1];

    for(var i=1;i<4;i++){
        b[i] <== a[0] + a[1]+b[i-1];
    }
    
    c<==b[3];
}  

component main = ForLoop();
/* INPUT ={
    "a": ["31", "31"]
} */

pragma circom 2.1.4;

// Input : 'a',array of length 2 .
// Output : 'c
// Using a forLoop , add a[0] and a[1] , 4 times in a row .

template ForLoop() {
    signal input a[2];
    signal output c;
    c <== (a[0] + a[1])*4;
}  

component main = ForLoop();
/* INPUT ={
    "a": ["31", "31"]
} */

pragma circom 2.1.4;

// Input : 'a',array of length 2 .
// Output : 'c
// Using a forLoop , add a[0] and a[1] , 4 times in a row .

template ForLoop(n) {
    signal input a[2];
    signal output c;

    var x=0;

    for (var i=0; i<n; i++) {
        x += a[0]+a[1];
    }

    c <== x;
}  

component main = ForLoop(4);
/* INPUT ={
    "a": ["31", "31"]
} */
