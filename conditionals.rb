# Conditionals
# Comparison: ==, !=, <, >, <=, >=, <=>
# Logical: &&, ||, ! (or AND, OR, NOT)

age = 12
if (age >= 5) && (age <= 6)
    puts "Kindergarten"
elsif (age >= 7) && (age <= 13)
    puts "Middle school"
else
    puts "High school"
end

unless age > 4 # Only execute if age < 4
    puts "No school"
else
    puts "Go to school"
end

puts "You're young" if age < 30

# <=> returns 0 if equal, 1 if left is greater, -1 if second is greater
puts "5 <=> 5 = " + (5 <=> 5).to_s
puts "5 <=> 10 = " + (5 <=> 10).to_s
puts "10 <=> 5 = " + (10 <=> 5).to_s

case greeting
when "French", "french"
    puts "Bonjour"
    exit
when "Spanish", "spanish"
    puts "Hola"
    exit
else "English" # default
    puts "Hello"
    # exit - don't put this here will end program
end

# Ternary operator
puts (age >= 65) ? "Retired" : "Not retired"