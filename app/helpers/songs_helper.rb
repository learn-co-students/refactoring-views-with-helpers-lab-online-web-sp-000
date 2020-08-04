module SongsHelper

#can get artist name, set artist via name, find artist if exists 
  def display_artist(song)
    if song.artist
      link_to song.artist.name, artist_path(song.artist)
    else
      link_to "Add Artist", edit_song_path(song)
    end
  end
end

#to be called in our views
# methods return value should see if artist is already associated with a song
# if not associated, return a link to song edit page to add artist
