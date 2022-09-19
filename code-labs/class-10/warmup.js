
function addTwoExceptToOddNumbers(numbers) {
    // write your logic here
    for(i = 0; i < numbers.length; i++){
        if (numbers[i] % 2 == 0){
            numbers[i + 2];
            return console.log(numbers)
        }
    }
    console.log(numbers);
  }
  
  addTwoExceptToOddNumbers([1,2,3,4,5]); // [1,4,3,6,5]
  addTwoExceptToOddNumbers([101,1,4,10]); // [101,1,6,12]