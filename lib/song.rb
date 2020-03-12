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
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end
    
    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        genre = @@genres 
        genre.group_by(&:itself).transform_values(&:count) #itself returns the reciever https://ruby-doc.org/core-2.7.0/Hash.html#method-i-transform_values
    end

    def self.artist_count
        artist = @@artists
        artist.group_by(&:itself).transform_values(&:count)
    end
end