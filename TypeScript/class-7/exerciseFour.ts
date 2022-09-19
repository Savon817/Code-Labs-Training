function redundantReturn(str: string = "Hello"): any{
    function realFunction():string {
        return str;
    }

    return realFunction;
}

let stringFunction = redundantReturn();
console.log(stringFunction());