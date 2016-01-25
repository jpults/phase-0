# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  
  if a == 0 || b == 0 || c == 0
    return false
  end
    
    
  biggest = "A";  
  if a > b && a > c
    biggest = "A"
  elsif b > a && b > c
    biggest = "B"
  elsif
    biggest = "C"
  end
    
  case biggest
  when "A"
    if (b+c) < a
      return false
    end
      
  when "B"   
    if (a+c) < b
      return false
    end
  when "C"   
    if (a+b) < c
      return false
    end
  end
  
  return true
end

 