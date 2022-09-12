getBudgets1 = ([
    { name: "John", age: 21, budget: 23000 },
    { name: "Steve",  age: 32, budget: 40000 },
    { name: "Martin",  age: 16, budget: 2700 }
  ])
  
getBudgets2 = ([
    { name: "John",  age: 21, budget: 29000 },
    { name: "Steve",  age: 32, budget: 32000 },
    { name: "Martin",  age: 16, budget: 1600 }
  ])

  function getSumOfBudgets(array = []){
    const sum = array.reduce((accumulator, object) => {
        return accumulator + object.budget;
    }, 0);

    return console.log(sum);
  }

  getSumOfBudgets(getBudgets1);
  getSumOfBudgets(getBudgets2);