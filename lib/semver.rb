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

  def ==(onther)
    # self.major == onther.major && self.minor == onther.minor && self.patch == onther.patch
    return true
  end
end
