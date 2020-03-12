require "pry"

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_accessor :name, :artist, :genre

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

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genres = Hash.new(0)
    @@genres.each do |genre|
      genres.has_key?(genre) ? genres[genre] += 1 : genres[genre] = 1
    end
    genres
  end

  def self.artist_count
    artists = Hash.new(0)
    @@artists.each do |artist|
      artists.has_key?(artist) ? artists[artist] += 1 : artists[artist] = 1
    end
    artists
  end
end
