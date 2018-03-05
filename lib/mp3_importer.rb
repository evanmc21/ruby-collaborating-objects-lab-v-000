class MP3Importer
  attr_accessor :path

  @path = []
  def initialize(directory)
    @path = directory
  end

  def files
    @files
  end
end
