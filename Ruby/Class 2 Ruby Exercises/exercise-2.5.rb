#Use 5 built in string methods

#1
name = "Savon"
name_length_str = name.length
puts "I have #{name_length_str} letters in my name."

#2
some_num = '365'
new_num = some_num.succ
puts "There are #{some_num} days in a year, but in a leap year there are #{new_num} days!"

#3
game_name = "Killer Instinct"
puts game_name.insert(15, " is a fun fighting game!")

#4
goty = "God of War: Ragnarok"
puts "Friend 1: #{goty} is the best game that came out in 2022!"
goty.replace("Elden Ring")
puts "Friend 2: No, #{goty} is the best game that come out in 2022!"

#5
string = "WEWLAD"
string.each_char {|c| print c, ' '}