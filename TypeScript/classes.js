var User = /** @class */ (function () {
    function User(name, age) {
        this.name = "";
        this.age = 0;
        this.name = name;
        this.age = age;
    }
    return User;
}());
var adam = new User("adam", 30);
console.log(adam);
console.log("Hey my name is ".concat(adam.name, " and I am ").concat(adam.age, " years old"));
