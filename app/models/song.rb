class Song < ActiveRecord::Base
  belongs_to :artist

  # accepts_nested_attributes_for :artist_name

  def artist_name
  	artist.name
  end

  def artist_name=(name)
  	artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
