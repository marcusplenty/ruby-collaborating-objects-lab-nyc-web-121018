require "pry"
class MP3Importer
  attr_reader :path
  def initialize(path)
    @path = path 
  end 
  def files
    f_list = Dir.entries(@path).sort
    f2 = f_list.select {|entry| entry.include?(".mp3")}
    f2
  end
  
  def import
    files.each do |file|
      Song.new_by_filename(file)
    end 
  end 
end 