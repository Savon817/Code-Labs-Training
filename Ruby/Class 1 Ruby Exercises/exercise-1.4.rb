puts "What is your first name?"
user_input = gets.chomp

puts "What is your last name?"
user_input_two = gets.chomp

if user_input.downcase == "john" && user_input_two.downcase == "doe"
    puts "I found you!"
elsif user_input.downcase == "amy" && user_input_two.downcase == "jeans"
    puts "Amy! Help me look for John Doe."
else
    puts "You're not who I'm looking for"
end

