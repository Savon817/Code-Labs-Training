function redundantReturn(str) {
    if (str === void 0) { str = "Hello"; }
    function realFunction() {
        return str;
    }
    return realFunction;
}
var stringFunction = redundantReturn();
console.log(stringFunction());
