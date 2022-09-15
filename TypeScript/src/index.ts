// let sales = 123_456_789;
// let course = 'TypeeScript';
// let is_published = true;
// let level;

// level = 1;
// level = 'a';

// function render(document){
//     console.log(document);
// }

//-----------------------------------------------------------------------------------------

//How to assign an array
// let numbers: number[] = [];

// {} on the right side of : is a type assignment
let person: {
    name: string;
    age: number;
};
person = {
    name: "Savon",
    age: 28
};

// person = {
//     isEmployee: true
// };

let people: {
    name: string;
    age: number;
}[];

//Type inference
//Immediate assigning a variable with a string/number will give
//that variable it's type without specifying the type
let course = "React - the complete guide";
// course = 12345;

let someNum = 52;
// someNum = "This is shouldn't be possible.";
// numbers.forEach(n => n.)

//-----------------------------------------------------------------------------------------

//tuples
//1, 'savon'
// let user: [number, string, boolean, number] = [1, "Savon", true, 0];

//-----------------------------------------------------------------------------------------

//Enum
// const small = 1;
// const medium = 2;
// const large = 3;

//PascalCase
// const enum Size{Small = 1, Medium , Large};

// let mySize: Size = Size.Medium;
// console.log(mySize);

//-----------------------------------------------------------------------------------------

//Functions
// function calculateTax(income: number, taxYear = 2022): number {
//     if (taxYear < 2022)
//         return income * 1.2;
//     return income * 1.3;
// }
// calculateTax(10_000, 2023);

//-----------------------------------------------------------------------------------------

//Objects
//Type alias
// type Employee = {
//     readonly id: number,
//     name: string,
//     retire: (date: Date) => void
// }

// let employee: Employee = {
//     id: 1, 
//     name: "Savon",
//     retire: (date: Date) =>{
//         console.log(date);
//     } 
// };

//-----------------------------------------------------------------------------------------

// Union types
let courseOne: string | number = "Hello there";
courseOne = 1235;
function kgToLbs(weight: number | string): number {
    //Narrowing
    if (typeof weight === 'number')
        return weight * 2.2;
    else
        return parseInt(weight) * 2.2;
}

kgToLbs(10);
kgToLbs('10kg');

//-----------------------------------------------------------------------------------------

//Intersection types
// type Draggable = {
//     drag: () => void
// };

// type Resizable = {
//     resize: () => void
// };

// type UIWidget = Draggable & Resizable;

// let textBox: UIWidget ={
//     drag: () => {},
//     resize: () => {}
// }

//-----------------------------------------------------------------------------------------

//Literal types
//literal (exact, specific)
// type Quantity = 50 | 100;
// let quantity: Quantity = 100;

// type Metric = 'cm' | 'inch';

//-----------------------------------------------------------------------------------------

//Nullable types
// function greet(name: string | null | undefined){
//     if(name)
//         console.log(name.toUpperCase());
//     else
//         console.log('Hola');
// }

// greet(undefined);

//-----------------------------------------------------------------------------------------

//Optional Chaining
type Customer = {
    birthday?: Date
};

function getCustomer(id: number): Customer | null | undefined {
    return id === 0 ? null : { birthday: new Date() };
}

let customer = getCustomer(1);
//Optional property access operator
console.log(customer?.birthday?.getFullYear());

//Optional element access operator
//customers?.[0]

//Optional call
let log: any = null;
log?.('a');

//-----------------------------------------------------------------------------------------
//Functions and types
function add(a: number, b: number) {
    return a + b;
}

function print(value: any) {
    console.log(value);
}

//-----------------------------------------------------------------------------------------
//Generics
function insertAtBeginning<T>(array: T[], value: T) {
    const newArray = [value, ...array];
    return newArray;
}

const demoArray = [1, 2, 3]

const updatedArray = insertAtBeginning(demoArray, -1); //[-1, 1, 2, 3]
const stringArray = insertAtBeginning(['a', 'b', 'c'], 'd');

// updatedArray[0].split('');

//-----------------------------------------------------------------------------------------
//Classes
class Student {
    // firstName: string;
    // lastName: string;
    // age: number;
    // private courses: string[];

    // constructor(first: string, last: string, age: number, courses: string[]){
    constructor(
        public firstName: string,
        public lastName: string,
        public age: number,
        private courses: string[]
    ) { }

    enroll(courseName: string) {
        this.courses.push(courseName);
    }

    listCourses() {
        return this.courses.slice();
    }
}

const student = new Student('Savon', "Williams", 28, ['Angular']);
student.enroll('React');
// student.listCourses() => Angular, React

//because I added private to courses we cannot access it directly
// student.courses => Angular, React

//Interfaces --- only exist in TypeScript and not JavaScript
//Alternative to type alias and can be implemented by classes
interface Human {
    firstName: string;
    age: number;

    greet: () => void;
}

let savon: Human;
// savon = 29; cannot store only a number has to be in the format below
savon ={
    firstName: "Savon",
    age: 29,
    greet(){
        console.log("Hello!");
    }
};

// class Instructor implements Human{
//     firstName!: string;
//     age: number;
//     greet(){
//         console.log("hello!!!!");
//     }

// }