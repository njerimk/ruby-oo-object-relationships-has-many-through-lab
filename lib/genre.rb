class Genre
   
    attr_reader :name 

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
    end

    def songs
        Song.all.select do |sag|
            sag.genre == self
        end
    end

    def artists
        self.songs.map do |genre|
            genre.artist
        end
    end

end 