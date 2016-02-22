def pt(n)
array = [1]

for i in 1..n

  start = array
  
  array = [1]
  
  
  start.each_index do |num|
    
    if num != (start.length - 1)
   		
      array.push(start[num] + start[num+1])
      
    end
    
        
      
    
  end
  
  

  array.push(1) 
  

end
  
  return array
end




What concepts did you review or learn in this challenge?  Arrays, for loops, each loops, and methods.
What is still confusing to you about Ruby?  The different datatypes and how they are accessed. 
What are you going to study to get more prepared for Phase 1? Hashes, regular expressions.