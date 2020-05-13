class Song
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.all
        @@all
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
        count = {}
        @@genres.each do |genre|
            if count[genre] == nil
                count[genre] = 1
            else
                count[genre] += 1
            end
        end
        count
    end

    def self.artist_count
        count = {}
        @@artists.each do |artist|
            if count[artist] == nil
                count[artist] = 1
            else
                count[artist] += 1
            end
        end
        count
    end

#   def self.print_all_song_names
#     self.all.each { |song| p song.name }
#   end

end

