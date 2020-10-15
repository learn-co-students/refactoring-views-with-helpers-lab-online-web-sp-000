module ArtistsHelper

#  def display_artist(song)
  #  if song.artist == nil
      #link_to "Add Artist", edit_song_path(song)
  #  else
      #link_to song.artist_name, song.artist
  #  end
  #end
  def display_artist(song)
    if song.artist
      link_to song.artist.name, song.artist
    else
      link_to 'Add Artist', edit_song_path(song)
    end
  end
end
