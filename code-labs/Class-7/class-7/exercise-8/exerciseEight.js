function toArray(myObj = {}){

    objToArr = Object.entries(myObj);

    return objToArr;
}

console.log(toArray({a: 1, b: 2}));
console.log(toArray({shrimp: 15, tots: 12}));
console.log(toArray({}));
