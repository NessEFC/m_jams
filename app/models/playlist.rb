class Playlist < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :playlists_songs
  has_many :songs, through: :playlists_songs
end
