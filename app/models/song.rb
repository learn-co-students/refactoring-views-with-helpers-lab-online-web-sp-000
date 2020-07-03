class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name

  end

  def artist_name=(name)
    if Artist.find_by(name: name)
      self.artist = Artist.find_by(name: name)
    else
      self.artist = Artist.new(name: name)
      end 
  end

end
