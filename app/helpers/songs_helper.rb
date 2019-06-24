include Rails.application.routes.url_helpers
module SongsHelper
    def display_artist(song)
        if song.artist 
            #return a link to the artist's show page
            link_to(song.artist_name, artist_path(song.artist))
        else
            #return a link to the song's edit page, with a link text of "Add Artist"
            link_to("Add Artist", edit_song_path(song))
        end
    end

    def test_helper(song)
        song.artist_name
    end
end
