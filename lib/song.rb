class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    song_arr = filename.split("-")
    Song.new(song_arr[1])
  end
end 