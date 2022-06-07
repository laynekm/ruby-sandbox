class Bird
    def tweet(bird_type)
        bird_type.tweet
    end
end

class Cardinal < Bird
    def tweet
        puts "tweet tweet"
    end
end

class Parrot < Bird
    def tweet
        puts "squawk squawk"
    end
end

# Dynamically typed language so polymorphism is simulated
bird = Bird.new
bird.tweet(Cardinal.new)
bird.tweet(Parrot.new)
