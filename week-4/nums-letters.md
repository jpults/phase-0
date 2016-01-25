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