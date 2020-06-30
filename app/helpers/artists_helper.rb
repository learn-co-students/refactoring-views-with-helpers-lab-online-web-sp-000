module ArtistsHelper
   def display_artist(song)
      if song.artist.present?
         # if an artist is associated with the song
         # return link to artists's show page 
         link_to song.artist_name, artist_path(song.artist)
      else  
         # if an artist is not associated with song 
         # return a link to the song's edit page "Add Artist"
         link_to "Add Artist", edit_song_path(song)
      end 
   end 
end
