// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var Jack = 23;
Jack += 1;
console.log(Jack);


// prompt("what's your favorite food?");
// console.log("Hey! ME TOO! I LOVE CHEESE!")
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var i = 1; i < 101; i++) {
  
 if (i % 3 == 0 ) 
 {
  console.log("Fizz") ;
 }
  else if ( i % 5 == 0) console.log("Bizz");
  else console.log(i);
  
}


// Functions

// Complete the `minimum` exercise.

function min(one, two) {
 
  if (one > two) return two;
  else return one;
  
}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Jack" ,
  age: 24 ,
  favorite: ["cheese", "bread", "Sushi"],
  quirk: "I store dice that haven't rolled 6 out of 100 rolls and save them so I can bet people."
  
}