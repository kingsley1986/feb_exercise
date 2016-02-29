
module Priming
	def self.prime?(number)
		return false if number == 1
		2.upto(number - 1).each do |x|
			return false if number % x == 0
		end
		true
	end
end
# puts Priming.prime?(8)

numbers = (1..10).to_a

puts "Here are the prime numbers"
puts numbers.select { |bling| Priming.prime?(bling) }
puts "Here are the non prime numbers"
puts numbers.reject { |bling| Priming.prime?(bling) }
puts "Here they are grouped in a hash"
puts numbers.group_by { |bling| Priming.prime?(bling) }
