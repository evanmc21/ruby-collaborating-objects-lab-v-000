class MP3Importer
  attr_accessor :path

  @path = []

  def initialize(directory)
    @path = directory
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
  end

def import
  self.files
  @files.each {|filename| Song.new_by_filename(filename)}
end
end
