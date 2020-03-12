class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    #song.artist.name if artist - prolazi test i sa song
    self.artist.name if artist
  end

  def artist_name=(name)
    #song.artist = Artist.find_or_create_by(name: name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
