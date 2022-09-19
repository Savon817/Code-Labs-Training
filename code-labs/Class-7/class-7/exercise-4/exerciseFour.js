function redundantReturn(someString = "Hello"){

    function realFunction(){
        return someString;
    }

    // let realFunc = function (someString) {
    //     console.log(someString);
    // }

    // return realFunc;
    return realFunction;
}

let stringFunction = redundantReturn();
console.log(stringFunction());