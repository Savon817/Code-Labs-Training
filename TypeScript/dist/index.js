"use strict";
var _a;
let person;
person = {
    name: "Savon",
    age: 28
};
let people;
let course = "React - the complete guide";
let someNum = 52;
let courseOne = "Hello there";
courseOne = 1235;
function kgToLbs(weight) {
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
let customer = getCustomer(1);
console.log((_a = customer === null || customer === void 0 ? void 0 : customer.birthday) === null || _a === void 0 ? void 0 : _a.getFullYear());
let log = null;
log === null || log === void 0 ? void 0 : log('a');
function add(a, b) {
    return a + b;
}
function print(value) {
    console.log(value);
}
function insertAtBeginning(array, value) {
    const newArray = [value, ...array];
    return newArray;
}
const demoArray = [1, 2, 3];
const updatedArray = insertAtBeginning(demoArray, -1);
const stringArray = insertAtBeginning(['a', 'b', 'c'], 'd');
class Student {
    constructor(firstName, lastName, age, courses) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.courses = courses;
    }
    enroll(courseName) {
        this.courses.push(courseName);
    }
    listCourses() {
        return this.courses.slice();
    }
}
const student = new Student('Savon', "Williams", 28, ['Angular']);
student.enroll('React');
let savon;
savon = {
    firstName: "Savon",
    age: 29,
    greet() {
        console.log("Hello!");
    }
};
//# sourceMappingURL=index.js.map