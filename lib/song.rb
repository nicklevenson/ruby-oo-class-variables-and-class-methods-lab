class Song
    @@count = 0 
    @@genres = []
    @@artists = []
    attr_accessor :name, :genre, :artist

    def initialize(name, artist, genre)
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
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.uniq.each do |title|
            genre_hash[title] = (@@genres.select{|name| name.include?(title)}).count
        end
        genre_hash
    end

    def self.artist_count
        song_hash = {}
        @@artists.uniq.each do |title|
            song_hash[title] = (@@artists.select{|name| name.include?(title)}).count
        end
        song_hash
    end

end
