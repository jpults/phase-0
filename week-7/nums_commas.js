// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Create function that accepts a number as argument
// split characters in number and put into an array
// reverse the array 
// pop out three array items at a time startin from last three in array
// put objects three at a time from beginning of 1st array in to new array followed by comma character.Order of new array will be again reversed 
// continue until 1st array is empty
// join all elements in new array to string and return



// Initial Solution

// function seperateComma(number) {
  
//   var array = number.toString().split("");
//   array.reverse();
  
//   var new_array = []
  
//   for (var i = 0; i < array.length; i++) {
    
//     new_array.push(array[i]);
    
//     if ((i + 1) % 3 == 0) {
      
//       new_array.push(",");
      
//     }
    
//   }
  
//   new_array.reverse();
  
//   var string = new_array.join("");
  
//   console.log(string);
  
// }


// seperateComma(1569743);

// Refactored Solution

function seperateComma(number) {
  var numString =  number.toString();
  var finalString = "";
  
  
  
  for(var i = -3; i >= -(numString.length) ; i-=3) {
  
    finalString =  "," + numString.slice(i, numString.length + (i + 3) ) + finalString ;
    
    
      
  
  
  
  }
  var extra = numString.length % 3;
  finalString = numString.slice(0,extra).concat(finalString);
  console.log(finalString);
  
  
}

seperateComma(156979826742875373878243);


// Your Own Tests (OPTIONAL)




// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently? Sort of. I had seen a solution that seemed neat to this that I had not done so I tried that.
// What did you learn about iterating over arrays in JavaScript? We used a for loop and the length of the array to guide our iterator. I also learned you can iterate over strings.
// What was different about solving this problem in JavaScript? The methods were slightly different but for the most part it was very similar.
// What built-in methods did you find to incorporate in your refactored solution? We used .slice to take a piece of the string that we wanted from a number.