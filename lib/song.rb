class Song
  attr_accessor :name, :artist
  def initialize(name, artist)
    @name = name
    @artist = artist
  end
  def self.new_by_filename(filename)
    song_arr = filename.split("=")
    Song.new(song_arr[1],song_arr[0])
  end
end 