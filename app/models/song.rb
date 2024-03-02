class Song < ApplicationRecord
  belongs_to :user
  has_one_attached :mp3

  validates :cover, presence: true
  validates :title, presence: true
end
