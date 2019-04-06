module ArtistsHelper

  def display_artist(song)
    if song.artist
      artist_path(song.artist) + " " + song.artist.name
    else
      edit_song_path(song) + " " + "Add Artist"
    end
  end
end
