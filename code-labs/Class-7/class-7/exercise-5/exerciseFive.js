function parentCallback(x){
    return function closure(){
        return x;
    };
}

const remember = parentCallback("remembers me");

remember();