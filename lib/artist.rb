class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save   
  end 
  
  def self.all 
    @@all 
  end 
  
  def save
    @@all << self 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select{|song|
      song.artist == self
    }
  end 
  
  def self.find_or_create_by_name(name)
    self.all.each{|artist|
      if (artist.name ==  name)
        return artist
      end 
    }
    artist = Artist.new(name)
    artist 
  end 
  
end 