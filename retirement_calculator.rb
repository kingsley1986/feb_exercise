time = Time.new
puts "what is your current age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

puts "you have #{retire - age} years left until you retire."
retirement = retire - age
puts "It's #{time.year}, so you can retire in #{time.year + retirement}"
