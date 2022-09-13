//A class is a blueprint for objects
class User{
    // instance properties -> data
    username = '';
    // constructor -> that is executed when an instance is created
    constructor(newUsername){
        this.username = newUsername;
        console.log("instance was created");
    }
    // methods -> difine logic to manipulate data
    printMyName(){
        console.log(`My name is ${this.username}`);
    }
}

let user = new User('John123');
console.log(user);
user.printMyName();

let userTwo = new User('Amy123');
console.log(userTwo);
user.printMyName();
// let userExample = {
//     username: '',
// }