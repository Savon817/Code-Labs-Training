function numGenerator() {
    var num = 10;
    function checkNumber() {
        console.log(num);
    }
    num++;
    return checkNumber;
}
var number = numGenerator();
number();
