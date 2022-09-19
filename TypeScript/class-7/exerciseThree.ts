let x: number = 10;

function foo(a: any) {
    let b: number = 20;

    function bar(c: any) {
        let d: number = 30;
        return boop(x + a + b + c + d);
    }

    function boop(e: any) {
        console.log(e * -1);
    }

    return bar;
}

let moar = foo(5);
moar(15);