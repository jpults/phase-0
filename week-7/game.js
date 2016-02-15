 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:  Predator must find the prey in a field.
// Goals: Search randomly until they prey meets the predator.
// Characters: Predator, Prey
// Objects: Grid, Predator, Prey
// Functions: Random, generates a random number from -1 to 1
// Prey.move and Predator.move moves the characters to new spots.
// 

// Pseudocode
// 
//Make a large array of arrays for a grid.
// Create hunter and prey functions using constructor functions. They should include the x and y property, plus their own move functions.
// The characters move functions should generate a random number to move to, then check if they can move there, or if the prey is eaten. Other wise, move them there by erasing their current spot and filling in the destination.
//
//Loop through the random moves until the prey is no longer alive.
//

// Initial Code

// var line = new Array(10);

// line.fill("_",0,11);

// var grid = new Array(10);

// grid.fill(line,0,11);

// console.log(grid);

var grid = [ [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ], 
  [ '_', '_', '_', '_', '_', '_', '_', '_', '_', '_' ] ] ;

 function place(sym, x, y) {
  
  
  grid[x][y] = sym;
  
  
};


function random() {
  
  var number = Math.floor((Math.random() *3) - 1);
  return number;
  
};


function Hunter( x , y ) {
  
  this.x = x;
  this.y = y;
  place("X", x, y); 
  
  this.move = function() {
    
    
    var delx = random();
    var dely = random();
    
    if (delx + this.x > 9 || delx + this.x < 0) {
      delx = -delx; }
    
    if (dely + this.y > 9 || dely + this.y < 0) {
      dely = -dely; }
    
    if (grid[this.x + delx][this.y + dely] === "O"){
      
      console.log("Getting Close!");
      
    }
    else {
      grid[this.x][this.y] = "_";
      this.x += delx;
      this.y += dely;
      grid[this.x][this.y] = "X";
    }
  
  
  
  }
};

function Prey(x, y) {
  
  this.x = x;
  this.y = y;
  place("O", x, y);
  this.alive = true;
  
  this.move = function() {
    
    if (this.alive) {
    var delx = random();
    var dely = random();
    
    if (delx + this.x > 9 || delx + this.x < 0) {
      delx = -delx; }
    
    if (dely + this.y > 9 || dely + this.y < 0) {
      dely = -dely; }
    
    if (grid[this.x + delx][this.y + dely] === "X"){
      this.alive = false;
      console.log("The prey has been eaten!");
      grid[this.x][this.y] = "_";
    }
    else {
      grid[this.x][this.y] = "_";
      this.x += delx;
      this.y += dely;
      grid[this.x][this.y] = "O";
    }
  }
};
    
  
  
};


var hunter1 = new Hunter(3,0);

var prey1 = new Prey(7,7);


console.log(grid);

while (prey1.alive) {
  
  prey1.move();
  hunter1.move();
  console.log(grid);
  
}




// Refactored Code


// I was not sure how to refactor just yet but I was planning on adding something else to the game for fun, multiple prey and predators perhaps.



// Reflection
//
//What was the most difficult part of this challenge?  Making the initial array grid. There is something funny to do with array.fill function, in that if you try to modify an array you made this way, it will change every element in the array, so every 3 element in the inner arrays effectively for example. I gave up and just manually input the array.
// What did you learn about creating objects and functions that interact with one another? It gets confusing fast. It was difficult to keep what could modify what straight.
// How can you access and manipulate properties of objects?  You can access a property using the object.propery nototion. 
//
//
//
//
//
//