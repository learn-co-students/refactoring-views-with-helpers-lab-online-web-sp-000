class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
    self.save
    self.artist
  end
  
  def artist_name
    if self.artist
      self.artist =  Artist.find_by(name: self.artist.name)
      self.artist.name
    end
  end


end
