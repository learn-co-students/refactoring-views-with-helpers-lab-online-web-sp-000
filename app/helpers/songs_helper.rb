module SongsHelper
  def display_artist(song)
         # binding.pry
         if song.artist
             # binding.pry
             link_to song.artist.name, artist_path(song.artist)
         else
             # binding.pry
             link_to "Add Artist", controller: "songs", action: "edit", id: song.id
         end
     end
end
