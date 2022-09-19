function parentCallback(x) {
    return function closure() {
        return console.log(x);
    };
}
var remember = parentCallback("remembers me");
remember();
