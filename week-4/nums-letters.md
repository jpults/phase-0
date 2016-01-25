1. What does puts do?

    It prints to the console to a new line. It does not return anything.
2. What is an integer? What is a float?
      
    An integer is a whole number , a float is a decimal number. 
3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
      
    Integer division is like rounding to the nearest whole number before dividing.  Float division takes all the decimals in two numbers into account when dividing.


```ruby
def hours_per_year 
  
  return 365*24
  
end

puts hours_per_year


def min_per_decade
  
  return hours_per_year * 10 * 60
  
end

puts min_per_decade

```

1. How does Ruby handle addition, subtraction, multiplication, and division of numbers? 
  
 With the + - * and / operators respectively. You can use () to influence the order of operations of these operators.
2. What is the difference between integers and floats?
 
Integers are whole numbers including negative. Floats can contain decimal places.
3. What is the difference between integer and float division?
     
Integer division is like rounding to the nearest whole number before dividing.  Float division takes all the decimals in two numbers into account when dividing.

4. What are strings? Why and when would you use them?

Strings are a series of characters contained in a variable.
5. What are local variables? Why and when would you use them?

Local variables "exist" only in the current function. Once the function stops, it is not going to be recognized anymore.  This way you can use the same word for variables in multiple functions and not have to worry about repeating them.
6. How was this challenge? Did you get a good review of some of the basics?

It was interesting and a good review, yes. 