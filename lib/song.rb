class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = [] 
  @@artists = []
  
  def initialize(name,artist,genre)
    @name = name
    @genre = genre 
    @artist = artist
    @@count += 1 
    @@genres << genre
    @@artists << artist 
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    unique_genres = []
    @@genres.each do |i|
      if unique_genres.include? i 
      else 
        unique_genres << i 
      end
  end
   unique_genres
end
  
  def self.artists
    unique_artists = []
     @@artists.each do |i|
      if unique_artists.include? i 
      else 
        unique_artists << i 
      end
    end
     unique_artists
  end


  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |i|
      if genre_hash.include? i 
        genre_hash[i] = genre_hash[i] + 1 
      else
        genre_hash[i] = 1 
      end
    end
    genre_hash
  end
  
  


def self.artist_count
    artist_hash = {}
    @@artists.each do |i|
      if artist_hash.include? i 
        artist_hash[i] = artist_hash[i] + 1 
      else
        artist_hash[i] = 1 
      end
    end
    artist_hash
  end
  
  
end
  
  
