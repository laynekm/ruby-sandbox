number_hash = { "key1" => 1, "key2" => 2, "key3" => 3 }
puts number_hash["key1"]

superheroes = Hash["Clark Kent", "Superman", "Bruce Wayne", "Batman"]
superheroes["Barry Allen"] = "Flash"
puts superheroes["Clark Kent"]

hash_with_default = Hash.new("No such key")
puts hash_with_default["test"]

superheroines = Hash["Lisa Morel", "Aquagirl", "Betty Kane", "Batgirl"]
superheroes.update(superheroines) # Destructive, duplicates eliminated
superheroes.merge(superheroines) # Maintain duplicates

puts superheroes.has_key?("Lisa Morel").to_s
puts superheroes.has_value?("Batman").to_s
puts superheroes.empty?.to_s
puts superheroes.size.to_s

superheroes.delete("Barry Allen")

superheroes.each do |key, value|
    puts key.to_s + ": " + value
end