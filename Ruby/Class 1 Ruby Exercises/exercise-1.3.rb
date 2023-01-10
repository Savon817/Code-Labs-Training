puts "Please enter a sentence: "

user_input = gets.chomp
puts "You typed: #{user_input}"

puts "What number do you want to multiply by two?"
user_num_input = gets.chomp

def multiply_by_two(user_num)
    result = user_num * 2
    puts  "#{user_num} multipled by 2 is #{result}"
end
puts multiply_by_two(user_num_input.to_i)

puts "What number do you want to divide by two?"
user_num_input = gets.chomp
def divide_by_two(user_num)
    result = user_num / 2
    puts  "#{user_num} divided by 2 is #{result}"
end
puts divide_by_two(user_num_input.to_i)
