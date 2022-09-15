let firstName: string = "";
let num: number = 10;
let on: boolean = true;
let place: any;
let nothing: null = null;

let names: string[] = ['John', 'May']
let numText: number | string = "";

let user: {name: string; age: number} = {
    name: "Savon",
    age: 28
}

//Functions in TypeScript
function printMyName(name:string): void{
    console.log(name);
}

printMyName("Dom");

// firstName = 10;

//ERROR must be defined first
// console.log(num);