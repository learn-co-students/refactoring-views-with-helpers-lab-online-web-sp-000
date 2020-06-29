module ArtistsHelper

  def display_artist(artist)
    if artist.song.all
      get '/show'
    else
      get '/edit'
    end
  end

end
