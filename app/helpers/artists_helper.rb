module ArtistsHelper

#responds to display artist with one argument
# displays a link to edit song if artist empty
# displays a link to artist page if not empty 
  def display_artist(song)
    if song.artist
      link_to song.artist_name, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
