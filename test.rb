# def find_sequences_desc(a)
#   a.slice_when { |prev, cur|
#     cur != prev - 1
#   }.to_a
# end
# puts find_sequences_desc [20, 15, 9,8,7,4,4]



# module Poker
# 	def self.hand(cards)
# 		u = cards.split(" ")
# 		 me = u.group_by { |c| c[1]}

# 		now = cards.scan(/\d+/).map{|i| i.to_i}
# 		good = now.group_by { | good| good[0]}


# 	case
# 	when good.length == 2 && me.length == 3
# 		puts "This is it"
# 	end
# 	end
# end
# Poker.hand("qf 7s 8s 8h 7h")

module Poker
	def self.hand(cards)
			@scanner = cards.scan(/\d+/).map{|i| i.to_i}
			@good = cards.split(" ")

		case
		when straight?
			puts "straight"
		end
	end


	def self.zero
		@scanner.group_by { |c| c[0] }
	end

	def self.one
		@good.group_by { |c| c[1] }
	end

	def self.straight?
		zero.length == 2 && one.length == 3
	end
end

Poker.hand("qf 7s 8s 8h 7h")
