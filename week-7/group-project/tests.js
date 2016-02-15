// Add the finished solution here when you receive it.
// __________________________________________
// Tests:  Do not alter code below this line.


var oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
var evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// Initial solution



// var sum1 = oddLengthArray.reduce(sum, 0);
// var sum2 = evenLengthArray.reduce(sum,0);
// function sum(a,b) {
//   return a + b;
// }


// console.log(sum1);
// console.log(sum2);

// var test_number = 8;

// var mean1 = mean(sum1, oddLengthArray);
// var mean2 = mean(sum2, evenLengthArray);



// function mean(x, Array) {
//   return x / Array.length;
// }


// console.log(mean1);
// console.log(mean2);


// function median(Array) {
// if (Array.length % 2 === 0)
// { var i = Array.length / 2
//   var a = i - 1
//   var b = ((Array[i] + Array[a]) / 2).toFixed(1);
//   console.log(b);}
// else if (Array.length % 2 !== 0) {
//   var i = Math.ceil(Array.length /2)
//   console.log(i);}
// }

// var median1 = median(oddLengthArray);
// var median2 = median(evenLengthArray);



//refactored solution

//sum
var sum1 = oddLengthArray.reduce(sum, 0);
var sum2 = evenLengthArray.reduce(sum,0);

function sum(a,b) {return a + b;}

console.log(sum1); console.log(sum2);



//mean

var mean1 = mean(sum1, oddLengthArray);
var mean2 = mean(sum2, evenLengthArray);

function mean(x, Array) {return x / Array.length;}

console.log(mean1); console.log(mean2);


//median

function median(Array) {
 if (Array.length % 2 === 0)
 { var i = Array.length / 2;
   var a = ((Array[i] + Array[(i-1)]) / 2).toFixed(1); console.log(a);}
 else if (Array.length % 2 !== 0) { var i = Math.ceil(Array.length /2); console.log(i);}
}

var median1 = median(oddLengthArray); var median2 = median(evenLengthArray);


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)