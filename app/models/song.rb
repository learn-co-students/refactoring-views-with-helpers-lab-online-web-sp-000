class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.artist = Artist.where(name: name).first_or_create do |a|
      a.name = name
    end
  end
end
