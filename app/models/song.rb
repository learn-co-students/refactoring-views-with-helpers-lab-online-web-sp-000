class Song < ActiveRecord::Base
  belongs_to :artist

#Write the code for #artist_name and #artist_name= so that an Artist can be retrieved from,
#and associated with, a Song instance
  def artist_name
    artist.name if artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

end
