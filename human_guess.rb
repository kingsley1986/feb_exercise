puts "I am thinking of a number between 1 and 10"

random = Random.rand(10)
loop do 
		answer = gets.chomp.to_i
	if answer > random
		puts "Think lower"
	elsif answer < random 
		puts "Guess Higher"
	elsif answer == random
		puts "you are right the answer was #{random}"
	break
	end
end