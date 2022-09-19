function sayHi(){
    let say = function(){
        console.log(hello);
    }

    let hello: string = "Hello World!"
    return say;
}

let sayHiClosure = sayHi();
sayHiClosure();
