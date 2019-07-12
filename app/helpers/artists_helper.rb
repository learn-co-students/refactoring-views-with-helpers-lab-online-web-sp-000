module ArtistsHelper
  
  #retrieve artist from a song instance
  def display_artist(song)
    #return link to artist's show page if artist exists
    if song.artist 
      link_to song.artist.name, artist_path(song.artist)
    #return link to song's edit page if no artist 
    else 
      link_to "Add Artist", edit_artist_path(song)
  end 
end
