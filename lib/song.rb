class Song 
  attr_accessor :name, :artist 
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @all 
  end 
  
  def artist_name=(artist)
    @artist = Artist.find_or_create_by_name(artist)
  end 
  
end 