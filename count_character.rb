def count_character
	loop do
			puts "What is input?"
			answer = gets.chomp
		if answer.empty?
			puts " You must give and input"
		else
			puts "#{answer} has #{answer.length} characters"
		break
		end
	end
end
count_character
