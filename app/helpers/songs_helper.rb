module SongsHelper
    def display_artist(s)
        if s.artist.nil?
            link_to "Add Artist", edit_song_path(s)
        else
            link_to s.artist.name, s.artist
        end
    end
end