module SongsHelper

    def self.has_artist?(song)
        if (song.artist)
            true
        else
            false
        end
    end

end
