class Song
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def self.new_by_filename(filename)
        song = new(filename.split(' - ')[1].strip)
        artist = Artist.find_or_create_by_name(filename.split(' - ')[0].strip)
        song.artist = artist
        artist.add_song(song)
        song
    end
end
