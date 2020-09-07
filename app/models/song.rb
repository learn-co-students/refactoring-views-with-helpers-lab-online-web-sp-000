require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name if artist.name
  end

  def artist_name=(name)
    # find the artist 
    @artist = Artist.find_or_create_by(name: name)
    # assign it to the song
    self.save
    self.artist_id = @artist.id
  end
end
