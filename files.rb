file = File.new("files/authors.txt", "w") # Creates file if doesn't exist
file.puts "Shakesbeard"
file.puts "Cormac McCarthy"
file.close

file = File.read("files/authors.txt")
puts "Authors: " + file

file = File.new("files/authors.txt", "a") # Append to end
file.puts "Steven King"
puts File.read("files/authors.txt")

file = File.new("files/authors_info.txt", "w")
file.puts "Shakesbeard, English, 4 billion"
file.puts "Cormac McCarthy, English, 1 billion"
file.puts "Steven King, Spanish, 10 billion"
file.close

File.open("files/authors_info.txt") do |record|
    record.each do |item|
        name, language, sales = item.chomp.split(",")
        puts "#{name} | #{language} | #{sales}"
    end
end


# Execute code from another file
load "test.rb"