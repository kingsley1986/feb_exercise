require_relative "prime"

describe Priming do 
			priming = Priming.new
		it "returns all the prime numbers" do 
			expect(priming.prime_method(7)).to eq ("these are prime numbers [2, 3, 5, 7]")
		end
end

	