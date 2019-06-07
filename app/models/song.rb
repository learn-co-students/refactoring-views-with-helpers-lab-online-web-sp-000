class Song < ActiveRecord::Base
  belongs_to :artist

#This 2 method are overwriting the belongs_to association, but they are necessary to have access to song.artist.name in my my helper
  def artist_name
    artist.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(:name => name)
  end
end
