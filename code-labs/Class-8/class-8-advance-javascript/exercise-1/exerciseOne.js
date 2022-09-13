function makePlusFunction(someNum){
    someNum = NaN || 0;
    function addNum(otherNum){
        otherNum = NaN || 0;
        return console.log(someNum + otherNum);
    }
    return addNum;
}

const  plusFive = makePlusFunction(5);

plusFive(2);
plusFive(-8);

const plusTen = makePlusFunction(10);

plusTen(0);
plusTen(188);
plusFive(plusTen(0));