class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song, artist = filename.split(" - ")
    new_tune = self.new(song)
    new_tune.artist_name = artist
    new_tune
  end

end
