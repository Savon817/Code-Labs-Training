class User{
    name:string = "";
    age:number = 0;

    constructor(name: string, age: number){
        this.name = name;
        this.age = age;
    }


}

let adam = new User("adam", 30);
console.log(adam);
console.log(`Hey my name is ${adam.name} and I am ${adam.age} years old`);