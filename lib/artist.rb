class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
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

  def self.find(name)
    self.detect {|artist| artist.name == name}
  end

  # #def self.create(name)
  #   artist = Artist.new(name)
  #   artist.save
  #   artist
  # end

  def self.find_or_create_by_name(name)
    if self.find(name).nil?
      @@all << name
    else
      self.create(name)
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
