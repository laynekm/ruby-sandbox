array1 = Array.new
array2 = Array.new(5) # nil by default
array3 = Array.new(5, "hello") # supply default value
array4 = [1, "two", 5.5, :two]

puts array1
puts array2
puts array3
puts array4

puts array4[0]
puts array4[2, 2].join(", ") # Return 2 values starting at 2 separated by comma
puts array4.values_at(0, 1, 3).join(", ")

array4.unshift(0) # Add to beginning
array4.shift() # Remove from beginning
array4.push(100, 200) # Add to end
array4.pop() # Remove from end
array4.concat([10, 20, 30]) # Add to end

puts array4.size().to_s
puts array4.include?(100).to_s
puts array4.count(100).to_s
puts array4.empty?.to_s

p array4 # Print array in one line

array4.each do |value|
    puts value
end