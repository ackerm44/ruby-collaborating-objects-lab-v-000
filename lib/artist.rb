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
    song.artist = self
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
    self.all.detect {|artist| artist.name == name}
  end

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end

  def self.find_or_create_by_name(name)
    @@all.detect do |artist|
      if artist.name != name
        new_artist = self.new(name)
        new_artist.name = name
      else
        name
      end
    end

  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
