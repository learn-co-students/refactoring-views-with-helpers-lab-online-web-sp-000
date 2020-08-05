module SongsHelper

    def display_artist(song)
        if song.artist != nil 
            if song.artist.name.length > 0
                link_to song.artist_name, artist_path(song.artist)
            else
                link_to "Add Artist", edit_song_path(song)
            end
        else
            link_to "Add Artist", edit_song_path(song)  
        end
    end
end
