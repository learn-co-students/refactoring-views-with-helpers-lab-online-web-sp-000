module ArtistsHelper
    def display_artist(song)
    #    if  song.artist != nil
    #       song.artist.name
    #    else
    #       "Add Artist"
    #    end

    #    content_for :navigation do 
            if  song.artist != nil
                link_to song.artist.name, artist_path(song.artist)
            else
                link_to "Add Artist", edit_song_path(song) 
             end 
        # end
    end
end
