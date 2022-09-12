function parent(x){
    return function closure(){
        return console.log(x);
    };
}

const remember = parent("remember me");

remember();