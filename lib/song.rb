require "pry"
class Song
  attr_accessor :artist_name 
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
  
  def name=(songs_name)
    @song_name = songs_name
  end
  
  def name 
    @song_name
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

end
