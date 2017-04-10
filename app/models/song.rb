class Song < ApplicationRecord
  validates :artist, presence: true
  validates :title, presence: true
  validates :url, presence: true

  has_many :playlists_songs
  has_many :playlists, through: :playlists_songs
end
