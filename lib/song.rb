class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  # def artist_name=(name)
  #   Artist.find_or_create_by_name(name)
  # end

  def self.new_by_filename(filename)
    song_name_split = filename.split(" - ")[1]
    artist_name_split = filename.split(" - ")[0]
    new_song = Song.new(song_name_split)
    new_song.artist = Artist.new(artist_name_split)
    Artist.find_or_create_by_name(artist_name_split)

    new_song

  end

end
