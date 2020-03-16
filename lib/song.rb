require 'pry'

class Song

    attr_accessor :name, :artist, :genre

        @@artists = []
        @@genres = []
        @@count = 0
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        hash = {}
        @@genres.each do |k, v|
            if hash[k] != nil
                hash[k] += 1
            else
                hash[k] = 1
            end 
        end
         hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |k, v|
            if hash[k] != nil
                hash[k] += 1
            else
                hash[k] = 1
            end 
        end
         hash
    end












end