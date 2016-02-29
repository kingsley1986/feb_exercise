require_relative "dewet_prime"


describe Prime do 
	it "returns true if number is prime" do 
	expect(Prime.prime?(2)).to eq (true)
	expect(Prime.prime?(3)).to eq (true)
	expect(Prime.prime?(5)).to eq (true)
	expect(Prime.prime?(7)).to eq (true)
	end

	it "returns false if number is not prime" do 
		expect(Prime.prime?(4)).to eq (false)
		expect(Prime.prime?(6)).to eq (false)
		expect(Prime.prime?(8)).to eq (false)
		expect(Prime.prime?(9)).to eq (false)
		expect(Prime.prime?(10)).to eq (false)
	end
end