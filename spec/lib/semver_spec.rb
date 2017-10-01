describe Semver do
  describe "#initialize" do
    let(:major){ [*0..100].sample }
    let(:minor){ [*0..100].sample }
    let(:patch){ [*0..100].sample }

    shared_examples_for '引数不正でエラー' do
      it do
        expect{ Semver.new(major, minor, patch) }.to raise_error ArgumentError
      end
    end

    context "メジャーバージョンが不正" do
      let(:major) { [*-100..-1].sample }
      it_behaves_like '引数不正でエラー'
    end

    context "マイナーバージョンが不正" do
      let(:minor) { [*-100..-1].sample }
      it_behaves_like '引数不正でエラー'
    end

    context "パッチバージョンが不正" do
      let(:patch) { [*-100..-1].sample }
      it_behaves_like '引数不正でエラー'
    end

    # context "メジャーバージョンに文字列を渡す" do
    #   let(:major){ "メジャー" }
    #   it_behaves_like '引数不正でエラー'
    # end
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

  describe "#==" do
    let(:one){ Semver.new(1, 4, 2) }
    subject { one == another }

    context "同じバージョンの場合" do
      let(:another){ Semver.new(1, 4, 2) }

      it { is_expected.to be true }
    end

    context "異なるバージョンの場合" do
      let(:another){ Semver.new(2, 1, 0) }

      it { is_expected.to be false }
    end
  end
end
