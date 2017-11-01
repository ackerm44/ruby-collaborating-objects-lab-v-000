class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    #song.artist = self
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name}
    if nil
      self.new(name)
    end
    #else
    #  self.new(name)
    #end


  #   @@all.detect do |artist|
  #    if artist.name == name
  #      self.name
  #    else
  #      self.new(name)
  #    end
  #  end
 end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
