class MP3Importer
  attr_accessor :path

  @path = []

  def initialize(directory)
    @path = directory
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if{|file| file == "." || file == ".."}
  end


end
