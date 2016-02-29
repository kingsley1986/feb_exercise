require_relative "poker"

describe Poker do 
	it "returns high card" do 
		expect(Poker.hand("1a 2b 3c 4d 5f")).to eq ("High Card")
	end

	it "returns high card" do 
		expect(Poker.hand("1a 1b 3c 4d 5f")).to eq ("One Pair")
	end

		it "returns high card" do 
		expect(Poker.hand("1a 1b 3c 3d 5f")).to eq ("Two Pairs")
	end

	it "returns high card" do 
		expect(Poker.hand("1a 1b 1c 3d 5f")).to eq ("Three of a kind")
	end
end