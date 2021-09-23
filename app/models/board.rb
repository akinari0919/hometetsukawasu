class Board < ApplicationRecord
  validates :image, presence: true    #空の投稿を防ぐ
  mount_uploader :board_image, BoardImageUploader
end
