require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq!
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genre_count
        # value of hash key is number of songs that have that genre
        # check which genre
        # check each new song
        # if genre exists, increase value by 1
        # if genre does not exist, create genre, and increase value by 1
        genre_hash = {}
       
        @@genres.each do |genre_name|
            # binding.pry
            # puts 's'
            if !genre_hash[genre_name]
                genre_hash[genre_name] = 1
                
            else
                genre_hash[genre_name] += 1
            end
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist_name|
            if !artist_hash[artist_name]
                artist_hash[artist_name] = 1
            else
                artist_hash[artist_name] += 1
            end
        end
        artist_hash
    end
end