class Artist < ActiveRecord::Base
  has_many :songs

  def artist_name=(name)
    self.find_or_create_by(name: name)
  end

  def artist_name
    self.name
  end
end
