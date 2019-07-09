module ArtistsHelper
  def display_artist(song)
    if artist = song.artist
      link_to artist.name, artist
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
