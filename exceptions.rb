# Exceptions
print "Enter a number: "
num1 = gets.to_i
print "Enter another number: "
num2 = gets.to_i

begin
    answer = num1 / num2
rescue
    puts "You can't divide by 0"
end

puts "#{num1} / #{num2} = #{answer}"

age = 12
def check_age(age)
    raise ArgumentError, "Enter a positive number" unless age > 0
end

begin
    check_age(-1)
rescue ArgumentError
    puts "Impossible age"
end