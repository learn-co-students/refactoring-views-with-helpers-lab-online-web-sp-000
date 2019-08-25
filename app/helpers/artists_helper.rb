module ArtistsHelper
  def display_artist(song)
    if song.artist.nil?
      "Add Artist /songs/#{song.id}/edit"
    else
      "#{song.artist.name} /artists/#{song.artist_id}"
    end
  end
end
