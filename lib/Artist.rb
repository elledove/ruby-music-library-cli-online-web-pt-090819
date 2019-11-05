require 'pry'
class Artist 
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
 newest = Artist.new(name)
  newest.save
  newest
end

def add_song(song)
  
song.artist = self if !song.artist 
self.songs << song if !self.songs.include?(song)
  #binding.pry
#Song.name(artist)
  
end

 def genres 
   songs.collect do |stuff|
     stuff.genre
     
     #binding.pry
   end.uniq
   
   #binding.pry
 
  end





end