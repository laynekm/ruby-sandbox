class Menu
    include Enumerable

    def each # required
        yield "pizza"
        yield "spaghetti"
        yield "salad"
        yield "water"
        yield "bread"
    end
end

menu_options = Menu.new
menu_options.each do |item|
    puts "Would you like: #{item}"
end

p menu_options.find{|item| item == "pizza"} # Print if find match
p menu_options.select{|item| item.size <= 5 }
p menu_options.reject{|item| item.size <= 5 }
p menu_options.first
p menu_options.take(2) # Return first 2
p menu_options.drop(2) # Return all except first 2
p menu_options.min
p menu_options.max
p menu_options.sort