require 'pry'

class Song
    attr_accessor :title, :artist
    attr_reader :name

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        self.title
    end

    def artist_name
        self.artist.name if artist
        #self.artist.name unless (artist == nil)
    end

end

