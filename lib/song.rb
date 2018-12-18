class Song
  attr_accessor :name, :artist
  def initialize(name, artist)
    @name = name
    @artist = artist
  end
  def self.new_by_filename(filename)
    
  end
end 