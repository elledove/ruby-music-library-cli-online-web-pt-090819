class Genre 
  extend Concerns::Findable
  attr_accessor :name, :songs
  @@all = [ ]
  def initialize(name)
    @name = name
    @songs = [ ]
  end
  
  def self.all 
    @@all
  end 
  
  def self.destroy_all 
    @@all.clear
  end
  
  def save 
    @@all << self
  end
  
  
  def self.create(name)
    newer = Genre.new(name)
    newer.save
    newer
    end
    
    def artists
      songs.collect do |stuff|
     stuff.artist
     
     #binding.pry
   end.uniq
   
   #binding.pry
 
  end
      
  
  
  
end