puts "Think of  a number between 1 and 10"

low = 1
high = 100


loop do
		random = (low + high) / 2
		puts "is #{random} the right number?"
		answer = gets.chomp
	if answer == "l"
		high = random
		puts "Guess lower"
	elsif answer == "h"
		low = random
		puts "guess Higher"
	elsif answer == "y"
		puts "you are correct the answer was #{random}"
		break
	end
end