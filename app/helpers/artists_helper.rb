module ArtistsHelper

    def display_artist(song)
        if song.artist
            render partial: 'songs/artist', locals: {
                song_artist: song.artist
            }
        else
            render partial: 'songs/edit_button', locals: {
                song: song
            }
        end
    end

end
