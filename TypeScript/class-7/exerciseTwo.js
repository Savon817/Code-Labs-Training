function sayHi() {
    var say = function () {
        console.log(hello);
    };
    var hello = "Hello World!";
    return say;
}
var sayHiClosure = sayHi();
sayHiClosure();
