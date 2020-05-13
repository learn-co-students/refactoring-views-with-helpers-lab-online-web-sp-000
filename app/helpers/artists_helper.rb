module ArtistsHelper

    def display_artist(song)
        if song == nil 
            return 
        elsif !!song.artist
            link_to song.artist.name, artist_path(song.artist)
        else 
            link_to "Add Artist", edit_song_path(song)
        end
    end

end
