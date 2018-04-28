require "pry"

class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    hash = Hash.new
    # count = 0
    new_genres = @@genres.reverse
    new_genres.each do |x|
      if hash[x]
          hash[x]+= 1
        else
          hash[x] = 1
      end

    end
    return hash
  end

  def self.artist_count
    hash = Hash.new
    # count = 0
    new_artists = @@artists.reverse
    new_artists.each do |x|
      if hash[x]
          hash[x]+= 1
        else
          hash[x] = 1
      end
    end
    return hash
  end


end
