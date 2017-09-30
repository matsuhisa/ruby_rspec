describe Semver do
  describe "#initialize" do
    it  do
			actual = Semver.new(1, 4, 2)
			expect(actual).to be_a Semver
		end
	end

	describe "#to_s" do
		it do
			actual = Semver.new(1, 4, 2)
			expect(actual.to_s).to eq "1.4.2"
		end

		it do
			actual = Semver.new(2, 1, 0)
			expect(actual.to_s).to eq "2.1.0"
		end
	end
end
