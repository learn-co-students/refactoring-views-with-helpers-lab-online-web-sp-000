class Artist < ActiveRecord::Base
  has_many :songs

  private
  
  def artist_name
    @song = Song.find(params[:id])
    @song.artist.name
  end

  def artist_name=(name)
    @song = Song.find(params[:id])
    @song.artist.name = Artist.find_or_create_by(name)
  end
end
