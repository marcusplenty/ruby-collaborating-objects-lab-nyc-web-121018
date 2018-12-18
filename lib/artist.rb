class Artist
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self
  end
  def add_song(song)
    @songs << song
  end 
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end 
  
end