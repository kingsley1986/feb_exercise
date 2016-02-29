require_relative "fiz"

describe Fizz do 
	before do 
		@fizz = Fizz.new
	end
		it "returns fizzbuzz" do 
		expect(@fizz.fizzing(15)). to eq ("fizzbuzz")
	end

	it "returns fizz" do 
		expect(@fizz.fizzing(3)).to eq ("fizz")
	end

	it "returns buzz" do 
		expect(@fizz.fizzing(5)).to eq ("buzz")
	end

	it "returns number " do 
		expect(@fizz.fizzing(1)).to eq (1)
	end
end