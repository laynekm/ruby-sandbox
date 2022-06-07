# Do loop
x = 1
loop do # Only print even numbers
    x += 1
    next unless (x % 2) == 0
    puts x
    break if x >= 10
end

# While loop
y = 1
while y <= 10
    y += 1
    next unless (y % 2) == 0
    puts y
end

# Until loop
z = 1
until z >= 10
    z += 1
    next unless (z % 2) == 0
    puts z
end

# Iterate over array
numbers = [1, 2, 3, 4, 5]
for number in numbers
    print "#{number}, "
end

groceries = ["bananas", "potatoes", "pasta"]
groceries.each do |food|
    puts "Get some #{food}"
end

# Iterate over range
(0..5).each do |i|
    puts "#{i}"
end