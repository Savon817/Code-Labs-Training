age = 18
puts age

# age = 18 + 5
# puts age

# age = 33
# puts age

# age = age + 4
# puts age

# age += 4
# puts age

age -= 2
puts age

cash = 10
cash *= 2
puts cash

temperature = 40
temperature /= 10
puts temperature

#How to name a variable
#Bad
a = 19
string = "John"

#Good
age = 19
name = "John"
can_swim = false

#Variables as references
desired_location = "Barcelona"
johns_location = desired_location

puts desired_location
puts johns_location

johns_location.upcase!
puts desired_location
puts johns_location