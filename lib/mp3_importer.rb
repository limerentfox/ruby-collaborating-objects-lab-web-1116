class MP3Importer
    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
        Dir[path + '/*.mp3'].collect do |file|
            file.sub(path + '/', '')
        end
    end

    def import
        files.collect do |file|
            song = Song.new_by_filename(file)
            song
        end
    end
end
