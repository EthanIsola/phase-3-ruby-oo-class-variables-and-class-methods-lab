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
        @@artists << self.artist
        @@genres << self.genre
    end

    def self.count
        @@count
    end

    def self.artists
        temp = []
        @@artists.filter do |artist|
            if temp.include?(artist) == false
                temp << artist
            end
        end
        temp
    end

    def self.genres
        temp = []
        @@genres.filter do |genre|
            if temp.include?(genre) == false
                temp << genre
            end
        end
        temp
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
end