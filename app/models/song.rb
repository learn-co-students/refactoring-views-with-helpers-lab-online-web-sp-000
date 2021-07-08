class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist
      artist.name
    else
      ""
    end
  end

  def artist_name=(name)
    if artist
      artist.name = name
    else
      self.artist = Artist.find_or_create_by(name: name)
    end
  end
end
