class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_attributes=(artist_attributes)
    self.artist = Artist.where(name: artist_attributes[:name]).first_or_create
  end

  def artist_name
    self.artist.name
  end

  def artist_name=(artist_name)
    self.artist = Artist.where(name: artist_name).first_or_create
  end
end
