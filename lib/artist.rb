class Artist 
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  def self.all
    @@all 
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
   def genres
    songs.collect {|song| song.genre}
  end

 def new_song(song, genre)
    Song.new(name, self, genre)
  end
end 