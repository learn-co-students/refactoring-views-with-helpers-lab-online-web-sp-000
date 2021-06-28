module SongsHelper

    def display_song(song)
        # @song = Song.find(params[:id])
        # @artist = @song.artist
        if song.artist == nil
            link_to "Add Artist", edit_song_path(song)
        else
            link_to song.title, song_path(song)
        end
    end

end
