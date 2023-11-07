class Playlist < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  has_many :items, dependent: :delete_all
end
