class Artist 
  attr_accessor :name 
  @@artist = []
  
  def initialize(name)
    @name = name 
    @@artist << self  
  end 
  
  def self.all 
    @@artist 
  end 
  
end 