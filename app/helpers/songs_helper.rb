module SongsHelper

  def display_artist(song)
    if artist_name
      link_to artist.name, artist_path(artist.name)
    else
      link_to
  end
end
