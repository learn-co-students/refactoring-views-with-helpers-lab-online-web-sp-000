module ArtistsHelper

    def display_artist(song)
        # should respond to #display_artist with 1 argument
        #display a link to edit the song if artist empty
            #displays a link to the artist page if artist not empty
            if song.artist
                link_to song.artist.name, song.artist
            else
                link_to 'Add Artist', edit_song_path(song)
            end
    end

end
