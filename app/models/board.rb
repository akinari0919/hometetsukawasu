class Board < ApplicationRecord
  validates :image, presence: true    #空の投稿を防ぐ
  mount_uploader :image, ImageUploader

  has_many :comments
end
