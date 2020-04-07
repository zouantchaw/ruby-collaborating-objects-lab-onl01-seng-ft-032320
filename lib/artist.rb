class Artist 
  attr_accessor :name 
  @@artist = []
  
  def initialize(name)
    @name = name 
    @@artist << name 
  end 
  
  def self.all 
    @@artist 
  end 
  
end 