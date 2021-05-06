module ArtistsHelper

    def display_artist(artist)
        @song = Song.find(params[:id])
        if artist == @song.artist
            link_to artist_path(artist)
        else
            link_to edit_song_path(@song)
        end
    end
end
