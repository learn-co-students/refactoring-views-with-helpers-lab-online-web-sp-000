module ArtistsHelper
    def display_artist(song)
        binding.pry
        #parameter = a song instance
        if song.artist #artist exist, not nil
             link_to song.artist.name, artist_path(song.artist) 
        else 
            link_to "Add Artist", edit_song_path(song)
        end

    end

end



