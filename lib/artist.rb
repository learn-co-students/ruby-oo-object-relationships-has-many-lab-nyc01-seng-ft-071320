class Artist
    attr_accessor :name, :song

        @@songs = 0

    def initialize(name)
        @name = name
        @songs = []
        @@songs += 1
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def self.song_count
        Song.all.count
    end

end



