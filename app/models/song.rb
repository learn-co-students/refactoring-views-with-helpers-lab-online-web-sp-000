class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name(song)
    song.artist.name
  end

  def artist_id(song)
    @song.artist.id
  end
end
