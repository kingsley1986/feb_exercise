	total = []
	puts "Enter the second number:"
	input1 = gets.chomp.to_i

	puts "Enter the second number:"
	input2 = gets.chomp.to_i

	puts "Enter the third number:"
	input3 = gets.chomp.to_i
	total << [input1, input3, input2].max
	puts "the largest number is #{total}"
	

