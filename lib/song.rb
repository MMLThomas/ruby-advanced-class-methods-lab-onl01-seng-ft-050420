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
  
  def self.new_by_name(name)
    self.class.create = 
    song.@name = name
  end

  def self.destroy_all
    @@all.clear
  end

end
