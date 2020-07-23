module ArtistsHelper

  def display_artist(song)
    if song.artist.blank?
      link_to("Add Artist", edit_song_path(song.id))
    else
      link_to(song.artist.name, artist_path(song.artist.id))
    end
  end
end
