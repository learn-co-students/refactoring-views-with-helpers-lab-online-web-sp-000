module ArtistsHelper

    def display_artist(song)
        # @song = Song.find(params[:id])
        @artist = song.artist
        if @artist == nil
            link_to "Add Artist", edit_song_path(song)
        else
            link_to @artist.name, artist_path(@artist)
        end
    end

end
