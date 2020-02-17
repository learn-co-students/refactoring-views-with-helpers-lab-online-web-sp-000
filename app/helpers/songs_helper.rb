module SongsHelper
  def artist_name(song)
    if song.artist
      song.artist.name
    else
      "Add Artist"
    end
  end

  def artist_id(song)
    @song.artist.id
  end

  def display_artist(song)
    if song.artist
      artists_path + "/" + song.artist.id.to_s
    else
      edit_song_path(song)
    end
  end
end
