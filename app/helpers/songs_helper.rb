module SongsHelper
  def display_artist(song)
    if !song.artist_name
      link_to "Add Artist", edit_song_path(song.id)
    else
      link_to "#{song.artist_name}",  artist_path(song.artist)
    end
  end

end
