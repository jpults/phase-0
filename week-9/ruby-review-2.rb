# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end



# 2. Pseudocode what happens when the code above runs
# A true or false statement is running through the assert block checking to see if it is true 
# The assert method will raise "Assertion failed!" unless it is true
# The test code is failing because name does not equal "billybob"
#
# 3. Copy your selected challenge here
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
# 4. Convert your driver test code from that challenge into Assert Statements

assert {to_words(5) == "five"}
assert {to_words(55) == "fifty five"}
assert {to_words(100) == "one hundred"}
assert {to_words(33) == "thirty three"}


# 5. Reflection
# What concepts did you review in this challenge? How to make assert statements and how they work.
# What is still confusing to you about Ruby? We did not find a clear explanation on what yield does or exactly how an argument is passed to assert
# What are you going to study to get more prepared for Phase 1?  As many new functions as I can, and nested arrays.