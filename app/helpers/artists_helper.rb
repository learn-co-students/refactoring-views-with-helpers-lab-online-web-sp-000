module ArtistsHelper
  # The method's return value should take into consideration
  # whether an artist is already associated with a song
  def display_artist(song)
    if song.artist
      link_to(song.artist_name, artist_path(song.artist))
    else
      link_to("Add Artist", edit_song_path(song))
    end
  end
end
