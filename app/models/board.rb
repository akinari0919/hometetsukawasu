class Board < ApplicationRecord
  validates :body, presence: true    #空の投稿を防ぐ
  validates :job, presence: true
  validates :age, presence: true

  has_many :comments, dependent: :destroy
end
