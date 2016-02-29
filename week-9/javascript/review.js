// def pt(n)
// array = [1]

// for i in 1..n

//   start = array
  
//   array = [1]
  
  
//   start.each_index do |num|
    
//     if num != (start.length - 1)
   		
//       array.push(start[num] + start[num+1])
      
//     end
    
        
      
    
//   end
  
  

//   array.push(1) 
  

// end
  
//   return array
// end

// //This is a program to print the nth row of Pascal's Triangle in Ruby



// #release-1 Psuedocode
// Input: An integer (positive)
// Out Put: The nth row of pascals triangle, where N is the input integer


// create an empty array equal to [1]
// from 1 to n 
//   create a new array set equal to the working "final" array called start
//   set the "final array" back equal to [1]
//   for each element in the start array.
//     unless it is the last element in the array,
//     push the current element plus the next element onto final array as one number
//     if it IS the final number in the array, just push it.  It should be 1 always.
    
// return the array



var pt = function(n) {
  
  var final = [1];
  var start = [1];
  console.log(final);
  for (var i = 0; i <= n ; i++) {
    
    start = final;
    final = [1];
    
    for (var j = 0; j < start.length; j++)
       if(j != start.length -1 ) {
         
         final.push(start[j] + start[j+1]);  }
      else { final.push(1); }
      
    console.log(final);
  }
  
  
  
  
  return final
};
       
       
console.log(pt(9));


// What concepts did you solidify in working on this challenge? The syntax difference between Ruby and JavaScript Loops
// What was the most difficult part of this challenge? Just visualizing how the trianlge needs to be built and displayed.
// Did you solve the problem in a new way this time? No not really.
  