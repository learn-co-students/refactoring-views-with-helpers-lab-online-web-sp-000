module ArtistsHelper
    def display_artist(song)
        if song.artist (song)
            link_to song.artist.name, artist_path(song.artist)
        else 
            link_to "Add Artist", "#{song_path(song)}/edit"
        end 
    end


end
