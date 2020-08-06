require 'pry'

class Artist
    attr_accessor :name


    @@all= []


    def initialize (name)
    @name=name
    @@all << self
    end

    def songs
        Song.all.select do |song_instance|
        song_instance.artist == self
        end
    end

    def self
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        song_name=Song.new(song_name,self)
    end

    def self.song_count
        Song.all.count
    end

end


