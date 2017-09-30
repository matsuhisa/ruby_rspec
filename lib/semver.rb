class Semver
  attr_reader :major, :minor, :patch
  def initialize(major, minor, patch)
    @major = major
    @minor = minor
    @patch = patch
  end

  def to_s
    "#{@major}.#{@minor}.#{@patch}"
  end

  def ==(another)
    self.major == another.major && self.minor == another.minor && self.patch == another.patch
  end
end
