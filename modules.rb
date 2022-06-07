# Modules consist of methods and instance variables like classes
# But cannot be instantiated
# Commonly used to add functionality to class
# Because can only inherit one class but multiple modules
# Like an abstract class in Java

require_relative "modules/human"
require_relative "modules/smart"

class Scientist
    include Human
    prepend Smart # Functions in module supercede the ones in this class

    def act_smart
        return "This should not run"
    end
end


module Animal
    def make_sound
        puts "Ooh ooh ah ah"
    end
end

class Dog
    include Animal
end

dog = Dog.new
dog.make_sound

scientist = Scientist.new
scientist.name = "Einstein"
scientist.run
puts scientist.act_smart