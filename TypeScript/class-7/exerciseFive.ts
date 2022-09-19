function parentCallback(x: string){
    return function closure(){
        return x;
    };
}

const remember = parentCallback("remembers me");

remember();