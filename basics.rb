=begin
Multi-line comment
This is ugly, I don't like this part
=end

# puts includes newline
print "Enter a value: "
num1 = gets.to_i

print "Enter another value: "
num2 = gets.to_i

added = num1 + num2

puts num1.to_s + " + " + num2.to_s + " = " + added.to_s

float1 = 1.000
float2 = 0.999
puts float1.to_s + " - " + float2.to_s + " = " + (float1 - float2).to_s

# Constants
CONSTANT = 31.4
CONSTANT = 32.4 # Gives warning but allows

# Sanitizing input
print "Enter greeting: "
greeting = gets.chomp # Remove trailing whitespace

# Symbols are strings that cannot be changed, cannot use string methods
# Use to conserve memory or speed up string comparison
# Often used as keys in hashes
:name
puts :name
puts :name.to_s
puts :name.class
puts :name.object_id