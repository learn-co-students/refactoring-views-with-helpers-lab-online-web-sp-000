module SongsHelper
    def artist_name
        artist.name if artist
    end

    def artist_name=(name)
        a = Artist.find_by(name: name)
        self.artist = a
    end

end
