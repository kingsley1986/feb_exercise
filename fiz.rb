class Fizz
	def fizzing(num)
		# 1.upto(10) do |num|
			if num % 3 == 0 && num % 5 == 0
				"fizzbuzz"
			elsif num % 3 == 0
				"fizz"
			elsif num % 5 == 0
				"buzz"
			else
				num
			end
	end
end
fizz = Fizz.new
fizz.fizzing(100)
