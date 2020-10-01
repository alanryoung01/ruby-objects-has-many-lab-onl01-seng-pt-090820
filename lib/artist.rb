class Artist 
  attr_accessor :name, :songs 

  @@counter = 0

  def initialize(name)
    @name = name
    @songs = []
  end 

  def add_song(song)
    song.artist = self
    @@counter += 1
  end 

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@counter += 1
  end

  def self.counter
    @@counter
  end

end