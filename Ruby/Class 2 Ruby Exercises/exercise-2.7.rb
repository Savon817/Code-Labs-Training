num_ary = Array(1..10)
puts "#{num_ary}"

puts "The firse element is: #{num_ary.first}, The last element is: #{num_ary.last}, This is the length of the array: #{num_ary.length}"

puts "#{num_ary.unshift(0)}"
puts "#{num_ary << 11}"

i = 0
while i < num_ary.length
    # puts num_ary[i]
    # puts num_ary[i] * 2
    
    if (num_ary[i] * 2) % 2 == 0
        puts "#{i * 2} is an even number"
    else
        puts "#{i} is an odd number"
    end
    i += 1
end

other_ary = num_ary.select do |elem|
    if(elem * 2) % 2 == 0
        puts "#{elem * 2} is an even number"
    else
        puts "#{elem} is an odd number"
    end
end
puts other_ary