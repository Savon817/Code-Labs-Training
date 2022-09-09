function numGenerator() {
    
    let num = 10;
    function checkNumber(){
        console.log(num);
    }
    num++
    return checkNumber;
}

let number = numGenerator();
number();