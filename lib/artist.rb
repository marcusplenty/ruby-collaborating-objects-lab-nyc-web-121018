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
  def self.find_or_create_by_name(name)
     Artist.all.find{|artist|artist.name}|| Artist.new(name)
  end 
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end 
  
end