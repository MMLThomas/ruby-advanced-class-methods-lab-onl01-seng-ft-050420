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
    song.name = names
    song
    #@name = names
  end
  
  def self.create_by_name(names)
    song = Song.new
    binding pry
    song.name = names
    @@all << song
    song
  end

  def self.destroy_all
    @@all.clear
  end

end
