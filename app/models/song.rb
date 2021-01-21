class Song < ActiveRecord::Base
  belongs_to :artist

  # gets the artist name
  # can set the artist via name
  # finds artist if already exists
  
  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
end
