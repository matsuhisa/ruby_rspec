
describe Semver do
  describe "#initialize" do
    it  do
      actual = Semver.new(1, 4, 2)
      expect(actual).to be_a Semver
    end
  end

  describe "#to_s" do
    subject { Semver.new( major, minor, patch ).to_s }

    context "1.4.2" do
      let(:major){ 1 }
      let(:minor){ 4 }
      let(:patch){ 2 }

      it {is_expected.to eq "1.4.2"}
    end

    context "2.1.0" do
      let(:major){ 2 }
      let(:minor){ 1 }
      let(:patch){ 0 }

      it {is_expected.to eq "2.1.0"}
    end
  end
end
