# Functions
def add_nums(num1, num2)
    return num1.to_i + num2.to_i
end

puts add_nums(3, 4)

# Cannot change value outside of functions scope
x = 1
def change_x(x)
    x = 4
end

change_x(x)
puts "x = #{x}" # Prints 1