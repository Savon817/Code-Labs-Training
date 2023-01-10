#Number
puts 1

#String
puts "Hello, There"

#Boolean
puts true

#Hash
user = {:username => "Savon"}
puts user[:username]

#Array
puts [1,3,4]

#Symbol
puts :new_symbol

#Mathematical operators
puts 1+1
puts 1-1
puts 3/1
puts 3 * 9
puts 2**2
puts 25 % 5

#Concatenation 
puts "This is" + " an example of" + " concatenation"

#Print out seventh letter.
some_string = "abcdefghijklmnopqrstuvwxyz" 
puts some_string[6]

#Distance problem
d = 30
t = 10
s = (d/t)
puts s

#Ternary Operator
score  = 100
game_result = score > 95 ? "New High Score" : "No new high Score"
puts game_result

#Comparison operators: =,==,!=,<,>,<=,=>
old_age = 30
new_age = 31
puts age = new_age

old_age = 30
puts old_age == new_age
puts old_age != new_age
puts old_age < new_age
puts old_age > new_age
puts old_age <= new_age
puts  old_age >= new_age

#Logical operators: ||, &&
logical_age = 31
if 27 < logical_age || 35 > logical_age
  puts "The age is between 27 and 35"
end

if 27 < logical_age && 35 > logical_age
  puts "The age is higher than 27 and lower than 35"
end

age = 28
if age < 30
  puts "I am #{age} years old."
end