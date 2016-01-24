# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  result = 1
  if number == 0 || number == 1
  return 1
  else
  idx = number
  while idx > 0
  result *= idx
  idx -= 1
  end
  result
  end
end