drinks = [
    {name: "lemonade", price: 50},
    {name: "lime", price: 10},
    {name: "carrot", price: 34}
];

function sortDrinkByPrice(drinks=[]){
    const drinksAreSorted = drinks.sort(function(a, b) {return b.price - a.price});

    return console.log(drinksAreSorted);
}

sortDrinkByPrice(drinks);
