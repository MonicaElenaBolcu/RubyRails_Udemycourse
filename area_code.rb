dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each do |city, code|
    puts "#{city}"
  end
end

#Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash.each do |city, code|
    if "#{city}" == key
      puts "The area code for #{city} is #{code}"
    end
  end
end

# Execution flow
loop do
  puts "Do you want to look up an area code based on a city name? (Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "Which city do you want the area code for?"
  get_city_names(dial_book)
  puts "Enter your selection"
  x = gets.chomp
  get_area_code(dial_book, x)
end
