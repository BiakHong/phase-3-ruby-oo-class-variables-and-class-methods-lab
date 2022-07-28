class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre


    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count =Hash.new
    @@artist_count = Hash.new

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@genres.append(genre)
        @@artists.append(artist)
        @@genre_count.include?(genre) ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
        @@artist_count.include?(artist) ? @@artist_count[artist] += 1 : @@artist_count[artist] = 1


    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end
    def self.genre_count
        @@genre_count

    end
    def self.artist_count
        @@artist_count
    end

    
end