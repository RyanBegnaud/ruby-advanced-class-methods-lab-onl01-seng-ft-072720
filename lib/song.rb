require "pry"
class Song
  attr_accessor :artist_name, :name 
  @@all = []

  def self.create 
    @song = self.new 
    @@all << @song
    return @song 
  end
  
  def self.new_by_name(songs_name)
    @song = songs_name
    Song.name = songs_name
    binding.pry
    return @song
  end

  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

end
