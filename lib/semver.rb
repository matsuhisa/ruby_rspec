class Semver
  def initialize(major, minor, patch)
    @major = major
    @minor = minor
    @patch = patch
  end

  def to_s
    "#{@major}.#{@minor}.#{@patch}"
  end
end
