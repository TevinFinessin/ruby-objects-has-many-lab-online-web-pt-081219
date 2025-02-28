class Artist

  attr_accessor :name

  @@song_count = 1

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select do |song|
      song.artist  == self 
    end
  end
  

  def add_song(song)
    self.songs << song
    song.artist = self
    @@song_count += 1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count = 3
  end

end