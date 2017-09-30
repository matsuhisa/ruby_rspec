class Semver
  attr_reader :major, :minor, :patch
  def initialize(major, minor, patch)
    if major < 0 || minor < 0 || patch < 0
      raise ArgumentError.new('error')
    end

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
