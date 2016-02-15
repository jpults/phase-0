// // User Stories
// // 1

// As a user, I want to have a function that tells me the sum of a group of numbers, adding each number in the group To find the SUM. For each number, I add that number to my sum, starting at 0.
// I might have to start by counting how many numbers I had, so I knew when to stop.


// 2

// As a user, I want to add all the numbers in a group of numbers together, then divide them by the number of numbers to find the AVERAGE.  I'd start by counting how many numbers I wanted to "average" 
// Then, for each number, I would add that number to an initial value of 0 to find the SUM. Just like I did before. Finally, I would take the sum and divide it by the # of numbers I had. 


// 3 

// As a user, I want to find the middle number in order of a group of numbers, or the MEDIAN.  For example, if I had 1, 2 , and 3, I would want to find 3. The numbers are already in order.
// Since the numbers are already in order, if I have an odd # of numbers, then I can the # of numbers by 2, rounding up if necessary, and that would be the position of the median. 
// If I have an even # of numbers, I could divide the # of numbers by 2, then take the number at that position AND the number right after it, and find the AVERAGE of those two. I can find the average the same way I did before.


// // pseudocode
// // 1


// Input: an array of numbers
// Output: a number (the sum of the array)
// Steps:
// -create an array of numbers
// -define sum counter which starts at zero
// -create a method that adds each number in the array to sum.
// -stop method once you've added each element in the array to the sum

// 2

//
// Input: An array of numbers
// Output:one number - the mean of the input
// Steps:
// - determine the length of the input array
// -  add each element in the array together with a starting value of zero to find the sum of the array (use the sum method above)
// -take the sum of the elements in the array and divide by the length of the array to determine the AVERAGE.
// -return the average.


// // 3


// Input: an array of numbers in order from smallest to largest.
// Output: the mean of the array
// Steps:
// -check to see if the length of the array is odd
// -if the length is odd, divide the length by 2 and round up. This is the index position of the median.
//Return this indexed element.
// -if the length of the array is even, divide the length of the array by 2 to get the middle index of the array(i).
//Take the middle indexed element(i)
//and add it to the next element in the array(i+1) and then divide by 2 to get the average of those two numbers.
// Return the average.

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]

// Initial solution



var sum1 = oddLengthArray.reduce(sum, 0);
var sum2 = evenLengthArray.reduce(sum,0);
function sum(a,b) {
  return a + b;
}


console.log(sum1);
console.log(sum2);

var test_number = 8;

var mean1 = mean(sum1, oddLengthArray);
var mean2 = mean(sum2, evenLengthArray);



function mean(x, Array) {
  return x / Array.length;
}


console.log(mean1);
console.log(mean2);


function median(Array) {
 if (Array.length % 2 === 0)
 { var i = Array.length / 2
  var a = i - 1
  var b = ((Array[i] + Array[a]) / 2).toFixed(1);
  console.log(b);}
 else if (Array.length % 2 !== 0) {
  var i = Math.ceil(Array.length /2)
  console.log(i);}
}

var median1 = median(oddLengthArray);
var median2 = median(evenLengthArray);



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

// // Challenge Summary:
// We had a number of miscommunications over the course of the challenge which resulted in us failing almost all the tests.  To try and be clear as possible, it is my understanding that the challenge was to create 3 functions.  One would be called sum,
// and input an array of numbers, and output the sum of the array.  The second would be called mean and input an array of numbers, and output their average.  The third would be called median and input an array, and output the middle number in the array, if there are an even number of numbers,
// the function should return the average of the middle 2 numbers.
// As the writer of the user stories, I made several mistakes.  First, I gave the wrong example median in my description of that. I also think that I tried to give too specific a method to solving the problem, instead of saying simply what
// the functions should do and trusting the next person to figure out the steps. My stories, looking back, look too much like psuedocode without the organization that psuedocode brings. 
// The person that wrote the psuedo-code managed to understand me I think, but wrote confusingly that one should create
// new array and method in the first psuedocode, and instead of reffering to the third method as returning the Median, referenced the mean again. The third person I think did not follow the psuedocode very closely, as it might not have been clear that all that was needed were three functions. They also seemed to use
// parts of the challenge that I don't think that they were supposed to technically look at, which may have confused them further. Finally, the refactoring person did what they could, but in the third method I think did not see that unlike Ruby, Javascript does not default to integer division, resulting in 
// the indexes being looked up being decimal numbers in odd length arrays. 
// But I think you all did a great job with what you had to work with.  I don't think we should feel too bad about our mistakes, after all, the test code itself was not working entirely correctly either, I had to fix some things just to get them to
// run. I think what we should take out of this is that communication is hard, and we should strive to learn when to give more detail, as well as when to give less. 