module ArtistsHelper
    def display_artist(song)
        if song.artist.nil?
            link_to song.artist, edit_song_path(song)
        end 
    end 
end
