module ArtistsHelper
    def display_artist(song)
        if song.artist
            "<a href= '/artists/#{song.artist.id}'>#{song.artist_name}</a>"
        else
            "<a href= '/songs/#{song.id}/edit'>Add Artist</a>"
        end

    end
end
