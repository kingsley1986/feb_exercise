require 'pry'

module Poker
	def self.hand(cards)
		@splited_cards = cards.split(" ")
		case 
		when high_card?
			puts "High Card"
		when one_pair?
			puts "One Pair"
		when two_pair?
			puts "Two Pairs"
		when three_of_a_kind?
			puts "Three of a kind"
		end
	end

	def self.grouped
		@splited_cards.group_by { |card| card[0]}
	end

	

	def self.high_card?
		grouped.count == 5
	end

	def self.one_pair?
		grouped.count == 4
	end

	def self.two_pair?

		grouped.count { |a, b| b.length == 2 } == 2
	end

	def self.three_of_a_kind?
		grouped.any? { |a, b| b.length == 3}
	end
end

Poker.hand("1a 2b 3c 4d 5f")
Poker.hand("1a 1b 3c 4d 5f")
Poker.hand("1a 1b 3c 3d 5f")
Poker.hand("qh 3u 7h 7h 7h")


class Test
	include Poker
	def initialize(cad)
			@scanner = cad.scan(/\d+/).map{|i| i.to_i}
			@good = cad.split(" ")
		case
		when straight
			puts "straight"
		when flush
			puts "flush"
		
		when full_house
			puts "full house"

		when four_of_kind
			puts "four of kind"
		end
	end


	def group_first
		@scanner.group_by { |c| c[0] }
	end
	def group_second
		@good.group_by { |c| c[1] }
	end

	def straight
		group_first.length == 2 && group_second.length == 3
	end

	def flush
		group_second.length == 1
	end

	def full_house
		group_first.length == 2 && group_second.length == 4
	end

	def four_of_kind
		group_first.length == 1
	end
end

test = Test.new("qf 7s 8s 8h 7h")
test1 = Test.new("qh 2h 3h 8h 7h")
test2 = Test.new("3f 3a 3d 6f 6h")
test3 = Test.new("9f 9a 9d 9f jh")
test
test1
test2
test3


class Test2
	include Poker
	def initialize(cad2)
		@splited = cad2.split(" ")
		case
		when straight_flush
			puts "Straight flush"
		end
	end
	
	def grouped2
		@splited.group_by { |card| card[1]}
	end
	
	def straight_flush
		grouped2.count == 1
	end
end

testing = Test2.new("9p 9p 1p 9p 8p")
testing





