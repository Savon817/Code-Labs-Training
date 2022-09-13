function makePlusFunction(someNum){
    
    function addNum(otherNum){
       let addInnerOuter = someNum + otherNum;
        return addInnerOuter;
    }
    return addNum;
}

const  plusFive = makePlusFunction(5);

console.log(plusFive(2));
console.log(plusFive(-8));

const plusTen = makePlusFunction(10);

console.log(plusTen(0));
console.log(plusTen(188));
console.log(plusFive(plusTen(0)));