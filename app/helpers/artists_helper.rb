module ArtistsHelper
    def display_artist(song)
        if song.artist
            link_to song.artist.name, artist_path(song.artist)
        else 
            link_to 'Add Artist', edit_song_path(song)
        end
        #if artist is associated with song, link to artist show page
        #else, link to edit page with text "Add artist"
    end
end
