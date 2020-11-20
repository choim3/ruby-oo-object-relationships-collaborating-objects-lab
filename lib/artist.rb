require 'pry'
class Artist
    attr_accessor :name, :songs
    @@all = []
    
    def initialize(name)
        @name = name
        @add_song = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|x| x.artist == self}
    end

    def add_song(song)
         song.artist = self
        #self.songs.map { |x| }
    end

        
end