class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist
      artist.name
    end
  end

  def artist_name=(name)
    if artist
      artist.name = name
    else
      if Artist.exists?(name: name)
        self.artist = Artist.where(name: name).first
        self.save
      else
        a = Artist.new
        a.name = name
        a.save
        self.artist = a
        self.save
      end
    end
  end
end
