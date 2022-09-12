function greatestCommonDivisor(a, b){
    //Input validation
    if (typeof a !== 'number' || typeof b !== 'number') {return false;}
    if (a < b){
        let tempNum = a;
        a = b;
        b = tempNum;
    }

    while( b != 0){
        let tempNum = b;
        b = a % b;
        a = tempNum;
    }

    return a;
}

console.log(greatestCommonDivisor( 14, 21));
console.log(greatestCommonDivisor( 69, 169));