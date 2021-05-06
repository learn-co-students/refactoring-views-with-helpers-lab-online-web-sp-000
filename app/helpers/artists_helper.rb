module ArtistsHelper

    # def display_artist(artist)
    #     @song = Song.find(params[:id])
    #     if artist == @song.artist
    #         # binding.pry
    #         link_to @song.artist.name, artist_path(artist)
    #     else
    #         link_to edit_song_path(@song)
    #     end
    # end

    def display_artist(song)
        if song.artist
            # binding.pry
            link_to song.artist.name, song.artist
        else
            link_to "Add Artist", edit_song_path(song)
            # binding.pry
        end
    end
end
