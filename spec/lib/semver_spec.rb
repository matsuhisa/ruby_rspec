describe Semver do
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

  describe "#==" do
    it "1.4.2 と 1.4.2 は等しい" do
      one = Semver.new(1,4,2)
      onther = Semver.new(1,4,2)

      expect(one).to eq onther
    end

    it "1.4.2 と 2.1.0 は等しくない" do
      semver142 = Semver.new(1,4,2)
      semver210 = Semver.new(2,1,0)

      expect(semver142).not_to eq semver210
    end
  end
end
