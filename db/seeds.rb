require 'rest-client'

url_char = "https://dragon-ball-api.herokuapp.com/api/character"

puts "Begin seeding..."

char_array = JSON.parse(RestClient.get(url_char).body)

Character.destroy_all

char_data = char_array.sample(5)

char_data.each do |character|
  Character.create!(
    name: character["name"],
    origin: character["originPlanet"],
    image: character["image"],
  )
  puts "Character created"
end

puts "Seeding completed!"
