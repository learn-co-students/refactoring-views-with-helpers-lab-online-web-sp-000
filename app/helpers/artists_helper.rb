module ArtistsHelper

  def display_artist(song)
    if song.artist.nil?
      link_to "Edit Song", edit_song_path(song)
    else
      link_to song.artist_name, artist_path(song.artist)
  end
end
