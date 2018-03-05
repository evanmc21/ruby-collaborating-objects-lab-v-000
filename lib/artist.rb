class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
    self
  end

  def self.create_by_name(name)
      artist = Artist.new(name)
      artist.save
      artist
    end

  def find_or_create_by_name(name)

end
end
