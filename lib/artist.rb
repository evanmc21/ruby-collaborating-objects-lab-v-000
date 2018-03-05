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
      self.new(name).tap {|artist| artist.save} #use tap to simplify the method chain.
    end

  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}

  def find_or_create_by_name(name)

end
end
