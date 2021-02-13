class Post < ApplicationRecord

  validates :title, presence: true, length: { maximum: 140 }
  validates :kind, presence: true, length: { maximum: 20 }
end
