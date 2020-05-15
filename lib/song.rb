require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    @@all << song 
    song
  end
  
  def self.new_by_name(names)
    song = Song.new
    #@name = names
  end
  
  def self.create_by_name(names)
    song = Song.new
    binding pry
    song.name = names
    @@all << song
  end

  def self.destroy_all
    @@all.clear
  end

end
