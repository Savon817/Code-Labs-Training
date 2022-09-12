function redundantReturn(someString = "Hello"){

    function realFunction(){
        return redundantReturn(console.log(someString));
    }

    // let realFunc = function (someString) {
    //     console.log(someString);
    // }

    // return realFunc;
    return realFunction;
}

let stringFunction = redundantReturn();

stringFunction();