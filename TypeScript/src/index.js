// let sales = 123_456_789;
// let course = 'TypeeScript';
// let is_published = true;
// let level;
var __spreadArray = (this && this.__spreadArray) || function (to, from, pack) {
    if (pack || arguments.length === 2) for (var i = 0, l = from.length, ar; i < l; i++) {
        if (ar || !(i in from)) {
            if (!ar) ar = Array.prototype.slice.call(from, 0, i);
            ar[i] = from[i];
        }
    }
    return to.concat(ar || Array.prototype.slice.call(from));
};
var _a;
// level = 1;
// level = 'a';
// function render(document){
//     console.log(document);
// }
//-----------------------------------------------------------------------------------------
//How to assign an array
// let numbers: number[] = [];
// {} on the right side of : is a type assignment
var person;
person = {
    name: "Savon",
    age: 28
};
// person = {
//     isEmployee: true
// };
var people;
//Type inference
//Immediate assigning a variable with a string/number will give
//that variable it's type without specifying the type
var course = "React - the complete guide";
// course = 12345;
var someNum = 52;
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
var courseOne = "Hello there";
courseOne = 1235;
function kgToLbs(weight) {
    //Narrowing
    if (typeof weight === 'number')
        return weight * 2.2;
    else
        return parseInt(weight) * 2.2;
}
kgToLbs(10);
kgToLbs('10kg');
function getCustomer(id) {
    return id === 0 ? null : { birthday: new Date() };
}
var customer = getCustomer(1);
//Optional property access operator
console.log((_a = customer === null || customer === void 0 ? void 0 : customer.birthday) === null || _a === void 0 ? void 0 : _a.getFullYear());
//Optional element access operator
//customers?.[0]
//Optional call
var log = null;
log === null || log === void 0 ? void 0 : log('a');
//-----------------------------------------------------------------------------------------
//Functions and types
function add(a, b) {
    return a + b;
}
function print(value) {
    console.log(value);
}
//-----------------------------------------------------------------------------------------
//Generics
function insertAtBeginning(array, value) {
    var newArray = __spreadArray([value], array, true);
    return newArray;
}
var demoArray = [1, 2, 3];
var updatedArray = insertAtBeginning(demoArray, -1); //[-1, 1, 2, 3]
var stringArray = insertAtBeginning(['a', 'b', 'c'], 'd');
// updatedArray[0].split('');
//-----------------------------------------------------------------------------------------
//Classes
var Student = /** @class */ (function () {
    // firstName: string;
    // lastName: string;
    // age: number;
    // private courses: string[];
    // constructor(first: string, last: string, age: number, courses: string[]){
    function Student(firstName, lastName, age, courses) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.courses = courses;
    }
    Student.prototype.enroll = function (courseName) {
        this.courses.push(courseName);
    };
    Student.prototype.listCourses = function () {
        return this.courses.slice();
    };
    return Student;
}());
var student = new Student('Savon', "Williams", 28, ['Angular']);
student.enroll('React');
var savon;
// savon = 29; cannot store only a number has to be in the format below
savon = {
    firstName: "Savon",
    age: 29,
    greet: function () {
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
