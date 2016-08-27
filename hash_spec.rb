require './hash' # does not need file ext here?

describe MyHash do
	rspec_hash = MyHash.new

	describe '#assign_index' do
		it 'should return a number between 0 & 100' do
			random_string = (0...8).map { (65 + rand(26)).chr }.join
			expect(rspec_hash.assign_index(random_string)).to be_between(0, 100)
		end
	end
end