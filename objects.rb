# Everything is an object
puts 1.class # Integer
puts 1.123.class # Float
puts "hello".class # String

class Animal
    def initialize
        puts "Creating new animal"
    end

    # Setters
    def set_name(new_name)
        @name = new_name
    end

    def name=(new_name)
        if new_name.is_a?(Numeric)
            puts "Name cannot be number"
        else
            @name = new_name
        end
    end 

    # Getters
    def get_name
        @name
    end

    def name
        @name
    end
end

class Dog
    # Autogenerate getters and setters
    attr_reader :name, :height, :weight
    attr_writer :name, :height, :weight

    # Or just do this
    attr_accessor :name, :height, :weight

    def bark
        return "Generic bark"
    end
end

# Methods and instance variables inherited
class GermanShepard < Dog
    def bark # Overwrite
        return "German shepard bark"
    end
end

cat = Animal.new
cat.set_name("Theo")
puts cat.get_name

cat.name = "Kiki"
puts cat.name

rover = Dog.new
rover.name = "Rover"
puts rover.name
puts rover.bark
puts rover.bark()

max = GermanShepard.new
max.name = "Max"
puts max.name
puts max.bark
puts max.bark()

printf "%s goes %s \n", max.name, max.bark()