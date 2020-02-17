module ArtistsHelper

  def display_artist(song)
    if song.artist
      link_to song.artist.name, artists_path + "/" + song.artist.id.to_s
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end
