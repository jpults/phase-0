# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
# Write a hash with numbers 1-19, and numbers 20, 30, 40, 50, 60, 70, 80, 90 has the key and the string as the value
#if numbers are in the has return value
#Search for the value using the key
#Return the value
#else split numbers so the tens value and ones value are seperate
#search for the seperate numbers in the hash
#return the values and join into one string
# Initial Solution

def to_words(n)

words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                     17=>"seventeen", 18=>"eighteen",19=>"nineteen",
                    20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety"}

if words_hash.has_key?(n)
  return words_hash[n]
  
  
elsif n <= 99
  
  final_string = ""
  remainder = (n%10)
  key_value = n - remainder

  
  final_string = words_hash[key_value] + " " + words_hash[remainder]
  
  return final_string
  
else
  return "one hundred"
  
end

end

p to_words(1)

# Refactored Solution





 
# Reflection

# What concepts did you review in this challenge? Hashes, looking up hash keys, adding strings.
# What is still confusing to you about Ruby? Nothing in this challenge. It was the math that tripped us up here.
# What are you going to study to get more prepared for Phase 1? Maybe look up some math review that is good for programming.