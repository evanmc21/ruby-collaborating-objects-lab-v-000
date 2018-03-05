class Song
  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song, artist = filename.split(" - ")

end
