class Priming
	def prime_method(arg)
		start = 2
		primes = (start..arg).to_a
		(start..arg).each do |n1|
			(start..n1).each do |n2|
				if n1 % n2 == 0 && n2 != n1
					 "Not Prime number #{n1}"
					 primes.delete(n1)
				end
			end
		end
		"these are prime numbers #{primes}"
	end
end
priming = Priming.new
 priming.prime_method(10)
