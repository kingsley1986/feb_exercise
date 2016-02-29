array = []
loop do
puts "who want to contest?"
		name = gets.chomp
		array << name
	if name.empty?
		puts "the winner is #{array.sample}"
	break
	end
end