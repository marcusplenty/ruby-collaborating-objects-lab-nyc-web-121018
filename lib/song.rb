class Song
  attr_accessor :name, :artist
  def initialize(name)
    @name = name
  end
  def self.new_by_filename(filename)
    song_arr = filename.split("-")
    song = Song.new(song_arr[1].strip)
    song.artist = song_arr[0].strip
  end
end 