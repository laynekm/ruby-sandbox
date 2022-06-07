puts "Add them: #{4 + 5}\n"
puts 'Add them: #{4, 5}\n' # Brackets and newlines do not work

multiline_string = <<EOM
this is a very
long
string
with interpolation
like #{4 + 5}\n\n
EOM

puts multiline_string

first_name = "Joe"
last_name = "Smith"
full_name = first_name + last_name
middle_name = "Jacob"
full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

puts full_name.size
puts full_name.include?("Joe")
puts "Vowels: " + full_name.count("aeiou").to_s
puts "Consonants: " + full_name.count("^aeiou").to_s
puts full_name.start_with?("Joe")
puts "Index: " + full_name.index("Jacob").to_s

puts ("a" == "a").to_s # True because strings match
puts "a".equal?("a").to_s # False because different objects
puts full_name.equal?(full_name) # True because same object

puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

full_name = "      " + full_name + "  "
full_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip # lstrip and rstrip

puts full_name.rjust(20, ".") # Right justified
puts full_name.ljust(20, ".") # Left justified
puts full_name.center(20, ".")

puts full_name.chop # Remove last char
puts full_name.chomp # Remove newline
puts full_name.chomp("th") # Remvoe specific chars at end
puts full_name.delete("J") # Remove specific chars

puts full_name.split(//) # Split at each new char
puts full_name.split(/ /) # Split at space
puts full_name.split(/J/) # Split at specific char

puts "123".to_i # To integer
puts "123.123".to_f # To float
puts "abc".to_sym # To symbol
