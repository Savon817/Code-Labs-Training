#Use 3 built in Array Methods

new_ary = Array["Amy", "Jimmy", "Johnny"]
# puts [].methods
# puts new_ary

#1
puts new_ary.empty?

#2
puts new_ary.at(2)

#3 Clear method
clr_ary = new_ary.clear
puts clr_ary.empty?