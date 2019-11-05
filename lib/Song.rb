require 'pry'
class Song 
  attr_accessor :name, :artist, :genre
  @@all = [ ]
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist = artist if artist
    self.genre = genre if genre
    #@@all << self
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
     new =Song.new(name)
      new.save
      new
     end


   def artist=(artist)
     @artist = artist
      artist.add_song(self)
   end


   def genre=(genre)
    @genre = genre
    genre.songs<< self if !genre.songs.include?(self)
   end


  def self.find_by_name(name)
    @@all.detect do |who|
    who.name == name
    end
  end
  
   def self.find_or_create_by_name(name)
     find_by_name(name) || create(name)
    end

def self.new_from_filename(filename)
#binding.pry

  
end




  
end