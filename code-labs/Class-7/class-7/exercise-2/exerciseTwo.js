function sayHi(){
    let say = function(){
        console.log(hello);
    }

    let hello = "Hello world!";
    return say;
}

let sayHiClosure = sayHi();
sayHiClosure();