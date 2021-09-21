class Board < ApplicationRecord
  validates :image, presence: true    #空の投稿を防ぐ
end
