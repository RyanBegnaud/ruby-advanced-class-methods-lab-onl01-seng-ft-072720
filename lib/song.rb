require "pry"
class Song
  attr_accessor :name, :artist_name 
  @@all = []

  def self.create 
    @song = self.new 
    @@all << @song
    return @song 
  end
  
  
  def self.new_by_name(name)
    @song.name = name
    return @song
  end
  
  def self.create_by_name(song_name)
    @song.name = song_name
    @@all << @song
    return @song
  end
    
  def self.find_by_name(song_name)
    self.all.find do |song| 
      binding.pry
      if @song.name == song_name
        return @song.name
      end
  end
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end

end
