module ArtistsHelper
  # The method's return value should take into consideration
  # whether an artist is already associated with a song
  def display_artist(artist_name)
    if artist_name
      link_to artist_path
    else artist_name.empty?
      link_to "Add Artist", song_path(edit)
    end
  end
end
