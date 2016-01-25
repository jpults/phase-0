# Calculate a Grade

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def get_grade average
  if average <= 100 && average > 89
    return 'A'
  end
  if average <= 89 && average > 79
    return 'B'
  end
  if average <= 79 && average > 69
    return 'C'
  end
  if average <= 69 && average > 59
    return 'D'
  end
  if average <= 59
    return 'F'
  end
end